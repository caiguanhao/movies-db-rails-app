require 'net/http'
require 'json'
var = 'var cinemasJson ='
dd = '<dd class="movietxt">'
res = Net::HTTP.get(URI('http://theater.mtime.com/China_Zhejiang_Province_Hangzhou/'))
lines = res.lines
lines.keep_if{ |line| line.include?(var) }
raise 'incorrect cinemasJson matched' if lines.size != 1
line = lines[0]
json = line[(line.index(var)+var.length)..(line.rindex(';')-1)]
cinemas = JSON.parse(json)
cinemas['list'].each do |list|
  info = Net::HTTP.get(URI("#{list['showtimepage']}info.html")).force_encoding('UTF-8').gsub("\r", '')
  phone = info.match(/电话：([^\s]+)/)
  if phone.nil?
    phone = '无'
  else
    phone = phone[1].strip
  end
  hours = info.match(/营业时间：([^<]+)/)
  if hours.nil?
    hours = '无'
  else
    hours = hours[1].strip
  end
  idx = info.index(dd)
  if idx.nil?
    info = '无'
  else
    info = info[(idx+dd.length)..-1]
    info = info[0..info.index('</dd>')-1]
    info = info.gsub(/<\/(p|div)>/, "\n\n\n").gsub(/<br[^>]+>/, "\n\n\n").gsub(/&nbsp;/, ' ').gsub('　', ' ')
    info = info.gsub(/<\/?[^>]+>/, '').split("\n").map{|line|
      line.gsub(/[[:space:]]/, ' ').strip.scan(/.{1,40}/).join("\\\n")
    }.join("\n").gsub(/\n{3,}/, "\n\n").strip
  end
puts %{
Cinema.create(
  name: '#{list['cname']}',
  logo: '#{list['logo']}',
  city: '杭州',
  district: '#{list['dsname']}',
  address: '#{list['address']}',
  phone: '#{phone}',
  business_hours: '#{hours}',
  content: %{#{info}},
)
}
end
