require 'net/http'
require 'nokogiri'
require 'active_record'

movies = File.read('db/seeds/movies.rb')

IDS = movies.scan(/mtime_id: (\d+)/).flatten

puts %{
FIRSTNAMES = %w{tom jack adam mary rose juliet sam justim taylor}
LASTNAMES = %w{smith johnson williams brown jones miller davis wilson anderson thomas moore martin}
PROVIDERS = %w{gmail.com apple.com hotmail.com yahoo.com}

def _e
  "\#{FIRSTNAMES.sample}\#{LASTNAMES.sample}\#{rand(1000...9999)}@\#{PROVIDERS.sample}"
end

}
puts "_p = '$2a$10$4VzgvSytQPQk4jWM5WdtfuzK3Q9QSyP0.Ie8qIODYLfxAjTTcm26u'"
puts "_m = Movie.select(:id, :mtime_id).map{|i|[i.mtime_id,i.id]}.to_h"
puts "_g = User::GENDERS"
puts "_a = User::ASTROS"
puts "_c = CitiesHelper::CITY_LIST[:'热门']"

users_collection = []
comments_collection = []
count = 0

IDS.each do |id|
  info = Net::HTTP.get(URI("http://movie.mtime.com/#{id}/reviews/short/new.html")).force_encoding('UTF-8').gsub("\r", '')
  page = Nokogiri::HTML(info)

  page.css('#tweetRegion dd').each do |comment|
    time = comment.css('[entertime]')[0]['entertime']
    users_collection[count/500] ||= []
    users_collection[count/500] << '(' + [
      '#{_e}',
      '#{_p}',
      comment.css('.comboxuser .px14')[0].text.strip,
      '#{_g.sample}',
      '#{_a.sample}',
      '#{_c.sample}',
      '没有写。',
      comment.css('.comboxuser img')[0]['src'],
      time,
      time,
    ].map{|i|ActiveRecord::ConnectionAdapters::AbstractAdapter.new(nil).quote(i)}.join(', ') + ')'
    comments_collection[count/500] ||= []
    comments_collection[count/500] << '(' + [
      "\#{_u[#{count}%_ul]}",
      "\#{_m[#{id}]}",
      comment.css('h3')[0].text,
      rand(3..5),
      time,
      time,
    ].map{|i|ActiveRecord::ConnectionAdapters::AbstractAdapter.new(nil).quote(i)}.join(', ') + ')'
    count += 1
  end
end

puts "_u = []"
users_collection.flatten.first(100).each do |value|
  puts '_u << ActiveRecord::Base.connection.insert(%{'
  puts %{INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES\n#{value}\n}
  puts '})'
end
puts "_ul = _u.size"

comments_collection.each do |values|
  puts 'ActiveRecord::Base.connection.execute(%{'
  puts %{INSERT INTO "comments" ("user_id", "movie_id", "content", "rating", "created_at", "updated_at") VALUES\n#{values.join(",\n")}\n}
  puts '})'
end

puts "Movie.all.each{|movie|movie.update_ratings!}"
