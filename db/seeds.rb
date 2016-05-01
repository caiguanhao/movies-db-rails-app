user = User.create(email: 'a@a.com', password: '123321')

movies = []
movies << Movie.create(name: '疯狂动物城', alias: 'Zootopia', year: 2016,
poster: 'http://img31.mtime.cn/mg/2016/01/28/092553.55103474_270X405X4.jpg',
content: %{
导演：拜恩·霍华德 杰拉德·布什 ...
编剧：杰拉德·布什 菲尔·约翰斯东 ...
国家地区：美国
发行公司：中国电影集团公司 ...
更多片名：动物方城市 动物乌托邦 ...
剧情： 这是一座独一无二的现代动物都市，每种动物在这里都有自己的居所，比如富丽堂皇又炎热的撒哈拉广场，或者常年严寒的冰川镇。
它就像一座大熔炉，动物们在这里和平共处——无论是大象还是小老鼠，只要努力，都能闯出一番名堂。
})
movies << Movie.create(name: '美国队长3', alias: 'Captain America: Civil War', year: 2016,
poster: 'http://img31.mtime.cn/mg/2016/04/14/113936.27264773_270X405X4.jpg',
content: %{导演：安东尼·罗素 乔·罗素
编剧：杰克·科比 克里斯托弗·马库斯 ...
国家地区：美国
发行公司：中国电影股份有限公司 ...
更多片名：美国队长：内战 美国队长3：内战 ...
剧情： 美国队长史蒂夫·罗杰斯带领着全新组建的复仇者联盟，继续维护世界和平。
然而，一次执行任务时联盟成员不小心造成大量平民伤亡，从而激发政治压力，政府决定通过一套监管系统来管理和领导复仇者联盟。})
movies << Movie.create(name: '愤怒的小鸟', alias: 'The Angry Birds Movie', year: 2016,
poster: 'http://img31.mtime.cn/mg/2016/04/15/104836.51296527_270X405X4.jpg',
content: %{导演：费格尔·雷利 克雷·卡提斯
编剧：乔恩·维迪
国家地区：芬兰 | 美国
发行公司：索尼发行公司 ...
更多片名：愤怒鸟玩电影 愤怒的小鸟电影版 ...
剧情： 一群不会飞的小鸟，挤在一座热带小岛上，和睦宁静。游戏中的几个经典形象成了影片的主角，分别是易怒的小鸟大红（杰森·苏戴奇斯配音），速度小鸟恰克（乔什·盖德配音）、炸弹（丹尼·麦克布耐德配音）。})
movies << Movie.create(name: '分歧者3：忠诚世界', alias: 'The Divergent Series: Allegiant', year: 2016,
poster: 'http://img31.mtime.cn/mg/2016/04/15/150549.73098068_270X405X4.jpg',
content: %{导演：罗伯特·斯文克
编剧：维罗尼卡·罗斯 诺亚·奥本海姆 ...
国家地区：美国
发行公司：顶峰娱乐 ...
更多片名：效忠者 效忠者（上） ...
剧情： 在推翻了派系制度之后，翠丝与老四带领众人翻越了芝加哥的围墙来到全新世界。然而看似美好的新世界却隐藏着更大的杀机，翠丝与老四之间的信任也遭受到前所未有的考验。二人能否从阴谋中脱身并守住彼此？})

cinemas = []
cinemas << Cinema.create(name: '杭州UME国际影城', city: '杭州',
logo: 'http://img31.mtime.cn/t/2014/08/14/160837.58437590_102X63X3.jpg',
content: %{杭州市文二西路551号西城广场4楼
电话：0571-88100999 营业时间：10:00-00:00})
cinemas << Cinema.create(name: '杭州佳映IMAX影城', city: '杭州',
logo: 'http://img31.mtime.cn/t/2015/02/28/140155.86374990_102X63X3.jpg',
content: %{杭州市西湖区古墩路与余杭塘路路口五洲广场2层(印象城对面)
电话：0571-89712002 营业时间：10:00-23:00})
cinemas << Cinema.create(name: '中影国际影城(杭州星光大道店)', city: '杭州',
logo: 'http://img31.mtime.cn/t/2014/08/14/161000.29094769_102X63X3.jpg',
content: %{杭州市滨江区江南大道228号星光大道2幢4层
电话：0571-88924988 营业时间：9:30-23:30})

dates = [
  [ '2016-5-1', '2016-5-2', '2016-5-3', ],
  [ '2016-5-2', '2016-5-3', '2016-5-4', ],
  [ '2016-5-15', '2016-5-16', '2016-5-17', ],
  [ '2016-5-20', '2016-5-21', '2016-5-22', ],
]

times = [
  [ '10:00', '12:00', '14:00', '16:00', '18:00', '20:00', '22:00' ],
  [ '10:30', '12:30', '14:30', '16:30', '18:30', '20:30', '22:30' ],
  [ '11:00', '13:00', '15:00', '17:00', '19:00', '21:00', '23:00' ],
]

movies.each.with_index do |movie, i|
  dates[i % dates.size].each do |date|
    cinemas.each.with_index do |cinema, j|
      times[(i + j) % times.size].each do |time|
        Timetable.create(date: date, time: time, cinema: cinema, movie: movie)
      end
    end
  end
end

Comment.create(user: user, movie: movies[0], rating: 4, content:
%{作为迪士尼少有的春季档动画，《疯狂动物城》所展现出来的意识和状态完全不是一部动画电影该有的样子。

自2008年的《闪电狗》以来，有了皮克斯大只佬约翰·拉塞特的倾力执掌，新世代的迪士尼动画展现出非凡的进步与成就。2012年的《无敌破坏王》，2013年的《冰雪奇缘》，2014年的《超能陆战队》，无论是原创还是改编作品，都足以让任何喜爱动画的观众欢呼雀跃。在这一点上，隔壁的表现就显得非常的起伏不定（《森林战士》、《老雷斯的故事》），果然经验和认识才是比技术更为重要的精神内核。})
