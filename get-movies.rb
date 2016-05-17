require 'net/http'
require 'json'
require 'nokogiri'

def getText(obj)
  if obj.nil?
    ''
  else
    obj.text
  end
end

var = 'var hotplaySvList ='
res = Net::HTTP.get(URI('http://theater.mtime.com/China_Zhejiang_Province_Hangzhou/'))
lines = res.lines
lines.keep_if{ |line| line.include?(var) }
raise 'incorrect hotplaySvList matched' if lines.size != 1
line = lines[0]
json = line[(line.index(var)+var.length)..(line.rindex(';')-1)]
movies = JSON.parse(json)
movies.each do |movie|
  id = movie['Id']
  url = movie['Url']
  info = Net::HTTP.get(URI(url)).force_encoding('UTF-8').gsub("\r", '')
  page = Nokogiri::HTML(info)
  name = page.css('#db_head h1')[0].text
  year = page.css('#db_head .db_year a')[0].text
  aliaz = getText(page.css('#db_head .db_enname')[0])
  poster = page.css('[pan="M14_Movie_Overview_Cover"] [rel="v:image"]')[0]['src']
  _info = '#db_head [pan="M14_Movie_Overview_MovieTypeAndRuntimeAndVersion"]'
  runtime = getText(page.css("#{_info} [property='v:runtime']")[0]).sub('分钟', '')
  runtime = 'nil' if runtime.empty?
  genre = page.css("#{_info} [property='v:genre']").map(&:text).join('/')
  release_date = page.css("#{_info} [property='v:initialReleaseDate']")[0].text
  director, writer, country, aka = '', '', '', ''
  page.css('[pan="M14_Movie_Overview_BaseInfo"]').each do |elem|
    label = elem.css('strong')[0].text
    values = elem.css('a').map(&:text).join(' ')
    director = values if label.include? '导演'
    writer = values if label.include? '编剧'
    country = values if label.include? '国家地区'
    aka = values if label.include? '国家地区'
  end
  star = page.css('.main_actor').map{|actor|actor.css('a[rel="v:starring"]')[0].text}.join(' ')
  content = Nokogiri::HTML(Net::HTTP.get(URI("#{url}plots.html")).force_encoding('UTF-8').gsub("\r", ''))
  content = content.css('.plots_box').map{|plot|plot.text.gsub(/[[:space:]]+/, ' ').strip.scan(/.{1,40}/).join("\\\n")}.join("\n\n")
puts %{
Movie.create(
  name: %{#{name}},
  alias: %{#{aliaz}},
  aka: %{#{aka}},
  poster: %{#{poster}},
  country: %{#{country}},
  year: #{year},
  release_date: %{#{release_date}},
  genre: %{#{genre}},
  runtime: #{runtime},
  director: %{#{director}},
  writer: %{#{writer}},
  star: %{#{star}},
  mtime_id: #{id},
  content: %{#{content}},
)
}
end
