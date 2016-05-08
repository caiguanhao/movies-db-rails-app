FIRSTNAMES = %w{tom jack adam mary rose juliet sam justim taylor}
LASTNAMES = %w{smith johnson williams brown jones miller davis wilson anderson thomas moore martin}
PROVIDERS = %w{gmail.com apple.com hotmail.com yahoo.com}

def random_email
  "#{FIRSTNAMES.sample}#{LASTNAMES.sample}#{rand(1000...9999)}@#{PROVIDERS.sample}"
end

admin = User.create(
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

comments = [
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '全部英文字幕，近八十的老妈却看得乐呵呵的',
    date: '2016-04-30 08:05',
    name: 'M_1604100712528187792',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '朱迪的爹地妈咪好温馨',
    date: '2016-04-30 07:12',
    name: 'M_1407270752251479852',
  },
  {
    avatar: 'http://img22.mtime.cn/up/2010/11/09/103237.89531156_48X48.jpg',
    content: '被狐狸帅哭是怎么回事',
    date: '2016-04-30 02:45',
    name: '白葉寧',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2014/10/21/144602.55505935_48X48.jpg',
    content: '好的有点儿出乎意料',
    date: '2016-04-29 23:33',
    name: 'joytime888',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '超好看~',
    date: '2016-04-29 23:20',
    name: 'peteroy',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2016/03/09/114111.27640577_48X48.jpg',
    content: '好看',
    date: '2016-04-29 17:56',
    name: 'M_1603091138506692132',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2016/03/09/114111.27640577_48X48.jpg',
    content: '真心好看',
    date: '2016-04-29 17:56',
    name: 'M_1603091138506692132',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '朱迪的爹地妈咪好温馨',
    date: '2016-04-29 13:42',
    name: 'M_1309150410300107671',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '好',
    date: '2016-04-29 08:36',
    name: '火色精灵',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2015/08/07/095913.42890901_48X48.jpg',
    content: '超级好看',
    date: '2016-04-29 08:34',
    name: 'M_1508070959102582358',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '很好看的电影',
    date: '2016-04-28 20:53',
    name: 'M_1308231352522753457',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '太好看了',
    date: '2016-04-28 20:53',
    name: 'M_1308231352522753457',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2013/03/02/215752.62385367_48X48.jpg',
    content: '很不错',
    date: '2016-04-28 15:06',
    name: 'Czq-陈',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '内容不错，我要是再看下英语版的就更完美了',
    date: '2016-04-27 23:01',
    name: 'M_1508231656088367972',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '好喜欢喜欢！又萌萌哒又充满想象力，轻松诙谐又不会显得俗套...',
    date: '2016-04-27 22:42',
    name: 'M_1406212240314119298',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '挺好看',
    date: '2016-04-27 20:49',
    name: 'M_1503290901227545238',
  },
  {
    avatar: 'http://img2.mtime.cn/u/1208/1469208/33e2e4ef-b6c7-42d9-ad01-d49af48e3bda/48X48.jpg',
    content: '人造的动物社会~很有想象力，正能量够足。',
    date: '2016-04-27 16:30',
    name: 'Daisy1469208',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2015/02/19/131826.90416722_48X48.jpg',
    content: '好有爱的电影，看完感觉整个人都充满了正能量！萌萌哒',
    date: '2016-04-27 11:29',
    name: 'via777',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2013/12/04/101300.26653715_48X48.jpg',
    content: '看完第一遍，又去看了第二遍，还买了朱迪的手机壳~~~真的太爱了根大白一样带来无限欢乐，动画制作很细腻，大动物，小动物的新奇世界引人入胜。萌萌哒豹子警官和呆萌flash都是那么让人欢喜！',
    date: '2016-04-27 11:10',
    name: '槑槑的小雪',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2014/09/22/034131.70278659_48X48.jpg',
    content: '迪士尼的动画越来越有深意了。对女性、外表、和种族的偏见，Zootopia都讽刺了遍。',
    date: '2016-04-27 09:33',
    name: '飞翔的夏之猪',
  },
  {
    avatar: 'http://img22.mtime.cn/up/2011/11/19/000932.27919984_48X48.jpg',
    content: '动画还是不好看，不晓得为什么这么火~',
    date: '2016-04-27 00:00',
    name: '饿人谷谷主',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '这是我看过的最有趣的动画片，细节做的超级好',
    date: '2016-04-26 12:59',
    name: 'M_1508021406196719935',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '好棒好棒，进入动物城的那一瞬间就沦陷了',
    date: '2016-04-25 10:57',
    name: 'Yui意',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2015/10/08/132030.30974947_48X48.jpg',
    content: '非常好看',
    date: '2016-04-24 21:11',
    name: 'M_1508030958479051029',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '特别特别好看，老少皆宜',
    date: '2016-04-24 14:14',
    name: 'melanie1988',
  },
  {
    avatar: 'http://img2.mtime.cn/images/default/head_48X48.gif',
    content: '朱迪的爹地妈咪好温馨',
    date: '2016-04-24 12:09',
    name: 'M_1406151423152885170',
  },
  {
    avatar: 'http://img32.mtime.cn/up/2016/03/12/133758.44992554_48X48.jpg',
    content: '好看',
    date: '2016-04-24 11:55',
    name: 'Ricci_J',
  }
]

movie = Movie.find_by(name: '疯狂动物城')
comments.reverse.each do |comment|
  user = User.create(
    email: random_email,
    password: '123321',
    name: comment[:name],
    gender: User::GENDERS.sample,
    astro: User::ASTROS.sample,
    city: CitiesHelper::CITY_LIST[:'热门'].sample,
    intro: '没有写。',
    avatar: comment[:avatar],
  )
  Comment.create(
    user:    user,
    movie:   movie,
    rating:  rand(3..5),
    content: comment[:content],
    created_at: comment[:date],
    updated_at: comment[:date],
  )
end

User.where(admin: nil).each do |user|
  admin.follow!(user)
end

User.where(admin: nil).order("RANDOM()").limit(10).each do |user|
  user.follow!(admin)
end
