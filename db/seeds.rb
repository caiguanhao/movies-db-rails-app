user = User.create(
  email: 'a@a.com',
  password: '123321',
  name: 'test',
  admin: true,
  gender: '男',
  astro: '狮子座',
  city: '上海',
  intro: '没有写。',
  avatar: '/uploads/c01b5cbdeafc44925690519b76283ab2.jpg',
)

load __dir__ + "/seeds/movies.rb"
load __dir__ + "/seeds/cinemas.rb"

today = Date.current

dates = [
  [ today,      today + 1,  today + 2 ],
  [ today + 1,  today + 2,  today + 3 ],
  [ today + 10, today + 11, today + 12 ],
  [ today + 15, today + 16, today + 17 ],
  [ today + 20, today + 21, today + 22 ],
]

times = [
  [ '10:00', '12:00', '14:00', '16:00', '18:00', '20:00', '22:00' ],
  [ '10:15', '12:15', '14:15', '16:15', '18:15', '20:15', '22:15' ],
  [ '10:30', '12:30', '14:30', '16:30', '18:30', '20:30', '22:30' ],
  [ '10:45', '12:45', '14:45', '16:45', '18:45', '20:45', '22:45' ],
  [ '11:00', '13:00', '15:00', '17:00', '19:00', '21:00', '23:00' ],
]

rooms = [
  [ '1号厅', '2号厅', '3号厅', '2号厅', '1号厅', '3号厅', '1号厅' ],
  [ '1号厅', '2号厅', '1号厅', '2号厅', '1号厅', '2号厅', '1号厅' ],
  [ '1号厅', '3号厅', '2号厅', '1号厅', '2号厅', '2号厅', '1号厅' ],
  [ '2号厅', '1号厅', '4号厅', '3号厅', '1号厅', '2号厅', '4号厅' ],
  [ '1号厅', '4号厅', '2号厅', '1号厅', '3号厅', '4号厅', '2号厅' ],
]

prices = [
  [ [25, 30], [30, 25], [28, 28], [30, 25], [25, 30], [28, 28], [25, 30] ],
  [ [25, 30], [30, 25], [25, 30], [30, 25], [25, 30], [30, 25], [25, 30] ],
  [ [25, 30], [28, 28], [30, 25], [25, 30], [30, 25], [30, 25], [25, 30] ],
  [ [30, 25], [25, 30], [30, 28], [28, 28], [25, 30], [30, 25], [30, 28] ],
  [ [25, 30], [30, 28], [30, 25], [25, 30], [28, 28], [30, 28], [30, 25] ],
]

values_collection = []
count = 0

Movie.all.select(:id).pluck(:id).each.with_index do |movie_id, i|
  dates[i % dates.size].each do |date|
    Cinema.all.select(:id).order("RANDOM()").limit(Cinema.count * 2 / 3).pluck(:id).each.with_index do |cinema_id, j|
      timeidx = (i + j) % times.size
      times[timeidx].each.with_index do |time, k|
        values_collection[count/500] ||= []
        values_collection[count/500] << '(' + [
          date,
          time,
          cinema_id,
          movie_id,
          rooms[timeidx][k],
          {
            baidu: prices[timeidx][k][0],
            meituan: prices[timeidx][k][1],
          }.to_json,
          Time.current,
          Time.current,
        ].map{|i|ActiveRecord::Base.connection.quote(i)}.join(', ') + ')'
        count += 1
      end
    end
  end
end

values_collection.each do |values|
  sql = %{INSERT INTO "timetables" ("date", "time", "cinema_id", "movie_id", "room", "prices", "created_at", "updated_at") VALUES #{values.join(", ")}}
  ActiveRecord::Base.connection.execute sql
end

Comment.create(user: user, movie: Movie.first, rating: 4, content:
%{作为迪士尼少有的春季档动画，《疯狂动物城》所展现出来的意识和状态完全不是一部动画电影该有的样子。

自2008年的《闪电狗》以来，有了皮克斯大只佬约翰·拉塞特的倾力执掌，新世代的迪士尼动画展现出非凡的进步与成就。2012年的《无敌破坏王》，2013年的《冰雪奇缘》，2014年的《超能陆战队》，无论是原创还是改编作品，都足以让任何喜爱动画的观众欢呼雀跃。在这一点上，隔壁的表现就显得非常的起伏不定（《森林战士》、《老雷斯的故事》），果然经验和认识才是比技术更为重要的精神内核。})
