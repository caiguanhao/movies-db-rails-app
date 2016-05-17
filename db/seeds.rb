admin = User.create(
  email: 'a@a.com',
  password: '123321',
  name: 'test',
  admin: true,
  gender: '男',
  astro: '狮子座',
  city: '上海',
  intro: '没有写。',
  avatar: '/uploads/avatars/c01b5cbdeafc44925690519b76283ab2.jpg',
)

load __dir__ + "/seeds/movies.rb"
load __dir__ + "/seeds/photos.rb"
load __dir__ + "/seeds/cinemas.rb"
load __dir__ + "/seeds/comments.rb"
load __dir__ + "/seeds/timetables.rb"

Movie.order("RANDOM()").limit(6).each do |movie|
  admin.like_with! movie, Movie::LIKE_TYPES.keys.sample
end

User.where(admin: nil).each do |user|
  admin.follow!(user)
  Movie.order("RANDOM()").limit([*4..8].sample).each do |movie|
    user.like_with! movie, Movie::LIKE_TYPES.keys.sample
  end
end

User.where(admin: nil).order("RANDOM()").limit(10).each do |user|
  user.follow!(admin)
end
