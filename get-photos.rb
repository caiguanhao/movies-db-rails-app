require 'net/http'
require 'json'
require 'active_record'

TYPES_MTIME = {
  'stagepicture' => 'stage',
  'poster'       => 'poster',
  'workimage'    => 'work',
  'newsimage'    => 'news',
  'desktop'      => 'desktop',
  'cover'        => 'cover',
}

IDS = {
  '疯狂动物城'                  => 205222,
  '美国队长3'                   => 209122,
  '伦敦陷落'                    => 211903,
  '愤怒的小鸟'                  => 200506,
  '死侍'                        => 106309,
  '蝙蝠侠大战超人：正义黎明'    => 203183,
  '爱丽丝梦游仙境2：镜中奇遇记' => 207862,
  '超脑48小时'                  => 216121,
  '分歧者3：忠诚世界'           => 208256,
}

VAR = 'var imageList ='

IDS.each do |moviename, movieid|
  res = Net::HTTP.get(URI("http://movie.mtime.com/#{movieid}/posters_and_images/"))
  lines = res.lines
  lines.keep_if{ |line| line.include?(VAR) }
  raise 'incorrect cinemasJson matched' if lines.size != 1
  line = lines[0]
  json = line[(line.index(VAR)+VAR.length)..-1]
  images = JSON.parse(json)

  values_collection = []
  count = 0

  puts %{
_id = Movie.find_by(name: '#{moviename}').id
_tm = Time.current
}

  images.each do |collection|
    collection.each do |type, timages|
      timages.each do |scollection|
        next if not scollection.is_a? Hash
        scollection.each do |subtype, stimages|
        next if not stimages.is_a? Array
          stimages.each do |image|
            next if not image.is_a? Hash
            values_collection[count/500] ||= []
            values_collection[count/500] << '(' + [
              '#{_id}',
              image['title'],
              TYPES_MTIME[type],
              image['img_220'].sub(/_.*\.jpg$/, '.jpg'),
              'mtime',
              '#{_tm}',
              '#{_tm}',
            ].map{|i|ActiveRecord::ConnectionAdapters::AbstractAdapter.new(nil).quote(i)}.join(', ') + ')'
            count += 1
          end
        end
      end
    end
  end

  values_collection.each do |values|
    puts 'ActiveRecord::Base.connection.execute %{'
    puts %{INSERT INTO "photos" ("movie_id", "title", "photo_type", "url", "url_type", "created_at", "updated_at") VALUES\n#{values.join(",\n")}\n}
    puts '}'
  end
end
