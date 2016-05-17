
FIRSTNAMES = %w{tom jack adam mary rose juliet sam justim taylor}
LASTNAMES = %w{smith johnson williams brown jones miller davis wilson anderson thomas moore martin}
PROVIDERS = %w{gmail.com apple.com hotmail.com yahoo.com}

def _e
  "#{FIRSTNAMES.sample}#{LASTNAMES.sample}#{rand(1000...9999)}@#{PROVIDERS.sample}"
end

_p = '$2a$10$4VzgvSytQPQk4jWM5WdtfuzK3Q9QSyP0.Ie8qIODYLfxAjTTcm26u'
_m = Movie.select(:id, :mtime_id).map{|i|[i.mtime_id,i.id]}.to_h
_g = User::GENDERS
_a = User::ASTROS
_c = CitiesHelper::CITY_LIST[:'热门']
_u = []
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'ruru3192647', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2010/06/03/205027.53072189_48X48.jpg', '2016-5-17 11:44:05', '2016-5-17 11:44:05')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '超喵', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2012/01/05/144833.87421669_48X48.jpg', '2016-5-17 11:23:13', '2016-5-17 11:23:13')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1509171157063584310', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/09/17/115707.81361249_48X48.jpg', '2016-5-17 11:01:07', '2016-5-17 11:01:07')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '路见很平', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2010/09/12/020547.36397525_48X48.jpg', '2016-5-17 10:57:39', '2016-5-17 10:57:39')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1604282320529926300', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 10:15:44', '2016-5-17 10:15:44')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1604282320529926300', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 10:15:34', '2016-5-17 10:15:34')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '荼菟', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 9:58:21', '2016-5-17 9:58:21')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1311022105313385923', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 9:50:00', '2016-5-17 9:50:00')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1311022105313385923', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 9:49:01', '2016-5-17 9:49:01')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'Tantiko', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2011/12/03/141407.39195802_48X48.jpg', '2016-5-17 8:32:11', '2016-5-17 8:32:11')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1407032040313566213', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 8:28:03', '2016-5-17 8:28:03')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1308101835081557639', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 6:41:51', '2016-5-17 6:41:51')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'theyaa', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 2:57:25', '2016-5-17 2:57:25')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1503251349223141499', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 2:47:06', '2016-5-17 2:47:06')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '我简单说两句', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 2:11:22', '2016-5-17 2:11:22')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'XM41671', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2012/07/25/115807.63351627_48X48.jpg', '2016-5-17 1:21:45', '2016-5-17 1:21:45')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1605011038482527687', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/05/01/103848.18417984_48X48.jpg', '2016-5-17 0:51:23', '2016-5-17 0:51:23')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'RocMan·', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2011/12/15/160950.31589943_48X48.jpg', '2016-5-17 0:14:39', '2016-5-17 0:14:39')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '不倒翁2915880', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2011/01/28/085926.38150569_48X48.jpg', '2016-5-17 0:02:13', '2016-5-17 0:02:13')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'XM110_SASS', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/09/15/032846.23405817_48X48.jpg', '2016-5-16 23:47:48', '2016-5-16 23:47:48')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1605081320482247395', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 23:41:06', '2016-5-16 23:41:06')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1601231945542039051', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 23:08:59', '2016-5-16 23:08:59')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1605142317006043495', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 22:45:08', '2016-5-16 22:45:08')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '菲林', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/01/30/060250.99986156_48X48.jpg', '2016-5-16 22:13:26', '2016-5-16 22:13:26')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '小水HAN1222', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/07/13/133520.22152412_48X48.jpg', '2016-5-16 22:12:15', '2016-5-16 22:12:15')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '天在下雨', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/1059/1143059/013dca5f-5b95-4124-b39b-942b226d2b0e/48X48.jpg', '2016-5-16 21:51:17', '2016-5-16 21:51:17')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'DeepLines', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/12/12/204145.36274053_48X48.jpg', '2016-5-16 21:43:20', '2016-5-16 21:43:20')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1409281509253711883', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 10:33:17', '2016-5-17 10:33:17')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '荼菟', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 10:01:08', '2016-5-17 10:01:08')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'W-GuiBin', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 9:37:38', '2016-5-17 9:37:38')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '懒懒的鱼3300007', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2010/06/24/105850.66981756_48X48.jpg', '2016-5-17 8:42:47', '2016-5-17 8:42:47')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1412131332023516332', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/12/13/133419.69287852_48X48.jpg', '2016-5-17 1:22:51', '2016-5-17 1:22:51')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1507222025166871744', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 1:19:08', '2016-5-17 1:19:08')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1507222025166871744', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 1:19:08', '2016-5-17 1:19:08')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'pan88', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/02/20/145006.56345759_48X48.jpg', '2016-5-17 1:13:04', '2016-5-17 1:13:04')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '暖暖的N4', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/04/26/030547.52966851_48X48.jpg', '2016-5-17 0:27:27', '2016-5-17 0:27:27')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '西门泪尘', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/02/24/105649.44738746_48X48.jpg', '2016-5-16 22:43:21', '2016-5-16 22:43:21')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '猫舞随风', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 22:16:00', '2016-5-16 22:16:00')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '笑着的伤疤', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2011/01/02/133004.64566137_48X48.jpg', '2016-5-16 19:35:01', '2016-5-16 19:35:01')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'KevinHan', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/86/2340086/7cc06d60-6ec5-481e-9e45-42c267a2d53e/48X48.jpg', '2016-5-16 19:12:33', '2016-5-16 19:12:33')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'Nero', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/11/24/005326.30166665_48X48.jpg', '2016-5-16 19:04:17', '2016-5-16 19:04:17')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1508261732460981706', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/08/26/173247.23038894_48X48.jpg', '2016-5-16 17:53:03', '2016-5-16 17:53:03')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '北斗', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/366/702366/4e472a3b-5b0a-4b83-8f38-c6ac504e5525/48X48.jpg', '2016-5-16 17:48:24', '2016-5-16 17:48:24')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '无夜路人', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2010/11/12/160432.77821287_48X48.jpg', '2016-5-16 17:40:55', '2016-5-16 17:40:55')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1603062039541733596', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/03/06/204014.92482578_48X48.jpg', '2016-5-16 17:28:31', '2016-5-16 17:28:31')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'Clouser', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/03/26/144742.44767444_48X48.jpg', '2016-5-16 17:02:18', '2016-5-16 17:02:18')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '冲动是魔鬼1352191', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/12/03/232953.40986698_48X48.jpg', '2016-5-16 16:22:06', '2016-5-16 16:22:06')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'Takashima', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/05/15/000047.37197889_48X48.jpg', '2016-5-16 16:17:13', '2016-5-16 16:17:13')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '默无声息', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/02/25/055325.92049361_48X48.jpg', '2016-5-16 15:43:34', '2016-5-16 15:43:34')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '韩版衣衣', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/02/25/055343.56637734_48X48.jpg', '2016-5-16 15:43:15', '2016-5-16 15:43:15')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '风中的情缘2009', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/02/25/055400.23380995_48X48.jpg', '2016-5-16 15:43:03', '2016-5-16 15:43:03')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '本来潜水的', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/02/25/055513.11545924_48X48.jpg', '2016-5-16 15:42:35', '2016-5-16 15:42:35')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '烟圈90', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/02/25/055525.74968148_48X48.jpg', '2016-5-16 15:41:50', '2016-5-16 15:41:50')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '我叫王莹', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/02/25/055557.35734559_48X48.jpg', '2016-5-16 15:41:13', '2016-5-16 15:41:13')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'kLAs_C', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/205/1736205/73ca4e52-159c-4ae8-a3f8-cd7862e962bd/48X48.jpg', '2016-5-17 11:42:51', '2016-5-17 11:42:51')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1403190901257821871', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 11:24:38', '2016-5-17 11:24:38')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1509171157063584310', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/09/17/115707.81361249_48X48.jpg', '2016-5-17 10:57:40', '2016-5-17 10:57:40')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '涵寒5151', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/04/29/113423.47867575_48X48.jpg', '2016-5-17 10:16:09', '2016-5-17 10:16:09')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'jvjvhan', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/12/07/133103.76426938_48X48.jpg', '2016-5-17 8:53:13', '2016-5-17 8:53:13')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '半袖', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/41/676041/1b28e7a5-d08a-49a3-9185-8b66055abc72/48X48.jpg', '2016-5-17 0:48:00', '2016-5-17 0:48:00')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1512171619209994007', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/12/17/161909.14787913_48X48.jpg', '2016-5-17 0:36:09', '2016-5-17 0:36:09')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_17529', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 0:31:28', '2016-5-17 0:31:28')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'xiao青争', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/05/17/001012.38106236_48X48.jpg', '2016-5-17 0:16:25', '2016-5-17 0:16:25')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'xiao青争', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/05/17/001012.38106236_48X48.jpg', '2016-5-17 0:16:09', '2016-5-17 0:16:09')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '_522229469', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/05/16/202527.58012670_48X48.jpg', '2016-5-17 0:08:10', '2016-5-17 0:08:10')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1507101552083307257', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 0:06:31', '2016-5-17 0:06:31')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1405251751540273674', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/03/06/010511.99796538_48X48.jpg', '2016-5-16 23:58:28', '2016-5-16 23:58:28')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1605161805221688088', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 23:21:16', '2016-5-16 23:21:16')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1309120112472805268', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 23:16:08', '2016-5-16 23:16:08')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '__纤纤__', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/04/16/164527.32092624_48X48.jpg', '2016-5-16 23:07:26', '2016-5-16 23:07:26')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '武当若水', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 23:02:16', '2016-5-16 23:02:16')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'yamabird', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2013/04/05/184451.63289825_48X48.jpg', '2016-5-16 22:29:07', '2016-5-16 22:29:07')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '深圳展展', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 22:25:26', '2016-5-16 22:25:26')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '__纤纤__', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/04/16/164527.32092624_48X48.jpg', '2016-5-16 22:21:10', '2016-5-16 22:21:10')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '莫咦音敏', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/05/07/140619.81228748_48X48.jpg', '2016-5-16 22:18:04', '2016-5-16 22:18:04')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1412282255578291530', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 22:11:28', '2016-5-16 22:11:28')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1412282255578291530', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 22:10:27', '2016-5-16 22:10:27')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '__纤纤__', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2016/04/16/164527.32092624_48X48.jpg', '2016-5-16 21:39:36', '2016-5-16 21:39:36')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1409271859517389137', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 21:27:21', '2016-5-16 21:27:21')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '看云看海', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/05/22/112023.77407917_48X48.jpg', '2016-5-16 20:42:06', '2016-5-16 20:42:06')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'DeParTure', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/1086/2077086/468ed931-8bf5-4507-a711-a404aaff7ad7/48X48.jpg', '2016-5-16 20:10:04', '2016-5-16 20:10:04')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '路见很平', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2010/09/12/020547.36397525_48X48.jpg', '2016-5-17 11:01:42', '2016-5-17 11:01:42')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1510052003261355260', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 10:31:20', '2016-5-17 10:31:20')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '荼菟', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-17 10:02:59', '2016-5-17 10:02:59')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'calvin', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/455/168455/852c8408-1a03-4b0e-b0fd-0aeaeb46dfcb/48X48.jpg', '2016-5-16 23:59:23', '2016-5-16 23:59:23')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '暗战2', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2013/08/25/224526.26997637_48X48.jpg', '2016-5-16 21:03:02', '2016-5-16 21:03:02')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1509142241243861664', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2015/09/14/224126.96006199_48X48.jpg', '2016-5-16 19:31:15', '2016-5-16 19:31:15')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '北斗', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/u/366/702366/4e472a3b-5b0a-4b83-8f38-c6ac504e5525/48X48.jpg', '2016-5-16 17:42:54', '2016-5-16 17:42:54')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1505131708068847949', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 16:29:06', '2016-5-16 16:29:06')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'M_1505131708068847949', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img2.mtime.cn/images/default/head_48X48.gif', '2016-5-16 16:23:13', '2016-5-16 16:23:13')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '宅思宇', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/10/20/132019.19537795_48X48.jpg', '2016-5-16 15:30:37', '2016-5-16 15:30:37')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'ranisin', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2010/06/29/082951.32679696_48X48.jpg', '2016-5-16 15:25:17', '2016-5-16 15:25:17')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'ShawshankRedemption', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2011/11/19/135902.55181257_48X48.jpg', '2016-5-16 14:43:40', '2016-5-16 14:43:40')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'ShawshankRedemption', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2011/11/19/135902.55181257_48X48.jpg', '2016-5-16 14:42:47', '2016-5-16 14:42:47')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '东果先生', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/03/17/011229.50414419_48X48.jpg', '2016-5-16 14:26:54', '2016-5-16 14:26:54')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '东果先生', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2014/03/17/011229.50414419_48X48.jpg', '2016-5-16 14:26:42', '2016-5-16 14:26:42')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '金刚不败', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2012/05/06/124639.62555640_48X48.jpg', '2016-5-16 14:14:16', '2016-5-16 14:14:16')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', '泛儿oc', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img32.mtime.cn/up/2013/12/23/153208.93810486_48X48.jpg', '2016-5-16 13:16:15', '2016-5-16 13:16:15')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'Struggle', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2010/06/24/182057.15568305_48X48.jpg', '2016-5-16 10:57:40', '2016-5-16 10:57:40')
})
_u << ActiveRecord::Base.connection.insert(%{
INSERT INTO "users" ("email", "encrypted_password", "name", "gender", "astro", "city", "intro", "avatar", "created_at", "updated_at") VALUES
('#{_e}', '#{_p}', 'h·e·n·r·i·k', '#{_g.sample}', '#{_a.sample}', '#{_c.sample}', '没有写。', 'http://img22.mtime.cn/up/2011/10/28/094614.79777788_48X48.jpg', '2016-5-16 1:59:56', '2016-5-16 1:59:56')
})
_ul = _u.size
ActiveRecord::Base.connection.execute(%{
INSERT INTO "comments" ("user_id", "movie_id", "content", "rating", "created_at", "updated_at") VALUES
('#{_u[0%_ul]}', '#{_m[209122]}', '看着这群超级英雄自相残杀，这集的大反派都没有存在感了，难怪要折腾他们', 5, '2016-5-17 11:44:05', '2016-5-17 11:44:05'),
('#{_u[1%_ul]}', '#{_m[209122]}', '对比dc，无语哽咽', 5, '2016-5-17 11:23:13', '2016-5-17 11:23:13'),
('#{_u[2%_ul]}', '#{_m[209122]}', '超级英雄合家欢，每个人过来亮相表演一段也值回票价了。如果去掉半个小时的英雄表演秀，刚好2个小时，一部正常电影的时长。', 4, '2016-5-17 11:01:07', '2016-5-17 11:01:07'),
('#{_u[3%_ul]}', '#{_m[209122]}', '漫威片就这样，看下一部的时候总记不起上一部演了什么。不过这部撕逼应该能印象久远一点。不过感觉好像还是不如美队2，虽然记不起情节了，但当时看完之后的震撼还是有点点印象', 5, '2016-5-17 10:57:39', '2016-5-17 10:57:39'),
('#{_u[4%_ul]}', '#{_m[209122]}', '好好看好好看好好看好好看好好看', 4, '2016-5-17 10:15:44', '2016-5-17 10:15:44'),
('#{_u[5%_ul]}', '#{_m[209122]}', '真的很好看', 4, '2016-5-17 10:15:34', '2016-5-17 10:15:34'),
('#{_u[6%_ul]}', '#{_m[209122]}', '时间太长了，故事线有点乱', 4, '2016-5-17 9:58:21', '2016-5-17 9:58:21'),
('#{_u[7%_ul]}', '#{_m[209122]}', '《美队3》：动漫英雄们继续在拯救世界，拯救好莱坞的票房。7分。', 4, '2016-5-17 9:50:00', '2016-5-17 9:50:00'),
('#{_u[8%_ul]}', '#{_m[209122]}', '《美队3》：动漫英雄们继续在拯救世界，拯救好莱坞的票房。7分。', 3, '2016-5-17 9:49:01', '2016-5-17 9:49:01'),
('#{_u[9%_ul]}', '#{_m[209122]}', '还行吧！不过我我和我对象竟然都睡着了，也许是我们都太困了', 4, '2016-5-17 8:32:11', '2016-5-17 8:32:11'),
('#{_u[10%_ul]}', '#{_m[209122]}', '很好看！', 3, '2016-5-17 8:28:03', '2016-5-17 8:28:03'),
('#{_u[11%_ul]}', '#{_m[209122]}', '挺不错的电影，不管画面还是内容都是棒棒哒', 3, '2016-5-17 6:41:51', '2016-5-17 6:41:51'),
('#{_u[12%_ul]}', '#{_m[209122]}', 'MCU继妇联1以后，最喜欢的一部', 3, '2016-5-17 2:57:25', '2016-5-17 2:57:25'),
('#{_u[13%_ul]}', '#{_m[209122]}', '好看啊', 4, '2016-5-17 2:47:06', '2016-5-17 2:47:06'),
('#{_u[14%_ul]}', '#{_m[209122]}', '节奏感强，感情丰富，赞', 4, '2016-5-17 2:11:22', '2016-5-17 2:11:22'),
('#{_u[15%_ul]}', '#{_m[209122]}', '这些年，各路超级英雄有点多了，看的有点麻木了！', 4, '2016-5-17 1:21:45', '2016-5-17 1:21:45'),
('#{_u[16%_ul]}', '#{_m[209122]}', '酷！', 5, '2016-5-17 0:51:23', '2016-5-17 0:51:23'),
('#{_u[17%_ul]}', '#{_m[209122]}', '在仅有的几个三观正常的角色里面最爱的还是幻视，难得这部看完以后还能想去回味。', 4, '2016-5-17 0:14:39', '2016-5-17 0:14:39'),
('#{_u[18%_ul]}', '#{_m[209122]}', '是部不错的电影，也可以说是漫威最好看的一部，不管剧情和动作都是一等的作品，但烂番茄给的高分觉得过大了。动作拍得很写实比复联2好看得多。', 4, '2016-5-17 0:02:13', '2016-5-17 0:02:13'),
('#{_u[19%_ul]}', '#{_m[209122]}', 'A群星大乱斗 简体中文版', 4, '2016-5-16 23:47:48', '2016-5-16 23:47:48'),
('#{_u[20%_ul]}', '#{_m[209122]}', '儿子很喜欢！说是还要看一次！', 4, '2016-5-16 23:41:06', '2016-5-16 23:41:06'),
('#{_u[21%_ul]}', '#{_m[209122]}', '开篇还挺提神的…然而看不出什么情节…专门来看帅寡姐的', 5, '2016-5-16 23:08:59', '2016-5-16 23:08:59'),
('#{_u[22%_ul]}', '#{_m[209122]}', '一般般，没说的那么好看', 4, '2016-5-16 22:45:08', '2016-5-16 22:45:08'),
('#{_u[23%_ul]}', '#{_m[209122]}', '群斗真是让人又过瘾又惋惜。最后二对一也是不知道心疼谁。幻视超美。想看蚂蚁侠和蜘蛛侠斗嘴', 5, '2016-5-16 22:13:26', '2016-5-16 22:13:26'),
('#{_u[24%_ul]}', '#{_m[209122]}', '看第二遍还是觉得蜘蛛侠很惊艳。美队和钢铁侠后办部分的冲突表现很真实。', 3, '2016-5-16 22:12:15', '2016-5-16 22:12:15'),
('#{_u[25%_ul]}', '#{_m[209122]}', '商业大片应该有的样子，漫威宇宙积淀产生的效果，《美队》系列是一部好过一部，跟《钢铁侠》正好相反，怪不得俩哥们要内战。。', 4, '2016-5-16 21:51:17', '2016-5-16 21:51:17'),
('#{_u[26%_ul]}', '#{_m[209122]}', '我站美队', 4, '2016-5-16 21:43:20', '2016-5-16 21:43:20'),
('#{_u[27%_ul]}', '#{_m[216121]}', '前半部分感觉有点无聊，后半部分情节紧凑看着还算不错。', 5, '2016-5-17 10:33:17', '2016-5-17 10:33:17'),
('#{_u[28%_ul]}', '#{_m[216121]}', '大叔们的表演不错，就是变成另一个人真的有人愿意吗', 3, '2016-5-17 10:01:08', '2016-5-17 10:01:08'),
('#{_u[29%_ul]}', '#{_m[216121]}', '⋯', 5, '2016-5-17 9:37:38', '2016-5-17 9:37:38'),
('#{_u[30%_ul]}', '#{_m[216121]}', '“他们对我很重要”', 5, '2016-5-17 8:42:47', '2016-5-17 8:42:47'),
('#{_u[31%_ul]}', '#{_m[216121]}', '很简单的一个故事', 5, '2016-5-17 1:22:51', '2016-5-17 1:22:51'),
('#{_u[32%_ul]}', '#{_m[216121]}', '有名角，有美女，有剧情，有暴力，有向善，有血有泪，我个人觉得比美队好看！', 5, '2016-5-17 1:19:08', '2016-5-17 1:19:08'),
('#{_u[33%_ul]}', '#{_m[216121]}', '有名角，有美女，有剧情，有暴力，有向善，有血有泪，我个人觉得比美队好看！', 3, '2016-5-17 1:19:08', '2016-5-17 1:19:08'),
('#{_u[34%_ul]}', '#{_m[216121]}', '分數要送俾海報竟然排第二嘅Kevin大叔..........', 5, '2016-5-17 1:13:04', '2016-5-17 1:13:04'),
('#{_u[35%_ul]}', '#{_m[216121]}', '一般般吧，也不算太烂，没不是说好小贱贱是主演嘛，结果开场就挂真的好吗😂', 4, '2016-5-17 0:27:27', '2016-5-17 0:27:27'),
('#{_u[36%_ul]}', '#{_m[216121]}', '遇到这样的老婆和孩子我也愿意变成比利', 5, '2016-5-16 22:43:21', '2016-5-16 22:43:21'),
('#{_u[37%_ul]}', '#{_m[216121]}', '情感的嫁接使得赋予新生', 5, '2016-5-16 22:16:00', '2016-5-16 22:16:00'),
('#{_u[38%_ul]}', '#{_m[216121]}', '#看到有着帅男记忆的老大叔男主摸着帅男娇妻的大腿全座的观众尴尬症都犯了好吗#强烈怀疑本片和《幻体》是套拍片，依然是各位影星赚外快的中成本电影。一个人脑袋里塞俩人的记忆是全片仅有的创意，至于动作戏还不及凯文科斯特纳前两年那部《三日刺杀》“刺激”。结尾蜜汁《完美的世界》既视感。为了神奇女侠撑下去，看了后更期待《愤怒的小鸟》了。。。。。。', 3, '2016-5-16 19:35:01', '2016-5-16 19:35:01'),
('#{_u[39%_ul]}', '#{_m[216121]}', '久违的凯文科斯特纳，喜欢很久了，第一次在电影院看到凯文主演的电影，太有感觉了，一群老戏骨加上盖尔女神，享受电影就好', 4, '2016-5-16 19:12:33', '2016-5-16 19:12:33'),
('#{_u[40%_ul]}', '#{_m[216121]}', '那些把瑞安·雷诺兹放主演名单第一个的网站都是挂羊头卖狗肉。没什么高潮，编剧水平不行', 4, '2016-5-16 19:04:17', '2016-5-16 19:04:17'),
('#{_u[41%_ul]}', '#{_m[216121]}', '最终回归人性戳人心', 4, '2016-5-16 17:53:03', '2016-5-16 17:53:03'),
('#{_u[42%_ul]}', '#{_m[216121]}', '有Kevin Costner耶，因为之前没看过介绍，所以看到大叔的一刻好惊喜', 3, '2016-5-16 17:48:24', '2016-5-16 17:48:24'),
('#{_u[43%_ul]}', '#{_m[216121]}', '看得我昏昏欲睡，不过枪战音效很不错', 4, '2016-5-16 17:40:55', '2016-5-16 17:40:55'),
('#{_u[44%_ul]}', '#{_m[216121]}', '效果特别好', 5, '2016-5-16 17:28:31', '2016-5-16 17:28:31'),
('#{_u[45%_ul]}', '#{_m[216121]}', '还行吧', 4, '2016-5-16 17:02:18', '2016-5-16 17:02:18'),
('#{_u[46%_ul]}', '#{_m[216121]}', '“性感女神”盖尔-加朵摇身变为端庄少妇，媚骨迷人，海边一袭白裙，更是柔情如水，让林志玲等女星汗颜。', 4, '2016-5-16 16:22:06', '2016-5-16 16:22:06'),
('#{_u[47%_ul]}', '#{_m[216121]}', '喜歡Gal 女神😍', 3, '2016-5-16 16:17:13', '2016-5-16 16:17:13'),
('#{_u[48%_ul]}', '#{_m[216121]}', '果然还是不按常理出牌的人们容易取得成功，这么重大的一个任务就凭科学家一句话就交给杰里科了，你们也太重视科学人才了吧。', 5, '2016-5-16 15:43:34', '2016-5-16 15:43:34'),
('#{_u[49%_ul]}', '#{_m[216121]}', '女主角美呆了！演技撑起了整部电影，在性感演绎界开了一代先河，爱上这个女主了。', 5, '2016-5-16 15:43:15', '2016-5-16 15:43:15'),
('#{_u[50%_ul]}', '#{_m[216121]}', '挺喜欢这个结局的，杰里科拥有了莱恩永久的记忆，在艾玛的呼唤下，他找回了爱的感觉。', 4, '2016-5-16 15:43:03', '2016-5-16 15:43:03'),
('#{_u[51%_ul]}', '#{_m[216121]}', '凯叔太赞了！他把这个充满悲剧色彩的人物演活了，整部电影一直处于一种癫狂的状态。', 4, '2016-5-16 15:42:35', '2016-5-16 15:42:35'),
('#{_u[52%_ul]}', '#{_m[216121]}', '那么紧张的情节，配合这么幽默搞笑的台词，真的是分分钟人格分裂啊。', 4, '2016-5-16 15:41:50', '2016-5-16 15:41:50'),
('#{_u[53%_ul]}', '#{_m[216121]}', '手术过程好血腥啊，不过最痛快的应该是莱恩吧，整个脑袋都被削掉一半去了，不过，如果你看过他的死侍，这样的待遇倒也不算什么。', 3, '2016-5-16 15:41:13', '2016-5-16 15:41:13'),
('#{_u[54%_ul]}', '#{_m[173064]}', '一种尴尬的惋惜和无奈。好电影和好表演，但遗憾的是我还是无法超越黄土地文化的隔阂。老实说，我是个对日本或者英伦文化更加认同的人，就像是电影里面那些洋乐队代表的入侵/被入侵势力。我也知道这是非常令人难过和沮丧的事实，但确实只有惋惜，没有其他办法。也许在其他人眼里，粤文化中消亡的那些部分，看起来也是差不多这样子。', 3, '2016-5-17 11:42:51', '2016-5-17 11:42:51'),
('#{_u[55%_ul]}', '#{_m[173064]}', '值得一看的好作品！', 4, '2016-5-17 11:24:38', '2016-5-17 11:24:38'),
('#{_u[56%_ul]}', '#{_m[173064]}', '电影在叙事手法与价值观上有很强的年代感，很贴合吴天明那代人的思维方式，但片子的质量还是很好的。当然，这部电影本身的营销手段更让人有兴趣探讨。', 3, '2016-5-17 10:57:40', '2016-5-17 10:57:40'),
('#{_u[57%_ul]}', '#{_m[173064]}', '绝对是文艺片的业界良心出品', 3, '2016-5-17 10:16:09', '2016-5-17 10:16:09'),
('#{_u[58%_ul]}', '#{_m[173064]}', '很久没有看这样打动人内心的电影。哭的泪流不止。', 3, '2016-5-17 8:53:13', '2016-5-17 8:53:13'),
('#{_u[59%_ul]}', '#{_m[173064]}', '比期待的要拖沓，导致同去的薛老师快要睡过去，我却是从中间就开始哭，因为一直都很受不了传统和现代对抗的问题，无论哪个行业。感谢最后结局虽然指出了文化局这个方向但没有给出一个明确的答案，让传统不至于以怜悯结尾。称赞的是小孩演的比大人好，不满是没有用方言拍。20160506', 5, '2016-5-17 0:48:00', '2016-5-17 0:48:00'),
('#{_u[60%_ul]}', '#{_m[173064]}', '还不错，第一次进电影院支持国产艺术片，没有想象中那么好看，故事讲得还不错', 4, '2016-5-17 0:36:09', '2016-5-17 0:36:09'),
('#{_u[61%_ul]}', '#{_m[173064]}', '老一辈教科书般的电影，拍摄手法叙事老套平庸，除了对导演的尊敬之情，电影真的无趣，喽！', 3, '2016-5-17 0:31:28', '2016-5-17 0:31:28'),
('#{_u[62%_ul]}', '#{_m[173064]}', '不觉得好看', 4, '2016-5-17 0:16:25', '2016-5-17 0:16:25'),
('#{_u[63%_ul]}', '#{_m[173064]}', '不觉得好看啊', 4, '2016-5-17 0:16:09', '2016-5-17 0:16:09'),
('#{_u[64%_ul]}', '#{_m[173064]}', '自然朴实，对艺术的热爱坚守让人感动敬仰，用生命演绎艺术，捍卫艺术的尊严……', 4, '2016-5-17 0:08:10', '2016-5-17 0:08:10'),
('#{_u[65%_ul]}', '#{_m[173064]}', '好久没有看过让人感动和走心的国产电影了，百鸟朝凤是第一部。不靠光影声色特技，没有为吸睛而刻意做作、讨好、媚俗……。行云流水般自然朴实的叙述，很多时候是无声的叙述，而情怀从荧屏里缓缓流淌进我们的心里。', 3, '2016-5-17 0:06:31', '2016-5-17 0:06:31'),
('#{_u[66%_ul]}', '#{_m[173064]}', '好电影，但没有达到震撼人心的地步。该保留该传承的东西都被这个浮躁的金钱社会彻底破坏完了。没有泪点，有的只是压抑和叹息。', 3, '2016-5-16 23:58:28', '2016-5-16 23:58:28'),
('#{_u[67%_ul]}', '#{_m[173064]}', '良心之作 内心还有执着，还有追求的人不要错过。', 3, '2016-5-16 23:21:16', '2016-5-16 23:21:16'),
('#{_u[68%_ul]}', '#{_m[173064]}', '看多了美国大片，已经厌倦了。这个片子让人眼前一亮。', 5, '2016-5-16 23:16:08', '2016-5-16 23:16:08'),
('#{_u[69%_ul]}', '#{_m[173064]}', '从影片里能看出，民俗艺术没落的原因是市场。本来东方人大多具有崇洋心理，再加上图新鲜、图刺激，就放弃了传统。中国大陆的社会还是个不成熟的社会。不知道未来唢呐曲艺会怎么样。', 4, '2016-5-16 23:07:26', '2016-5-16 23:07:26'),
('#{_u[70%_ul]}', '#{_m[173064]}', '挺让人感动的，也挺搞笑的。挺不错的电影，比其他几部电影实在多了。', 4, '2016-5-16 23:02:16', '2016-5-16 23:02:16'),
('#{_u[71%_ul]}', '#{_m[173064]}', '不枉自揣摩大师想表达的深意~~~~单就自己来说，前两天还在国门外与同胞有感而发~~~其实国人从古自今都不缺乏创造力，缺乏的正是传承之力~~~被传统的思想禁锢，被新兴的文化冲击，呜呼哀哉~', 4, '2016-5-16 22:29:07', '2016-5-16 22:29:07'),
('#{_u[72%_ul]}', '#{_m[173064]}', '值得一看，匠人精神！', 4, '2016-5-16 22:25:26', '2016-5-16 22:25:26'),
('#{_u[73%_ul]}', '#{_m[173064]}', '不过从一个侧面说，一个少年或一个青年绝对不能让父亲决定自己的职业或未来。长辈接触的世界和接受的信息都是旧的，通常不适应社会的发展。', 4, '2016-5-16 22:21:10', '2016-5-16 22:21:10'),
('#{_u[74%_ul]}', '#{_m[173064]}', '男票说，学过乐器的人看这部电影会特别有感触，而我没有学过乐器，照样哭成了狗。感情和文化一样，最重要的是传承二字。', 4, '2016-5-16 22:18:04', '2016-5-16 22:18:04'),
('#{_u[75%_ul]}', '#{_m[173064]}', '这支金唢呐，是我师傅留给我的，它只能吹一首曲子——百鸟朝凤。电影中揭示的问题，适用于诸行，古玩行也不例外，观影过程中憋着尿泪崩。绝活儿，择徒绝、学艺绝、坚持绝、赏者绝，不是钱的问题，所以是绝活儿。《百鸟朝凤》不是想象中的欢乐，而是绵长悲伤的哀乐，一口气吹多个节拍，它只为德高望重者所独享，而吹奏者不仅仅是唢呐匠，也是盖棺定论人。', 4, '2016-5-16 22:11:28', '2016-5-16 22:11:28'),
('#{_u[76%_ul]}', '#{_m[173064]}', '这支金唢呐，是我师傅留给我的，它只能吹一首曲子——百鸟朝凤。电影中揭示的问题，适用于诸行，古玩行也不例外，观影过程中憋着尿泪崩。绝活儿，择徒绝、学艺绝、坚持绝、赏者绝，不是钱的问题，所以是绝活儿。《百鸟朝凤》不是想象中的欢乐，而是绵长悲伤的哀乐，一口气吹多个节拍，它只为德高望重者所独享，而吹奏者不仅仅是唢呐匠，也是盖棺定论人。', 5, '2016-5-16 22:10:27', '2016-5-16 22:10:27'),
('#{_u[77%_ul]}', '#{_m[173064]}', '作为一部故事片，这部电影的节奏比较恰当。故事很写实，让人动容，更让人感到心痛。我想片场的每一位观众都感受到了电影制作方和演职人员想传达的哀愁与惋惜，可是泪水仍留不住西北民俗文化。', 3, '2016-5-16 21:39:36', '2016-5-16 21:39:36'),
('#{_u[78%_ul]}', '#{_m[173064]}', '完成传承不仅应有坚持的精神还应有手段和方法。要不，该消亡的终会消亡', 4, '2016-5-16 21:27:21', '2016-5-16 21:27:21'),
('#{_u[79%_ul]}', '#{_m[173064]}', '观念狭隘，叙事平淡⋯⋯好像到电影台看到老片子似的！就算是为吴天明导演以前的好电影致敬吧！', 3, '2016-5-16 20:42:06', '2016-5-16 20:42:06'),
('#{_u[80%_ul]}', '#{_m[173064]}', '时代变了，有些东西想留也留不住，手艺变成非遗其实就是时代规律。只是处在变革节点上的手艺人无法割舍这份传承。只不过吴天明导演无法割舍的是不知要走向何方的中国电影', 4, '2016-5-16 20:10:04', '2016-5-16 20:10:04'),
('#{_u[81%_ul]}', '#{_m[208220]}', '这个梗多年来已经不知被用了多少次了，但这片子没能拍出新意，表演也不够深入，逻辑上还有些不足，感觉比同期同题材的超脑还不如', 4, '2016-5-17 11:01:42', '2016-5-17 11:01:42'),
('#{_u[82%_ul]}', '#{_m[208220]}', '构思不错，值得一看。', 5, '2016-5-17 10:31:20', '2016-5-17 10:31:20'),
('#{_u[83%_ul]}', '#{_m[208220]}', '怎么跟超脑有点像啊', 4, '2016-5-17 10:02:59', '2016-5-17 10:02:59'),
('#{_u[84%_ul]}', '#{_m[208220]}', '很流畅，不拖沓，挺好看的。至于最后男主角自杀的逻辑问题嘛，就懒得考虑了', 3, '2016-5-16 23:59:23', '2016-5-16 23:59:23'),
('#{_u[85%_ul]}', '#{_m[208220]}', '雷帅哥出演死侍后人气暴涨啊', 4, '2016-5-16 21:03:02', '2016-5-16 21:03:02'),
('#{_u[86%_ul]}', '#{_m[208220]}', '很多逻辑上说不通的地方，一般。', 5, '2016-5-16 19:31:15', '2016-5-16 19:31:15'),
('#{_u[87%_ul]}', '#{_m[208220]}', '可以跟超脑对照着看', 3, '2016-5-16 17:42:54', '2016-5-16 17:42:54'),
('#{_u[88%_ul]}', '#{_m[208220]}', '我的影评为什么被删了？？？？？？', 5, '2016-5-16 16:29:06', '2016-5-16 16:29:06'),
('#{_u[89%_ul]}', '#{_m[208220]}', '把一个人的思想和意识转移到宁一个人的思想和意识里。两个人必须死掉一个，最后受到本人身体的排斥，然后本人又一点一点的回来。挺有意思的。比美国队长3要有意思多了。对于喜欢电影的人来讲，很值得看。', 5, '2016-5-16 16:23:13', '2016-5-16 16:23:13'),
('#{_u[90%_ul]}', '#{_m[208220]}', '取个名字也想搞个大新闻？', 4, '2016-5-16 15:30:37', '2016-5-16 15:30:37'),
('#{_u[91%_ul]}', '#{_m[208220]}', '如果要跟入侵脑细胞相比…就差很远了', 3, '2016-5-16 15:25:17', '2016-5-16 15:25:17'),
('#{_u[92%_ul]}', '#{_m[208220]}', '科幻的题材，温馨的剧情，仿佛当年的高考作文《假如记忆可以移植》', 5, '2016-5-16 14:43:40', '2016-5-16 14:43:40'),
('#{_u[93%_ul]}', '#{_m[208220]}', '科幻的题材，温馨的剧情，仿佛当年的高考作文《假如记忆可以移植》', 4, '2016-5-16 14:42:47', '2016-5-16 14:42:47'),
('#{_u[94%_ul]}', '#{_m[208220]}', '这部电影原来的译名是《非我》，早就出了高清rmvb了，现在居然才上映，还有人买票吗？', 4, '2016-5-16 14:26:54', '2016-5-16 14:26:54'),
('#{_u[95%_ul]}', '#{_m[208220]}', '这部电影原来的译名是《非我》，早就出了高清rmvb了，现在居然才上映，还有人买票吗？', 3, '2016-5-16 14:26:42', '2016-5-16 14:26:42'),
('#{_u[96%_ul]}', '#{_m[208220]}', '科幻题材，开头也挺吸引人，但剧情推进着，竟然成为了富豪的道德慈善场。结尾多少有些温情和感人。说真的，当两个人的记忆存在于一个躯体中，换了你该如何抉择？超脑和幻体一起上，都有雷诺兹，这是要借死侍的东风拉票房吧！', 5, '2016-5-16 14:14:16', '2016-5-16 14:14:16'),
('#{_u[97%_ul]}', '#{_m[208220]}', '为什么Self/less这么简单的片名，非要死皮赖脸的要翻译成搞得很高大上一样呢，不过想想能让我看睡着无数次的电影也只能靠名片赚点票房了，我估计如果片名直接翻译成自我，票房能不能过1000万。太无脑的电影了，各种无脑的情节，在一个机器里转两下，就能换一个肉体，这种电影也能过审上映，简直……呵呵~', 5, '2016-5-16 13:16:15', '2016-5-16 13:16:15'),
('#{_u[98%_ul]}', '#{_m[208220]}', '尼玛，和隔壁的超脑搞搞混了，都有瑞安雷诺兹，我还以为是一个片', 5, '2016-5-16 10:57:40', '2016-5-16 10:57:40'),
('#{_u[99%_ul]}', '#{_m[208220]}', '这片不是早就有下载吗……', 3, '2016-5-16 1:59:56', '2016-5-16 1:59:56'),
('#{_u[100%_ul]}', '#{_m[208220]}', '好困- -这年头拿不出有深度的剧本，又没有足够惊艳的动作场面，对观众来说实在是场灾难。', 5, '2016-5-16 0:41:51', '2016-5-16 0:41:51'),
('#{_u[101%_ul]}', '#{_m[208220]}', '值得推荐的一部电影!', 3, '2016-5-16 0:15:20', '2016-5-16 0:15:20'),
('#{_u[102%_ul]}', '#{_m[208220]}', '创意还是不错。就是情节人为复杂化了。', 5, '2016-5-15 23:36:17', '2016-5-15 23:36:17'),
('#{_u[103%_ul]}', '#{_m[208220]}', '科幻媒介外充满现实主义冲突的犯罪悬疑题材，从安逸生活进入亡命天涯的模式期间，角色背后的故事逐渐明朗，环环相扣的情节发展抛出了人性选择的话题，结局悲喜交加充满温情但一切都显得缺乏严谨般肤浅。', 5, '2016-5-15 23:08:17', '2016-5-15 23:08:17'),
('#{_u[104%_ul]}', '#{_m[208220]}', '开始的金斯利搞得不错，结果后来好端端地给死侍变成爆米花电影了。', 3, '2016-5-15 22:57:14', '2016-5-15 22:57:14'),
('#{_u[105%_ul]}', '#{_m[208220]}', '哎等等!最近上的两部换脑子的片里都有贱贱是么(°Д°)ﾉ!隔壁超脑也是。。。', 4, '2016-5-15 22:10:52', '2016-5-15 22:10:52'),
('#{_u[106%_ul]}', '#{_m[208220]}', '有思考，有人性', 5, '2016-5-15 21:14:38', '2016-5-15 21:14:38'),
('#{_u[107%_ul]}', '#{_m[208220]}', '《幻体：续命游戏》的科幻概念显然不能让影迷感觉新鲜，他们已经在《第六日》等经典科幻电影中熟悉了类似的套路，而尚且及格的零星动作戏根本不能让观众对电影满意。这部电影的剧情其实颇有几分看点，也拥有一个挖掘人性的内核，只可惜最后呈现出来的是一杯不凉不热的温吞水。', 5, '2016-5-15 19:37:51', '2016-5-15 19:37:51'),
('#{_u[108%_ul]}', '#{_m[220890]}', '电影很好看！', 3, '2016-5-17 11:12:27', '2016-5-17 11:12:27'),
('#{_u[109%_ul]}', '#{_m[220890]}', '无聊爆了', 4, '2016-5-17 10:41:58', '2016-5-17 10:41:58'),
('#{_u[110%_ul]}', '#{_m[220890]}', '挺好看', 4, '2016-5-17 3:48:44', '2016-5-17 3:48:44'),
('#{_u[111%_ul]}', '#{_m[220890]}', '可能并谈不上什么剧情，但却能感觉到故事的丰满。相信奶奶是大家公认的演技NO.1', 4, '2016-5-17 0:35:00', '2016-5-17 0:35:00'),
('#{_u[112%_ul]}', '#{_m[220890]}', '老太太演的最好', 3, '2016-5-16 22:57:05', '2016-5-16 22:57:05'),
('#{_u[113%_ul]}', '#{_m[220890]}', '少有的温情，有浪漫主义幻想的味道', 3, '2016-5-16 21:40:18', '2016-5-16 21:40:18'),
('#{_u[114%_ul]}', '#{_m[220890]}', '很感人', 4, '2016-5-16 19:05:05', '2016-5-16 19:05:05'),
('#{_u[115%_ul]}', '#{_m[220890]}', '平平淡淡的一部电影，但是有笑点也有泪点。感觉爷爷奶奶才是主角啊 哈哈哈', 3, '2016-5-16 17:46:01', '2016-5-16 17:46:01'),
('#{_u[116%_ul]}', '#{_m[220890]}', '你眼里的我是什么样的？是否和我自己的认知一样？这不是止一部爱情电影，还有亲情，乡情。坦白讲，虽沿用上一部的名字只是个噱头，但故事内容比上部丰富很多。', 5, '2016-5-16 17:01:20', '2016-5-16 17:01:20'),
('#{_u[117%_ul]}', '#{_m[220890]}', '爱既然可以做了，那谁还去谈啊？伤了多少单身狗。', 5, '2016-5-16 16:10:53', '2016-5-16 16:10:53'),
('#{_u[118%_ul]}', '#{_m[220890]}', '不错是不错，遗憾的是显示有情侣座，却没找到，怎的看法。', 5, '2016-5-16 15:46:20', '2016-5-16 15:46:20'),
('#{_u[119%_ul]}', '#{_m[220890]}', '没有第一集好看', 4, '2016-5-16 15:25:54', '2016-5-16 15:25:54'),
('#{_u[120%_ul]}', '#{_m[220890]}', '电影的内核与女神的长相差太远了', 4, '2016-5-16 14:44:40', '2016-5-16 14:44:40'),
('#{_u[121%_ul]}', '#{_m[220890]}', '还行吧，觉得演技最好就是奶奶', 4, '2016-5-16 13:14:13', '2016-5-16 13:14:13'),
('#{_u[122%_ul]}', '#{_m[220890]}', '还有水军存在？真不要脸，这部片子并没有第一部好看，与其说是《北京遇上西雅图》不如是《澳门遇到加州》，根本没西雅图和北京什么事，但这是商业手段，没办法。故事里两个主人公都在幻想，隔空对话，分分钟出戏。因为一本书和几封信改变了一个赌场公关，逻辑感有些牵强，知识就是力量也不能达到这个地步。这部影片未免有些冗长，不如第一部精简干练，繁琐的剧情让人昏昏欲睡。我也给水军拉拉分，真心的。', 3, '2016-5-16 12:43:04', '2016-5-16 12:43:04'),
('#{_u[123%_ul]}', '#{_m[220890]}', '还有水军存在？真不要脸，这部片子并没有第一部好看，与其说是《北京遇上西雅图》不如是《澳门遇到加州》，根本没西雅图和北京什么事，但这是商业手段，没办法。故事里两个主人公都在幻想，隔空对话，分分钟出戏。因为一本书和几封信改变了一个赌场公关，逻辑感有些牵强，知识就是力量也不能达到这个地步。这部影片未免有些冗长，不如第一部精简干练，繁琐的剧情让人昏昏欲睡。我也给水军拉拉分，真心的。', 3, '2016-5-16 12:43:02', '2016-5-16 12:43:02'),
('#{_u[124%_ul]}', '#{_m[220890]}', '想象中的最后一秒才相遇。。', 4, '2016-5-16 11:04:51', '2016-5-16 11:04:51'),
('#{_u[125%_ul]}', '#{_m[220890]}', '其实还可以', 3, '2016-5-16 11:00:34', '2016-5-16 11:00:34'),
('#{_u[126%_ul]}', '#{_m[220890]}', '现在已经不是我想你就翻越千山万岭来看你的世界了，这情书的故事看得太多。', 5, '2016-5-16 9:33:07', '2016-5-16 9:33:07'),
('#{_u[127%_ul]}', '#{_m[220890]}', '第一部是在国内看的，好久以前了', 4, '2016-5-16 6:04:47', '2016-5-16 6:04:47'),
('#{_u[128%_ul]}', '#{_m[220890]}', '感人', 3, '2016-5-16 1:19:57', '2016-5-16 1:19:57'),
('#{_u[129%_ul]}', '#{_m[220890]}', '两位老演员的表演太精彩了！有没有吴秀波和汤唯的感情戏，感觉其实没差。', 4, '2016-5-16 0:35:06', '2016-5-16 0:35:06'),
('#{_u[130%_ul]}', '#{_m[220890]}', '深夜看完，想起一个人，一个在这个com遇见的，却未曾谋面的。我只记得相互寄过零食，答应过给她寄明信片，自己却傻傻的丢失了所有。你在南京过的好吗？是否找到你爱的书屋里那一席座位了？我想，有机会的话，我把欠你的补上', 4, '2016-5-16 0:18:35', '2016-5-16 0:18:35'),
('#{_u[131%_ul]}', '#{_m[220890]}', '太没有逻辑了，每每出戏', 4, '2016-5-16 0:10:07', '2016-5-16 0:10:07'),
('#{_u[132%_ul]}', '#{_m[220890]}', '蛮走心的', 3, '2016-5-15 23:37:10', '2016-5-15 23:37:10'),
('#{_u[133%_ul]}', '#{_m[220890]}', '完美的剧情，很棒', 3, '2016-5-15 22:30:42', '2016-5-15 22:30:42'),
('#{_u[134%_ul]}', '#{_m[220890]}', '很喜欢的剧情，爱吴秀波', 4, '2016-5-15 22:30:16', '2016-5-15 22:30:16'),
('#{_u[135%_ul]}', '#{_m[223149]}', '看到最后陈柏霖吻蒋雯丽那镜头彻底凌乱了', 5, '2016-5-16 23:00:34', '2016-5-16 23:00:34'),
('#{_u[136%_ul]}', '#{_m[223149]}', '简直太难看了', 5, '2016-5-16 16:33:13', '2016-5-16 16:33:13'),
('#{_u[137%_ul]}', '#{_m[223149]}', '这是一部你能感受到镜头所散发出荷尔蒙的电影，也许你觉得很多镜头无意义，但我倒是觉得那些镜头才是电影最有魔力的地方。这部影片节奏很慢，拍的很隐忍，许多剧情与情感需要观众在观影中自我补充，如果你喜欢快餐式短平快的电影，那这部影片的确不适合！', 4, '2016-5-16 14:56:41', '2016-5-16 14:56:41'),
('#{_u[138%_ul]}', '#{_m[223149]}', '不忍吐槽，但想想真的忍不住吐槽……但是这三部片子质量真的一般。第一部和第三部还算不错，但中间那部实在是太学生气了。虽然都是讲述“相忘于江湖”的故事，但每一部的情感张力都没有营造充分；而且导演不知道是不是故意将视听形式放缓，导致剧情&节奏拖沓，尤其在没有文本支撑的情况下，形式感也变得空洞无味……', 3, '2016-5-16 13:59:29', '2016-5-16 13:59:29'),
('#{_u[139%_ul]}', '#{_m[223149]}', '整部电影想表达的感情太多，但拍的太淡，太隐忍。三个故事里除了陈柏霖与蒋雯丽的一吻，其余的所有感情，无论是父子情，兄弟情还是师生情，都表现的很模糊，爱或恨都没有说透。里面的感情很边缘化，并不主流，有代入感的人自然会在电影里找到自己的影子，但没有相关情感体验的观众必然会觉得莫名其妙。', 4, '2016-5-16 11:21:13', '2016-5-16 11:21:13'),
('#{_u[140%_ul]}', '#{_m[223149]}', '整部电影 一大堆广东对话 居然没有字幕 让人怎么看？？？制作太粗燥', 3, '2016-5-16 11:17:38', '2016-5-16 11:17:38'),
('#{_u[141%_ul]}', '#{_m[223149]}', '很不好看', 4, '2016-5-16 7:34:27', '2016-5-16 7:34:27'),
('#{_u[142%_ul]}', '#{_m[223149]}', '超级没意思的电影', 3, '2016-5-16 7:34:11', '2016-5-16 7:34:11'),
('#{_u[143%_ul]}', '#{_m[223149]}', '真的非常难看', 3, '2016-5-16 7:33:45', '2016-5-16 7:33:45'),
('#{_u[144%_ul]}', '#{_m[223149]}', '表达的主题还是挺不错的，生活中有共鸣。个人觉得表演略显生涩，剪切有点凌乱。作为第二部导的电影，还是不错的，看好忻钰坤导演。', 4, '2016-5-15 22:49:58', '2016-5-15 22:49:58'),
('#{_u[145%_ul]}', '#{_m[223149]}', '这种风格我还挺喜欢的', 3, '2016-5-15 22:31:49', '2016-5-15 22:31:49'),
('#{_u[146%_ul]}', '#{_m[223149]}', '经典的0分作文创作方式', 5, '2016-5-15 21:55:01', '2016-5-15 21:55:01'),
('#{_u[147%_ul]}', '#{_m[223149]}', '篇章结构、空镜头过渡、情节留白、故事间藕断丝连的延续感让影片像充满情绪的散文。不知是多位创作者参与的客观原因还是创作者在刻意营造情绪转折，“背影”和“湖畔”的风格还蛮统一的，惨白，忧郁，到了“再见”却一下子注入了与前面隔离的轻快感，略显突兀。比较喜欢前两个故事，在窥视中望而不得，在告别中思忆过往。最喜欢的一个镜头是陈经理跟着父亲下了公交车后来到公园因偶遇司机而欲步又止，他在前景处暗暗回首，父亲走向纵深，背影愈发模糊。', 3, '2016-5-15 18:59:51', '2016-5-15 18:59:51'),
('#{_u[148%_ul]}', '#{_m[223149]}', '让人回味，很不错。', 3, '2016-5-15 16:11:24', '2016-5-15 16:11:24'),
('#{_u[149%_ul]}', '#{_m[223149]}', '第一段讲父子，故事很一般。二段讲激情，还行，但是感觉好窒息。。现实和过去相穿插，好好演说不定更好。逼格太高内容不行。三段正在看，大概是主角和他老师之间的不伦不类的关系。反正整场看下来很乱。同学叫我来看结果他睡着了。。我是想看百鸟朝凤的！！！', 3, '2016-5-15 15:44:46', '2016-5-15 15:44:46'),
('#{_u[150%_ul]}', '#{_m[223149]}', '也许是我太low了，实在是看不下去', 5, '2016-5-15 14:20:20', '2016-5-15 14:20:20'),
('#{_u[151%_ul]}', '#{_m[223149]}', '故事还可以，就是三个故事有些看的没头没尾的，演员都还不错', 3, '2016-5-15 9:59:08', '2016-5-15 9:59:08'),
('#{_u[152%_ul]}', '#{_m[223149]}', '亲情、友情、爱情串联在一个主题下的三个情感故事，陈柏霖分饰三角演绎不同人生的分离滋味。三个导演都是以极其缓慢的节奏来捕捉人物角色的表情状态，通过细致的表演来传达隐晦的深情，满是压抑的氛围展现结局的痛楚……漫长煎熬体会三段一反常态的感情悲剧，期间难免枯燥乏味。', 5, '2016-5-14 23:37:43', '2016-5-14 23:37:43'),
('#{_u[153%_ul]}', '#{_m[223149]}', '未评分', 4, '2016-5-14 23:30:28', '2016-5-14 23:30:28'),
('#{_u[154%_ul]}', '#{_m[223149]}', '每个人生命里都会因为一些原因选择躲避一些人，可是再遇上的时候，是冰释前嫌还是再续前缘？', 4, '2016-5-14 22:45:42', '2016-5-14 22:45:42'),
('#{_u[155%_ul]}', '#{_m[223149]}', '很久没有这么强烈地感受到监制的存在了，他居然能将来自三个不同国家的导演聚拢在一个大主题下分别创作，重点是处理得就像一个人执导，令陈柏霖分裂在三个平行空间里，都遭受着无奈的分别。影片以非一般人所欣喜的慢节奏来表述情感的晦暗，谨观！', 3, '2016-5-14 22:07:13', '2016-5-14 22:07:13'),
('#{_u[156%_ul]}', '#{_m[223149]}', '真的也许值得每一个人；深思……好好去看……', 5, '2016-5-14 21:50:46', '2016-5-14 21:50:46'),
('#{_u[157%_ul]}', '#{_m[223149]}', '导演想刻画的东西都挺浅薄的隐晦出来了，是这片的文艺！', 3, '2016-5-14 21:24:47', '2016-5-14 21:24:47'),
('#{_u[158%_ul]}', '#{_m[223149]}', '再见！再也不见！', 4, '2016-5-14 21:16:51', '2016-5-14 21:16:51'),
('#{_u[159%_ul]}', '#{_m[223149]}', '看海报真没想到是这么文艺的电影（海报太low），何以见得？你要是跟我看的同一场你就会看到结束时一个糙老爷们骂骂咧咧说是有史以来最难看的电影走出放映厅，你说文艺不文艺？导演都没听说过，但是监制陈哲艺足以说明一切了。都挺好的，美中不足是三场戏，陈柏霖耗在宾馆里面的时间非常多……', 5, '2016-5-14 20:42:10', '2016-5-14 20:42:10'),
('#{_u[160%_ul]}', '#{_m[223149]}', '几个片段散开了', 5, '2016-5-14 19:46:55', '2016-5-14 19:46:55'),
('#{_u[161%_ul]}', '#{_m[223149]}', '[cp][星星][星星][星星][星星]，三个故事，一个比一个压抑。亲情、友情、爱情，与谁都相关。陈柏霖分饰三角，恰好加强了观众的代入感。有多少再见，说了就是永远，没说更是苦不堪言。有大仁哥在的文艺片总不会难看，压轴的蒋雯丽气场十足，孙燕姿演唱的片尾曲更是恰到好处。', 5, '2016-5-14 18:14:15', '2016-5-14 18:14:15'),
('#{_u[162%_ul]}', '#{_m[228486]}', '通过这个片我看到国产恐怖片可以烂到没有底线', 5, '2016-5-16 11:40:56', '2016-5-16 11:40:56'),
('#{_u[163%_ul]}', '#{_m[228486]}', '大部分国产惊悚片~本质都是自黑智商的喜剧片~', 4, '2016-5-14 9:23:47', '2016-5-14 9:23:47'),
('#{_u[164%_ul]}', '#{_m[228486]}', '笔仙这个梗永不过时', 5, '2016-5-13 21:53:36', '2016-5-13 21:53:36'),
('#{_u[165%_ul]}', '#{_m[228486]}', '话说这是第几部笔仙了？？？？', 5, '2016-5-13 17:33:17', '2016-5-13 17:33:17'),
('#{_u[166%_ul]}', '#{_m[228486]}', '水军好多', 3, '2016-5-13 17:31:50', '2016-5-13 17:31:50'),
('#{_u[167%_ul]}', '#{_m[228486]}', '进来看看water！', 3, '2016-5-13 13:00:05', '2016-5-13 13:00:05'),
('#{_u[168%_ul]}', '#{_m[228486]}', '这恐怖片挺吓人的，，不过就喜欢看哈哈', 4, '2016-5-13 11:19:34', '2016-5-13 11:19:34'),
('#{_u[169%_ul]}', '#{_m[228486]}', '确实不错，克制又不失悬疑气氛', 5, '2016-5-13 11:17:33', '2016-5-13 11:17:33'),
('#{_u[170%_ul]}', '#{_m[228486]}', '鬼神不可怕，人心才是最可怕的', 4, '2016-5-13 11:15:58', '2016-5-13 11:15:58'),
('#{_u[171%_ul]}', '#{_m[228486]}', '有一种说不出的神秘，气氛做的太好了，虽然有些地方推敲不同，但可以算是我看过的近代华语恐怖片里做得最精致的了，', 3, '2016-5-13 11:15:29', '2016-5-13 11:15:29'),
('#{_u[172%_ul]}', '#{_m[228486]}', '挺好，架构细节很有新意', 4, '2016-5-13 11:14:09', '2016-5-13 11:14:09'),
('#{_u[173%_ul]}', '#{_m[228486]}', '这部电影好看在拍得很接地气，没给高分是因为后面故事解释的有点混乱，不解真相。', 5, '2016-5-13 11:13:07', '2016-5-13 11:13:07'),
('#{_u[174%_ul]}', '#{_m[228486]}', '无论视觉或是氛围上，都绝对上乘。', 3, '2016-5-13 11:09:16', '2016-5-13 11:09:16'),
('#{_u[175%_ul]}', '#{_m[228486]}', '悬疑的剧情和精良的表演，血腥和恐怖氛围的营造也不失水准，', 4, '2016-5-13 10:31:17', '2016-5-13 10:31:17'),
('#{_u[176%_ul]}', '#{_m[228486]}', '不错，看得惊心动魄', 4, '2016-5-13 10:29:39', '2016-5-13 10:29:39'),
('#{_u[177%_ul]}', '#{_m[228486]}', '以为是恐怖其实只能算是惊悚片吧，血腥镜头的倒是吓了我一跳.', 5, '2016-5-13 10:26:00', '2016-5-13 10:26:00'),
('#{_u[178%_ul]}', '#{_m[228486]}', '故事还可以，最后结局达到了逆转效果但是比较生硬', 5, '2016-5-13 10:22:01', '2016-5-13 10:22:01'),
('#{_u[179%_ul]}', '#{_m[228486]}', '相对国内一众只会用突然的声效黑暗的画面和故弄玄虚来唬人的恐怖片来说，这部着实不错了。', 4, '2016-5-13 10:19:55', '2016-5-13 10:19:55'),
('#{_u[180%_ul]}', '#{_m[228486]}', '看了预告片，像个三级片……', 3, '2016-4-1 22:05:01', '2016-4-1 22:05:01'),
('#{_u[181%_ul]}', '#{_m[228486]}', '哈哈哈哈哈哈哈，国内可以不用拿这些什么什么鬼出来吓人了吗，我3岁的弟弟都不怕', 5, '2016-3-7 21:27:17', '2016-3-7 21:27:17'),
('#{_u[182%_ul]}', '#{_m[228486]}', '笔仙好忙！', 4, '2016-2-7 13:41:16', '2016-2-7 13:41:16'),
('#{_u[183%_ul]}', '#{_m[228486]}', '到底有几部笔仙。。。我记不太清了', 5, '2015-12-29 14:06:03', '2015-12-29 14:06:03'),
('#{_u[184%_ul]}', '#{_m[228486]}', '好吧，我以为《笔仙3》上映后，应该不会再用笔仙这个梗了吧～～好吧，是我想多了', 3, '2015-11-18 11:36:03', '2015-11-18 11:36:03'),
('#{_u[185%_ul]}', '#{_m[228486]}', '好吧，我以为《笔仙3》上映后，应该不会再用笔仙这个梗了吧～～好吧，是我想多了', 5, '2015-11-18 11:35:05', '2015-11-18 11:35:05'),
('#{_u[186%_ul]}', '#{_m[228486]}', '怎么又是笔仙😓', 5, '2015-11-4 21:26:56', '2015-11-4 21:26:56'),
('#{_u[187%_ul]}', '#{_m[228486]}', '童年阴影。', 4, '2015-10-22 18:55:04', '2015-10-22 18:55:04'),
('#{_u[188%_ul]}', '#{_m[232777]}', '一般般吧，陪小盆友看的', 3, '2016-5-15 18:42:06', '2016-5-15 18:42:06'),
('#{_u[189%_ul]}', '#{_m[232777]}', '只剩下呵呵了', 3, '2016-5-5 17:05:43', '2016-5-5 17:05:43'),
('#{_u[190%_ul]}', '#{_m[232777]}', '孩子都看不下去', 3, '2016-5-5 8:58:56', '2016-5-5 8:58:56'),
('#{_u[191%_ul]}', '#{_m[232777]}', '不错，带孩子看的', 3, '2016-5-4 21:35:52', '2016-5-4 21:35:52'),
('#{_u[192%_ul]}', '#{_m[232777]}', '片方是不是傻？这种低幼的动画片你还请水军？水军昧着良心的在那胡说八道，小朋友们也不会去看，也看不懂啊。要是实在有钱没地方花了，多投入到影片制作中，别整天在这糊弄人！', 3, '2016-5-4 9:15:40', '2016-5-4 9:15:40'),
('#{_u[193%_ul]}', '#{_m[232777]}', '猝不及防，+1s', 3, '2016-5-2 13:08:27', '2016-5-2 13:08:27'),
('#{_u[194%_ul]}', '#{_m[232777]}', '我就静静的看你们刷评分', 3, '2016-5-1 22:57:39', '2016-5-1 22:57:39'),
('#{_u[195%_ul]}', '#{_m[232777]}', '没看完，孩子都看不下去', 5, '2016-5-1 21:47:11', '2016-5-1 21:47:11'),
('#{_u[196%_ul]}', '#{_m[232777]}', '千万别去看，否则影响智商', 5, '2016-5-1 17:45:53', '2016-5-1 17:45:53'),
('#{_u[197%_ul]}', '#{_m[232777]}', '不怎么样！', 3, '2016-5-1 16:31:18', '2016-5-1 16:31:18'),
('#{_u[198%_ul]}', '#{_m[232777]}', '给老婆和女儿买的票~看完老婆直接打电话告诉我，超级没意思，差点睡着了，女儿胆小，害怕的一直抱着老婆的胳膊~只能给3分~不能再多了~', 5, '2016-5-1 2:00:32', '2016-5-1 2:00:32'),
('#{_u[199%_ul]}', '#{_m[232777]}', '目前为止最难看煎熬的电影，孩子都看不下去', 4, '2016-4-30 18:46:53', '2016-4-30 18:46:53'),
('#{_u[200%_ul]}', '#{_m[232777]}', '公然膜蛤？', 3, '2016-4-30 13:41:06', '2016-4-30 13:41:06'),
('#{_u[201%_ul]}', '#{_m[232777]}', '说好看的都是托么？正常电影院小孩都在跑来跑去，大人基本都在玩手机！画质粗糙不堪，故事情节简单单薄！差评！', 3, '2016-4-30 12:02:13', '2016-4-30 12:02:13'),
('#{_u[202%_ul]}', '#{_m[232777]}', '这部电影可以让孩童见萌、成人见智，在制作、故事、内涵等各方面都登峰造极的一部绿色护眼3D动画电影。', 5, '2016-4-29 17:16:38', '2016-4-29 17:16:38'),
('#{_u[203%_ul]}', '#{_m[232777]}', '对于这个动画我只有一个单词来形容：充实！有剧情有立意。见到那么多神态逼真的小青蛙们就觉得好赞啊！', 4, '2016-4-29 17:16:16', '2016-4-29 17:16:16'),
('#{_u[204%_ul]}', '#{_m[232777]}', '影片整体的剧情好笑到哭， 萌到爆炸， 搞笑、温情、励志、冒险、隐喻全都有，是一部绿色健康的精品动画电影。', 3, '2016-4-29 17:15:48', '2016-4-29 17:15:48'),
('#{_u[205%_ul]}', '#{_m[232777]}', '国产动画终于不低龄了，绿色护眼3D效果对孩子特别健康，可见片方此次制作也是很走心。', 5, '2016-4-29 17:15:34', '2016-4-29 17:15:34'),
('#{_u[206%_ul]}', '#{_m[232777]}', '奇思妙想的故事，跌宕起伏的剧情，个性鲜明的角色设计配合高超的画风让整部片子看起来都非常精彩！', 5, '2016-4-29 17:15:02', '2016-4-29 17:15:02'),
('#{_u[207%_ul]}', '#{_m[232777]}', '影片好看炸了！画面美腻，细节丰富，把各种动物搞笑的特质放大再放大，更厉害的是，对自然环境的隐喻虽然引人思考，但内涵依旧是正能量爆棚。?', 5, '2016-4-29 17:14:51', '2016-4-29 17:14:51'),
('#{_u[208%_ul]}', '#{_m[232777]}', '给五星的动画电影真的不多！剧情没有多复杂 可就是很好看！青蛙小黑蒙萌的不要不要的！新推出的护眼3D效果更是标新立异，绿色健康。', 4, '2016-4-29 17:14:38', '2016-4-29 17:14:38'),
('#{_u[209%_ul]}', '#{_m[232777]}', '这是近五年我看过最好看的动画片。立意，细节，埋梗，配乐，剧情，角色，寓意都非常完美！比很多正片电影都好看。', 3, '2016-4-29 17:14:27', '2016-4-29 17:14:27'),
('#{_u[210%_ul]}', '#{_m[232777]}', '影片太好看了 脑洞大到银河系 ，真不愧是《小蝌蚪找妈妈》成长篇，小黑蒙找妈妈也是温情无限，泪点十足，对于大人和孩子都是寓意十足的。', 3, '2016-4-29 17:14:26', '2016-4-29 17:14:26'),
('#{_u[211%_ul]}', '#{_m[232777]}', '不可否认的是这部影片是国产动画制作非常精良的3D动画电影，节奏特别好，完全没有像以前一样被反派或一些细枝末节莫名其妙地拖累。', 5, '2016-4-29 17:14:09', '2016-4-29 17:14:09'),
('#{_u[212%_ul]}', '#{_m[232777]}', '这个电影的厉害之处，就是集绿色、冒险、诙谐、勇敢于一身，适合全年龄段观影人群，不但让所有人都看见了萌，也引发了所有人的反思。', 4, '2016-4-29 17:13:59', '2016-4-29 17:13:59'),
('#{_u[213%_ul]}', '#{_m[232777]}', '影片的整体风格还是明快而积极向上的。一点也不低幼，尤其是护眼3D效果对孩子很健康，已经很久没有动画片让我看得想哭了，强烈推荐。', 4, '2016-4-29 17:13:47', '2016-4-29 17:13:47'),
('#{_u[214%_ul]}', '#{_m[232777]}', '影片超出预期太多，虽然刚开始看的时候觉得很低幼，但是慢慢地就被感动了！小黑蒙很勇敢，孩子也非常喜欢，最好大结局都哭了。', 4, '2016-4-29 17:13:39', '2016-4-29 17:13:39'),
('#{_u[215%_ul]}', '#{_m[230414]}', '“毁师”很出彩！', 3, '2016-2-2 23:22:12', '2016-2-2 23:22:12'),
('#{_u[216%_ul]}', '#{_m[230414]}', '谎言大爆炸：很好看', 3, '2016-1-23 16:58:08', '2016-1-23 16:58:08'),
('#{_u[217%_ul]}', '#{_m[230414]}', '只能说现在水军是必要的宣传手段', 5, '2016-1-16 9:54:01', '2016-1-16 9:54:01'),
('#{_u[218%_ul]}', '#{_m[230414]}', '专门来讲谎言的电影我还真没怎么见过，期待', 3, '2016-1-14 18:33:00', '2016-1-14 18:33:00'),
('#{_u[219%_ul]}', '#{_m[232566]}', '不好看，没什么意义', 3, '2016-5-2 20:51:11', '2016-5-2 20:51:11'),
('#{_u[220%_ul]}', '#{_m[232566]}', '还行，孩子喜欢，时间有点长', 5, '2016-5-2 14:15:04', '2016-5-2 14:15:04'),
('#{_u[221%_ul]}', '#{_m[232566]}', '这才是国产动画，没看我都知道肯定烂出翔', 5, '2016-5-1 14:55:44', '2016-5-1 14:55:44'),
('#{_u[222%_ul]}', '#{_m[232566]}', '很一般', 5, '2016-5-1 14:15:08', '2016-5-1 14:15:08'),
('#{_u[223%_ul]}', '#{_m[232566]}', '中国版大雄遇到哆啦A梦', 5, '2016-5-1 11:47:00', '2016-5-1 11:47:00'),
('#{_u[224%_ul]}', '#{_m[232566]}', '女儿三岁半，看了二十分钟就不看了，不过我觉得也不怎么好看，觉着还没大头儿子好看', 3, '2016-4-30 21:26:53', '2016-4-30 21:26:53'),
('#{_u[225%_ul]}', '#{_m[232566]}', '恩，这才像国产动画嘛！', 4, '2016-4-30 18:39:44', '2016-4-30 18:39:44'),
('#{_u[226%_ul]}', '#{_m[232566]}', '拍的有三点，一骗钱二白痴三洗黑钱', 4, '2016-4-29 8:46:47', '2016-4-29 8:46:47'),
('#{_u[227%_ul]}', '#{_m[232566]}', '电影特意借用了70后、80后父母都熟悉的老动画片《神笔马良》中的神笔和《多啦A梦》中的时光门让马小乐游泳来到了二十多年前的北京郊区。《马小乐》就是考虑到了父母们的怀旧情怀，将“父子同龄”“时光错位”的桥段放到了本片中，可以说是一个童真版的《回到未来》。比马小乐还小的父亲胆小文弱，不仅叫自己未来的儿子是“大哥哥”，还处处依靠未来儿子来壮胆；马小乐更是纠结坏了，一次次惊呼“您怎么能叫我哥哥呢？”“我是您儿子啊。”', 5, '2016-4-16 9:54:45', '2016-4-16 9:54:45'),
('#{_u[228%_ul]}', '#{_m[232566]}', '电影特意借用了70后、80后父母都熟悉的老动画片《神笔马良》中的神笔和《多啦A梦》中的时光门让马小乐游泳来到了二十多年前的北京郊区。《马小乐》就是考虑到了父母们的怀旧情怀，将“父子同龄”“时光错位”的桥段放到了本片中，可以说是一个童真版的《回到未来》。比马小乐还小的父亲胆小文弱，不仅叫自己未来的儿子是“大哥哥”，还处处依靠未来儿子来壮胆；马小乐更是纠结坏了，一次次惊呼“您怎么能叫我哥哥呢？”“我是您儿子啊。”', 4, '2016-4-16 9:53:55', '2016-4-16 9:53:55'),
('#{_u[229%_ul]}', '#{_m[232566]}', '电影特意借用了70后、80后父母都熟悉的老动画片《神笔马良》中的神笔和《多啦A梦》中的时光门让马小乐游泳来到了二十多年前的北京郊区。《马小乐》就是考虑到了父母们的怀旧情怀，将“父子同龄”“时光错位”的桥段放到了本片中，可以说是一个童真版的《回到未来》。比马小乐还小的父亲胆小文弱，不仅叫自己未来的儿子是“大哥哥”，还处处依靠未来儿子来壮胆；马小乐更是纠结坏了，一次次惊呼“您怎么能叫我哥哥呢？”“我是您儿子啊。”', 4, '2016-4-16 9:53:30', '2016-4-16 9:53:30'),
('#{_u[230%_ul]}', '#{_m[233442]}', '拍的什么鬼！这破片子唯一能拿的出手的就是配乐了，看到片尾字幕音乐设计是杜笃之瞬间觉得导演是何德何能。剧情是被导演你吃了吗！秦海璐你可是拿过金马的人诶，你演技都用来演台湾腔了吼？！', 3, '2016-5-14 20:25:35', '2016-5-14 20:25:35'),
('#{_u[231%_ul]}', '#{_m[233442]}', '祝以这种脱离现实的电影以后越来越少！', 4, '2016-4-22 0:35:14', '2016-4-22 0:35:14'),
('#{_u[232%_ul]}', '#{_m[232258]}', '孩子看着好就行！', 3, '2016-5-12 14:32:53', '2016-5-12 14:32:53'),
('#{_u[233%_ul]}', '#{_m[232258]}', '一般般', 5, '2016-5-4 19:09:10', '2016-5-4 19:09:10'),
('#{_u[234%_ul]}', '#{_m[232258]}', '还可以。', 5, '2016-5-2 15:07:45', '2016-5-2 15:07:45'),
('#{_u[235%_ul]}', '#{_m[232258]}', '不会再看国产动画片，纯粹让人变得弱智。', 4, '2016-5-2 13:55:03', '2016-5-2 13:55:03'),
('#{_u[236%_ul]}', '#{_m[232258]}', '真的烂，不知怎么拍出来的，人物制作还可以，情节不知是怎么编的，小学生也能写出这种情节', 4, '2016-4-30 20:51:55', '2016-4-30 20:51:55'),
('#{_u[237%_ul]}', '#{_m[232258]}', '国产电影真是要多烂就有多烂。那故事情节编的杠杠的，幼儿园毕业了吗？', 4, '2016-4-30 13:06:44', '2016-4-30 13:06:44'),
('#{_u[238%_ul]}', '#{_m[232258]}', '拍的有三点，一骗钱二白痴三洗黑钱', 4, '2016-4-29 8:47:02', '2016-4-29 8:47:02'),
('#{_u[239%_ul]}', '#{_m[232258]}', '居然不是阿里巴巴投资的，，，，', 5, '2016-3-13 16:25:11', '2016-3-13 16:25:11'),
('#{_u[240%_ul]}', '#{_m[221703]}', '情节不谈了,我是冲着林心如去看的,她和杨佑宁的cp造型放在民国时代还是很登对的，画面也有一些诡异，热闹，复古。该有的民国元素都有，末尾的主题曲貌似还挺配得上电影主题的。喜欢这种风格的可以看一下。', 5, '2016-5-16 19:37:22', '2016-5-16 19:37:22'),
('#{_u[241%_ul]}', '#{_m[221703]}', '我竟然看完了~京城81姊妹篇？', 4, '2016-5-15 11:50:26', '2016-5-15 11:50:26'),
('#{_u[242%_ul]}', '#{_m[221703]}', '除了女主角，也没什么了……', 5, '2016-5-14 16:15:30', '2016-5-14 16:15:30'),
('#{_u[243%_ul]}', '#{_m[221703]}', '一点也不好看', 3, '2016-5-13 20:18:05', '2016-5-13 20:18:05'),
('#{_u[244%_ul]}', '#{_m[221703]}', '后来才知道为什么中国电影最后都是人在捣鬼了，就是因为不允许有鬼。', 5, '2016-5-12 19:31:22', '2016-5-12 19:31:22'),
('#{_u[245%_ul]}', '#{_m[221703]}', '剧情还不错吧 国产惊悚片就这样了 主要去看心如的', 4, '2016-5-9 7:18:46', '2016-5-9 7:18:46'),
('#{_u[246%_ul]}', '#{_m[221703]}', '还可以。', 4, '2016-5-8 20:19:28', '2016-5-8 20:19:28'),
('#{_u[247%_ul]}', '#{_m[221703]}', '《美国队长3》上映那天看的，电影院只拍了晚上最后一场，进影厅后惊奇的发现，上座率还不低。看来华语电影市场真的需要多样化发展。', 5, '2016-5-8 12:27:48', '2016-5-8 12:27:48'),
('#{_u[248%_ul]}', '#{_m[221703]}', '《美国队长3》上映那天看的，电影院只拍了晚上最后一场，进影厅后惊奇的发现，上座率还不低。看来华语电影市场真的需要多样化发展。', 3, '2016-5-8 12:27:44', '2016-5-8 12:27:44'),
('#{_u[249%_ul]}', '#{_m[221703]}', '孔家杂技班为大帅的儿子祝寿不料意外被人放火，此后剧院闹鬼在内拍摄电影也遇到许多离奇事件，女主为复仇而心力憔悴 ，最终放下心魔寻找属于自己的自由！', 4, '2016-5-7 13:31:50', '2016-5-7 13:31:50'),
('#{_u[250%_ul]}', '#{_m[221703]}', '还不错，人美画面美', 4, '2016-5-7 10:25:33', '2016-5-7 10:25:33'),
('#{_u[251%_ul]}', '#{_m[221703]}', '非常的无聊，国产恐怖片，就那样了', 3, '2016-5-6 9:03:46', '2016-5-6 9:03:46'),
('#{_u[252%_ul]}', '#{_m[221703]}', '除了一贯的美工，迷影情节与讽今台词是意外的亮点。剧作既然扯上《夜半歌声》，大胆套用翻拍也比后半引出杂么一个不痛不痒的蹩脚复仇故事强，简直是对经典的亵渎。', 5, '2016-5-5 19:54:34', '2016-5-5 19:54:34'),
('#{_u[253%_ul]}', '#{_m[221703]}', '剧情老套，没新意！', 3, '2016-5-5 0:53:15', '2016-5-5 0:53:15'),
('#{_u[254%_ul]}', '#{_m[221703]}', '喜欢林心如！故事情节简单，但是也很好看', 4, '2016-5-4 15:17:29', '2016-5-4 15:17:29'),
('#{_u[255%_ul]}', '#{_m[221703]}', '视觉效果挺好的，只是应该是被剪掉很多镜头所以个别地方有些衔接不上的感觉，还有就是 最精彩就是杨佑宁吐槽审片制度的对白，呵呵！', 3, '2016-5-4 12:37:44', '2016-5-4 12:37:44'),
('#{_u[256%_ul]}', '#{_m[221703]}', '免费都不想看…', 4, '2016-5-4 1:44:36', '2016-5-4 1:44:36'),
('#{_u[257%_ul]}', '#{_m[221703]}', '美美美美！为了心如，这就是爱。。。', 4, '2016-5-3 19:53:51', '2016-5-3 19:53:51'),
('#{_u[258%_ul]}', '#{_m[221703]}', '只能说一般般吧！', 4, '2016-5-3 17:19:38', '2016-5-3 17:19:38'),
('#{_u[259%_ul]}', '#{_m[221703]}', '做为一部国产恐怖片来讲，能过审，能过五千万，能有认识明星，能有点剧情，已经很不错了。', 3, '2016-5-3 14:48:30', '2016-5-3 14:48:30'),
('#{_u[260%_ul]}', '#{_m[221703]}', '看过最好的鬼片', 5, '2016-5-3 14:37:03', '2016-5-3 14:37:03'),
('#{_u[261%_ul]}', '#{_m[221703]}', '有多少人知道费利斯这个梗？', 5, '2016-5-3 14:02:09', '2016-5-3 14:02:09'),
('#{_u[262%_ul]}', '#{_m[221703]}', '现在的鬼片…真心没法看了…这个真的只是个爱情片…', 4, '2016-5-3 9:00:32', '2016-5-3 9:00:32'),
('#{_u[263%_ul]}', '#{_m[221703]}', '所谓的“金三角”也有黔驴技穷的时候，难怪此片一直跳档，故事还能看，其他的比如惊悚度一般，表演也毫无新意和突破，与前作（绣花鞋）相比，视效强而氛围差。人物的刻画竟然如此共同地浅尝辄止。', 4, '2016-5-2 23:12:49', '2016-5-2 23:12:49'),
('#{_u[264%_ul]}', '#{_m[221703]}', '比想象中好不少，3D效果也不错，故事悬念也留到了最后！', 5, '2016-5-2 19:49:23', '2016-5-2 19:49:23'),
('#{_u[265%_ul]}', '#{_m[221703]}', '看得快睡着了', 3, '2016-5-2 16:24:58', '2016-5-2 16:24:58'),
('#{_u[266%_ul]}', '#{_m[221703]}', '前面还好好的，后面怎么就转为民国复仇剧了，比较失望👎👎', 4, '2016-5-2 15:09:22', '2016-5-2 15:09:22'),
('#{_u[267%_ul]}', '#{_m[219870]}', '看着看着就吐了。其实仔细想想这片名还算是相对贴切的，都是做梦嘛~这果然是只能出现在中二病阶段的白日梦中的故事。', 5, '2016-5-16 13:01:34', '2016-5-16 13:01:34'),
('#{_u[268%_ul]}', '#{_m[219870]}', '总结老说就是，平庸。闲来无聊时可以一边放着，一边干别的。', 5, '2016-5-16 0:46:23', '2016-5-16 0:46:23'),
('#{_u[269%_ul]}', '#{_m[219870]}', '满分💯', 3, '2016-5-15 15:22:26', '2016-5-15 15:22:26'),
('#{_u[270%_ul]}', '#{_m[219870]}', '一无所有才能无所不能！是我最大的感受', 4, '2016-5-15 13:07:09', '2016-5-15 13:07:09'),
('#{_u[271%_ul]}', '#{_m[219870]}', '平庸之作，不看也罢', 4, '2016-5-15 1:29:46', '2016-5-15 1:29:46'),
('#{_u[272%_ul]}', '#{_m[219870]}', '比较偏好这类商业题材的电影', 3, '2016-5-15 1:18:43', '2016-5-15 1:18:43'),
('#{_u[273%_ul]}', '#{_m[219870]}', '看大家都在打击这部片子，我就想去看个究竟。说实话，剧情和演员的表演都很一般，但也不像大家说的那么烂，说得过去吧', 5, '2016-5-14 12:21:48', '2016-5-14 12:21:48'),
('#{_u[274%_ul]}', '#{_m[219870]}', '太假了。创业是这么容易的吗？执行比创意更难，更不用说现在电商都满大街了。', 4, '2016-5-14 9:19:26', '2016-5-14 9:19:26'),
('#{_u[275%_ul]}', '#{_m[219870]}', '打着中国女性版的中国合伙人的幌子，说的是毫无感觉的故事。剧情很平也很难看，一个个演员们都没看出任何演技，和中国合伙人这电影不能比呀！', 3, '2016-5-13 23:36:59', '2016-5-13 23:36:59'),
('#{_u[276%_ul]}', '#{_m[219870]}', '飘忽的梦想，丢掉了因梦想而合伙的基础。', 5, '2016-5-12 19:34:41', '2016-5-12 19:34:41'),
('#{_u[277%_ul]}', '#{_m[219870]}', '什么JB玩意儿！！', 3, '2016-5-12 1:00:49', '2016-5-12 1:00:49'),
('#{_u[278%_ul]}', '#{_m[219870]}', '什么JB玩意儿', 5, '2016-5-12 1:00:33', '2016-5-12 1:00:33'),
('#{_u[279%_ul]}', '#{_m[219870]}', '好肤浅无力的故事。。。', 5, '2016-5-10 12:44:34', '2016-5-10 12:44:34'),
('#{_u[280%_ul]}', '#{_m[219870]}', '对于商场奋斗的描写过于肤浅和表面化，三位“美女”的演技也乏善可陈', 5, '2016-5-8 12:57:24', '2016-5-8 12:57:24'),
('#{_u[281%_ul]}', '#{_m[219870]}', '故事编得太肤浅，没有道出商场合伙人的真谛，三人的友情线也很苍白，几位美女的演技更是平平', 3, '2016-5-8 11:58:31', '2016-5-8 11:58:31'),
('#{_u[282%_ul]}', '#{_m[219870]}', '与巜北京遇见西雅图之不二情书》相比，本片只能算是一道快餐。缺之情节精妙的构思，情节的推进也是浅尝辄止，缺乏深度。因此人物的塑造也就不够立体鲜活。总体来说，无惊喜无糟点无记忆，是一部三无影片。', 3, '2016-5-7 19:22:51', '2016-5-7 19:22:51'),
('#{_u[283%_ul]}', '#{_m[219870]}', '1分给姚晨 1分给郭富城 什么烂片啊', 3, '2016-5-7 10:43:39', '2016-5-7 10:43:39'),
('#{_u[284%_ul]}', '#{_m[219870]}', '郭富城的帅气、郝蕾的演技，姚晨的大嘴、唐嫣的美腿！', 3, '2016-5-6 20:14:09', '2016-5-6 20:14:09'),
('#{_u[285%_ul]}', '#{_m[219870]}', '和导演水土不服没丁点儿关系，故事内容的表达太苍白了，影片高潮突兀又尴尬，俗套的情感戏真让人笑了。PS：李晨的表演分分钟让人出戏。', 3, '2016-5-6 19:21:39', '2016-5-6 19:21:39'),
('#{_u[286%_ul]}', '#{_m[219870]}', '迷魂汤电影没什么好说的，论炖鸡汤打鸡血的功力，本片导演还得向陈可辛同志好好学习，提高姿势水平。——《梦想合伙人》', 5, '2016-5-6 17:05:59', '2016-5-6 17:05:59'),
('#{_u[287%_ul]}', '#{_m[219870]}', '还可以吧', 5, '2016-5-6 14:46:37', '2016-5-6 14:46:37'),
('#{_u[288%_ul]}', '#{_m[219870]}', '一般吧 看完北西再連著看的 劇情有點亂 女人的奮鬥史', 3, '2016-5-6 12:24:42', '2016-5-6 12:24:42'),
('#{_u[289%_ul]}', '#{_m[219870]}', '三位女士因知道了各自的秘密并有了共同的敌人，于是成了好朋友成了合伙人，共同经营女性专用奢侈品网购---美美网，其中经历了物流、假包等困难，最终成功！如果将美国上市换成三人间的各种小摩擦会更好！', 4, '2016-5-6 11:27:00', '2016-5-6 11:27:00'),
('#{_u[290%_ul]}', '#{_m[219870]}', '没有内涵，张嘴闭嘴就是梦想，完全阐述了一个发白日梦的故事，不要谈启发大众了，娱乐大众也差那么几分。', 3, '2016-5-6 10:25:11', '2016-5-6 10:25:11'),
('#{_u[291%_ul]}', '#{_m[219870]}', '花20来块买个优酷会员也不会去看的电影…真心觉得姚晨怎么演都是姚晨自己，搞不懂捧那么高干嘛', 5, '2016-5-6 8:26:08', '2016-5-6 8:26:08'),
('#{_u[292%_ul]}', '#{_m[219870]}', '关于这电影，这么说吧，才演一半就走了三人，我自己也是边玩手机边看', 5, '2016-5-5 21:37:58', '2016-5-5 21:37:58'),
('#{_u[293%_ul]}', '#{_m[219870]}', '《梦想合伙人》主线清晰，代入感极强，姚晨、郝蕾、唐嫣三位中国好闺蜜组成了有颜有智有恒心的“女子创业天团”，打入傲慢美利坚，既淘到了还算坚挺的美金，也成就了一番励志又成功的电商事业，让人仿佛又见“第一次互联网创业”的激情时代。', 4, '2016-5-5 21:23:16', '2016-5-5 21:23:16'),
('#{_u[294%_ul]}', '#{_m[230667]}', '中国惊悚片的佳作，节奏感很好。支持', 3, '2016-5-14 1:15:48', '2016-5-14 1:15:48'),
('#{_u[295%_ul]}', '#{_m[230667]}', '水军好多', 4, '2016-5-13 17:34:13', '2016-5-13 17:34:13'),
('#{_u[296%_ul]}', '#{_m[230667]}', '同求水军空缺岗位', 5, '2016-4-25 9:50:42', '2016-4-25 9:50:42'),
('#{_u[297%_ul]}', '#{_m[230667]}', '水军能告诉我刷一条多少钱吗？', 3, '2016-4-11 22:52:58', '2016-4-11 22:52:58'),
('#{_u[298%_ul]}', '#{_m[230667]}', '所谓单身狗不敢看的一部神剧，由周阁执导，演员徐立、曲少石、杨珑领衔主演的电影《别开门》于四月十四日即将上映！本片从故事的悬疑、演员、特效、音效全都配合的天衣无缝。即将将会成为2016年最有看点的惊悚片之一，颜值秒杀众多人的眼神，更上演激情戏挑战视觉冲击，虐死所有的单身狗。必将会惹起一大波90后帅哥靓女追逐舔屏，疯狂迷恋，目测会有一大波粉丝疯狂赶来！', 4, '2016-3-16 17:20:40', '2016-3-16 17:20:40'),
('#{_u[299%_ul]}', '#{_m[230667]}', '所谓单身狗不敢看的一部神剧，由周阁执导，演员徐立、曲少石、杨珑领衔主演的电影《别开门》于四月十四日即将上映！本片从故事的悬疑、演员、特效、音效全都配合的天衣无缝。即将将会成为2016年最有看点的惊悚片之一，颜值秒杀众多人的眼神，更上演激情戏挑战视觉冲击，虐死所有的单身狗。必将会惹起一大波90后帅哥靓女追逐舔屏，疯狂迷恋，目测会有一大波粉丝疯狂赶来！', 5, '2016-3-16 17:20:02', '2016-3-16 17:20:02'),
('#{_u[300%_ul]}', '#{_m[230667]}', '应该会不错。看这主创阵容就不错', 3, '2016-3-11 14:02:02', '2016-3-11 14:02:02'),
('#{_u[301%_ul]}', '#{_m[230667]}', '应该会不错。看这主创阵容就不错', 4, '2016-3-11 13:59:44', '2016-3-11 13:59:44'),
('#{_u[302%_ul]}', '#{_m[230667]}', '虽然我没看，但我还是知道，最后没鬼。。。。。', 5, '2016-3-7 0:22:37', '2016-3-7 0:22:37'),
('#{_u[303%_ul]}', '#{_m[230667]}', '沙发', 5, '2016-3-3 13:34:07', '2016-3-3 13:34:07'),
('#{_u[304%_ul]}', '#{_m[232382]}', '给父母看的，很喜欢', 3, '2016-4-6 21:37:03', '2016-4-6 21:37:03'),
('#{_u[305%_ul]}', '#{_m[232382]}', '该经典剧应该很能勾引人们对该剧的渴望', 4, '2016-4-4 18:34:17', '2016-4-4 18:34:17'),
('#{_u[306%_ul]}', '#{_m[232382]}', '值得一看', 4, '2016-4-3 9:35:35', '2016-4-3 9:35:35'),
('#{_u[307%_ul]}', '#{_m[232382]}', '中国电影还能不能一起好好玩耍了', 5, '2016-3-31 8:18:01', '2016-3-31 8:18:01'),
('#{_u[308%_ul]}', '#{_m[232382]}', '我勒个去~', 4, '2016-3-29 16:50:30', '2016-3-29 16:50:30'),
('#{_u[309%_ul]}', '#{_m[232382]}', '包场~质量很高！', 3, '2016-3-28 15:19:04', '2016-3-28 15:19:04'),
('#{_u[310%_ul]}', '#{_m[232382]}', '海报写中央歌剧舞剧院演出、国交演奏，没写谁指挥。前两年中央歌剧院出了全剧录音，是俞峰指挥的。', 3, '2016-3-26 23:10:14', '2016-3-26 23:10:14'),
('#{_u[311%_ul]}', '#{_m[232382]}', '这片子可能票房不得了！先抢个位置。', 3, '2016-3-21 21:24:22', '2016-3-21 21:24:22'),
('#{_u[312%_ul]}', '#{_m[219628]}', '居然都没有亲一下下哇~~', 3, '2016-5-16 1:53:45', '2016-5-16 1:53:45'),
('#{_u[313%_ul]}', '#{_m[219628]}', '每个人的青春都会迷茫，因为迷茫本来就是青春本来的样子！', 5, '2016-5-15 15:21:15', '2016-5-15 15:21:15'),
('#{_u[314%_ul]}', '#{_m[219628]}', '160508 一群新人演的青春片。。也算是可以吧', 5, '2016-5-14 20:35:41', '2016-5-14 20:35:41'),
('#{_u[315%_ul]}', '#{_m[219628]}', '挺好的小清新片子', 5, '2016-5-13 14:00:09', '2016-5-13 14:00:09'),
('#{_u[316%_ul]}', '#{_m[219628]}', '没有头发好冷啊！！！！笑死', 3, '2016-5-12 15:34:59', '2016-5-12 15:34:59'),
('#{_u[317%_ul]}', '#{_m[219628]}', '太做作。。。没看完 看不下去。。。', 5, '2016-5-10 21:07:08', '2016-5-10 21:07:08'),
('#{_u[318%_ul]}', '#{_m[219628]}', '不错的电影', 4, '2016-5-8 23:00:54', '2016-5-8 23:00:54'),
('#{_u[319%_ul]}', '#{_m[219628]}', '迟到半小时，总体来说还不错，中国式青春。', 4, '2016-5-8 12:37:49', '2016-5-8 12:37:49'),
('#{_u[320%_ul]}', '#{_m[219628]}', '不错的电影。', 3, '2016-5-7 21:58:23', '2016-5-7 21:58:23'),
('#{_u[321%_ul]}', '#{_m[219628]}', '关于青春和梦想的电影～', 3, '2016-5-6 9:14:51', '2016-5-6 9:14:51'),
('#{_u[322%_ul]}', '#{_m[219628]}', '电影中的人物不迷茫，可观众看完迷茫了', 5, '2016-5-5 22:31:44', '2016-5-5 22:31:44'),
('#{_u[323%_ul]}', '#{_m[219628]}', '真的好看，看的我想到好多自己的以前', 5, '2016-5-5 22:00:03', '2016-5-5 22:00:03'),
('#{_u[324%_ul]}', '#{_m[219628]}', '全篇除了女主对男主朦胧的感情以及对未来到底是上金融还是自己喜欢的天文感到选择困难外，还真没看到其他人有迷茫的地方。还有导演没有这功力，就别拍女主男主没事就在雨中嬉戏这种戏，看了就像两精神病人在发病，毫无美感。', 5, '2016-5-5 8:06:19', '2016-5-5 8:06:19'),
('#{_u[325%_ul]}', '#{_m[219628]}', '一切不符合人的基本行为真实性与逻辑合理性的青春片都是垃圾片，不管它在算内容上有多真实，表达上不真实你再努力讲故事也没用，一切不以现实为依据的电影都是大烂片，我觉得这是评价电影好坏的唯一标准。', 3, '2016-5-4 23:58:30', '2016-5-4 23:58:30'),
('#{_u[326%_ul]}', '#{_m[219628]}', '算是近些年来青春片里比较靠谱的了，没堕胎没死人，虽然剧情一如既往地矫情而且有些过于简单潦草，但还算不落俗套，搞笑的地方也很多，感动人的地方也是有的', 4, '2016-5-4 13:01:19', '2016-5-4 13:01:19'),
('#{_u[327%_ul]}', '#{_m[219628]}', '不错', 5, '2016-5-4 9:44:02', '2016-5-4 9:44:02'),
('#{_u[328%_ul]}', '#{_m[219628]}', '哭的跟狗一样  女主一般  除了小白都不认识', 3, '2016-5-4 0:34:08', '2016-5-4 0:34:08'),
('#{_u[329%_ul]}', '#{_m[219628]}', '谁的青春不迷茫，其实我们都一样。', 5, '2016-5-3 23:17:15', '2016-5-3 23:17:15'),
('#{_u[330%_ul]}', '#{_m[219628]}', '略有尴尬', 4, '2016-5-2 20:47:34', '2016-5-2 20:47:34'),
('#{_u[331%_ul]}', '#{_m[219628]}', '看到开始就知道结尾，没有任何精彩看点。', 3, '2016-5-2 15:27:06', '2016-5-2 15:27:06'),
('#{_u[332%_ul]}', '#{_m[219628]}', '谁的青春不迷茫，其实我们都一样！挺好的青春片！', 3, '2016-5-2 13:59:34', '2016-5-2 13:59:34'),
('#{_u[333%_ul]}', '#{_m[219628]}', '好啊', 3, '2016-5-2 13:17:38', '2016-5-2 13:17:38'),
('#{_u[334%_ul]}', '#{_m[219628]}', '故事情节比较简单，结局有些粗糙。观看过程中总能回想起以前的时光。', 5, '2016-5-2 13:04:48', '2016-5-2 13:04:48'),
('#{_u[335%_ul]}', '#{_m[219628]}', '真的是很干净的青春电影，一点那啥话儿的事都没有，只是去看的时候不是很理解，其他观众的笑点。。剃了光头，很好笑吗？？？', 3, '2016-5-2 6:48:13', '2016-5-2 6:48:13'),
('#{_u[336%_ul]}', '#{_m[219628]}', '其他挺好就是有点模仿同桌的你的嫌疑', 4, '2016-5-2 0:30:29', '2016-5-2 0:30:29'),
('#{_u[337%_ul]}', '#{_m[219628]}', '很一般，基本整个剧都在讲女主，男主和女主的剧情过少，结局太随便', 4, '2016-5-1 14:39:27', '2016-5-1 14:39:27'),
('#{_u[338%_ul]}', '#{_m[219628]}', '还是挺好的', 4, '2016-5-1 13:32:49', '2016-5-1 13:32:49'),
('#{_u[339%_ul]}', '#{_m[215983]}', '那么戏剧化的“青春”可不能代表80后啊，男女主角面瘫，马思纯倒是演得很鲜活，杨洋贡献了颜值', 5, '2016-5-4 11:48:27', '2016-5-4 11:48:27'),
('#{_u[340%_ul]}', '#{_m[215983]}', '爱对了是爱情，爱错了是青春！', 3, '2016-5-2 10:21:26', '2016-5-2 10:21:26'),
('#{_u[341%_ul]}', '#{_m[215983]}', '可能我没看过原著吧，有点理解不了怎么他俩最后在一起了，，前半部还行，那个东山岛挺漂亮的', 4, '2016-4-26 9:42:12', '2016-4-26 9:42:12'),
('#{_u[342%_ul]}', '#{_m[215983]}', '蘇有朋執導不俗，利用分鏡表達劇情，許多空鏡頭包含了寓意，同鄉宿敵在異鄉和解的戲，演員表現到位且場景氣氛都對，拍得無限感嘆', 5, '2016-4-23 8:09:25', '2016-4-23 8:09:25'),
('#{_u[343%_ul]}', '#{_m[215983]}', '看什么电影，看女主就够了。7分送给清纯的女孩儿。', 5, '2016-4-20 14:33:04', '2016-4-20 14:33:04'),
('#{_u[344%_ul]}', '#{_m[215983]}', '欧豪演技若是好点，就是我心目中的张漾了', 5, '2016-4-18 22:35:24', '2016-4-18 22:35:24'),
('#{_u[345%_ul]}', '#{_m[215983]}', '青春伴随着悲伤，成长背后是代价。不悔的是那份执着，小清新里的影，是我们少于见到的，印象深刻。那般炙热、纯粹、不计后果的爱情，正是我们遗失的美好。', 5, '2016-4-5 22:06:03', '2016-4-5 22:06:03'),
('#{_u[346%_ul]}', '#{_m[215983]}', '她不爱他，他却爱她，发现她爱他，他又却爱她，最后他爱她！这么狗血的剧情确定是拍的青春题材，而不是在毁三观？', 5, '2016-4-3 9:36:02', '2016-4-3 9:36:02'),
('#{_u[347%_ul]}', '#{_m[215983]}', '青春电影特点：美女帅哥，爱情，打架，再加上一点早年恩怨纠葛。为了营销，为了美化。but，缺少现实主义，why？编剧的生活，导演的生活，也许很“青春”，但不是多数人的生活。我倒是希望中国出几个现实主义大导演，别是演员歌手什么的转行来……', 4, '2016-4-2 21:18:26', '2016-4-2 21:18:26'),
('#{_u[348%_ul]}', '#{_m[215983]}', '完全脱离生活的青春故事，让人都怀疑创作初衷是得有多么扭曲，故事的基调飘忽不定，唯一走得深远的只有三观不正的大道，就算不拿着道德说事，冲突的基础都显现出惊人的幼稚质感，全面瘫痪的演技让一个女配角神奇般的抢走了整部戏', 3, '2016-4-1 15:32:57', '2016-4-1 15:32:57'),
('#{_u[349%_ul]}', '#{_m[215983]}', '今天又看了几眼，发现这故事就是：不好好学习，叽叽喳喳惹这么多事……', 3, '2016-3-31 21:05:32', '2016-3-31 21:05:32'),
('#{_u[350%_ul]}', '#{_m[215983]}', '真的很一般', 4, '2016-3-26 22:42:21', '2016-3-26 22:42:21'),
('#{_u[351%_ul]}', '#{_m[215983]}', '一堆装x遇见一堆傻x，含蓄的结尾唯一亮点。', 3, '2016-3-8 11:32:58', '2016-3-8 11:32:58'),
('#{_u[352%_ul]}', '#{_m[215983]}', '苏有朋的处女作也算是非常有诚意了。没看过饶雪漫的原书，但感觉这种青春的调调应该会是当下年轻人的所爱。左耳失聪是一个非常有未知性的情节设置，我一直在猜测作者究竟会怎样利用这个梗儿，直到片尾我们才明白了它的精巧之处。这是我非常喜欢的一种线索埋藏，在一部电影的时间里首尾相扣刚刚好，不得不赞一个。电影有一种怀旧感，于我而言更是如此，因为它发生在一个有故事的地方——东山。', 5, '2016-3-7 18:37:10', '2016-3-7 18:37:10'),
('#{_u[353%_ul]}', '#{_m[215983]}', '也许拿万分之一个人的年少过往拿出来说事便是值得一提的青春了。剧本故事性很强，令人将真实性暂且放到一边，新型琼（gou）瑶（xie）式模板。导演有诚意，但镜头语言有些呆滞，也像个青涩少年在偷窥一般，想说又怯于表达。表演的青涩感与导演一脉相承。', 5, '2016-2-26 10:05:01', '2016-2-26 10:05:01'),
('#{_u[354%_ul]}', '#{_m[215983]}', '马思纯的角色很出彩，然而其他人感觉都不会演戏。而且从结构上来说，前半段故事和女主没啥关系，后半段故事围绕女主和深受吧啦影响的两个男主之间进行，似乎吧啦才应该是真正的主角。爱对了是爱情，爱错了是青春。这部电影充斥了青春片的狗血桥段', 3, '2016-2-11 21:42:26', '2016-2-11 21:42:26'),
('#{_u[355%_ul]}', '#{_m[215983]}', '真的很喜欢这部电影，很棒，让我很感动！', 5, '2016-2-11 0:03:56', '2016-2-11 0:03:56'),
('#{_u[356%_ul]}', '#{_m[215983]}', '果然，长得好看才有青春……', 5, '2016-1-24 12:47:52', '2016-1-24 12:47:52'),
('#{_u[357%_ul]}', '#{_m[215983]}', '还可以吧，剧情上还算逻辑通顺，讲述了一个不错的爱情故事。故事很成熟，与学生时代的关联有限，完全可以看作成人向的。女主就是典型的中国式清纯女孩长相，东哥喜欢的类型啊。', 5, '2016-1-20 23:02:16', '2016-1-20 23:02:16'),
('#{_u[358%_ul]}', '#{_m[215983]}', '偶然在电影频道看得。', 4, '2016-1-20 17:44:53', '2016-1-20 17:44:53'),
('#{_u[359%_ul]}', '#{_m[215983]}', '马思纯还可以', 4, '2016-1-15 13:20:58', '2016-1-15 13:20:58'),
('#{_u[360%_ul]}', '#{_m[215983]}', '谁的青春像这般过？堕落，狗血！', 5, '2016-1-11 2:27:57', '2016-1-11 2:27:57'),
('#{_u[361%_ul]}', '#{_m[215983]}', '这电影好无聊啊', 3, '2016-1-1 11:55:57', '2016-1-1 11:55:57'),
('#{_u[362%_ul]}', '#{_m[215983]}', '开头那部分竟让我觉得有些恶心，差点没看下去……我之前看过原著，那时就不太喜欢这个故事，跟现实严重脱节，伤痛青春也伤痛得狗血，按着原著拍出来，剧情自然不会好了……演吧啦那个演员演得不错。不过还蛮喜欢结尾张漾在李珥左耳说话那段的处理', 5, '2015-12-29 20:09:51', '2015-12-29 20:09:51'),
('#{_u[363%_ul]}', '#{_m[215983]}', '作为处女座本片已实属不易，有点那个味道，但是关于青春的题材近年来不少，相比之下这部没有逗比，只有错综复杂的所谓的爱，看的我也是觉得有点幼稚，本片除了吧啦有点演技，其他人看看脸就行了！', 5, '2015-12-29 13:40:36', '2015-12-29 13:40:36'),
('#{_u[364%_ul]}', '#{_m[215983]}', '演技啊。。。', 3, '2015-12-25 23:47:22', '2015-12-25 23:47:22'),
('#{_u[365%_ul]}', '#{_m[215983]}', '前面各种贵圈真乱，后面还好点，女主颜值加分演技有待提高。', 5, '2015-12-10 23:59:24', '2015-12-10 23:59:24'),
('#{_u[366%_ul]}', '#{_m[222776]}', '医院黑幕，让我想起来莆田系。', 5, '2016-5-12 9:19:12', '2016-5-12 9:19:12'),
('#{_u[367%_ul]}', '#{_m[222776]}', '烂得令人发指', 4, '2016-5-11 13:11:43', '2016-5-11 13:11:43'),
('#{_u[368%_ul]}', '#{_m[222776]}', '还行吧，看得人少。不算无聊。', 5, '2016-5-10 1:56:37', '2016-5-10 1:56:37'),
('#{_u[369%_ul]}', '#{_m[222776]}', '不好看，电影院好差，好多蚊子，空调像没开那样', 4, '2016-5-10 1:16:12', '2016-5-10 1:16:12'),
('#{_u[370%_ul]}', '#{_m[222776]}', '看完《判我有罪》之后，又重温了下“希波克拉底誓言”，感慨万千。医生也许是星辰下最为崇高的职业，他们的无限责任与有限能力之间的矛盾几乎无从调解，尤其是在当前中国的社会语境里，具体到本片的表达很是黑色、悬疑，从以药养医的制度性缺陷入手，撒旦一旦诱惑了医生将会导致职业道德的彻底崩塌。', 3, '2016-5-8 23:14:28', '2016-5-8 23:14:28'),
('#{_u[371%_ul]}', '#{_m[222776]}', '看完《判我有罪》之后，又重温了下“希波克拉底誓言”，感慨万千。医生也许是星辰下最为崇高的职业，他们的无限责任与有限能力之间的矛盾几乎无从调解，尤其是在当前中国的社会语境里，具体到本片的表达很是黑色、悬疑，从以药养医的制度性缺陷入手，撒旦一旦诱惑了医生将会导致职业道德的彻底崩塌。', 3, '2016-5-8 23:13:58', '2016-5-8 23:13:58'),
('#{_u[372%_ul]}', '#{_m[222776]}', '非常不好看；扯一点真情实感的东西；又让人感觉不痛不痒……只是常规的教人什么是虚情假意……', 5, '2016-5-8 22:30:23', '2016-5-8 22:30:23'),
('#{_u[373%_ul]}', '#{_m[222776]}', '《判我有罪》揭露医疗内幕的故事设定很容易让人想到最近颇受关注的魏则西事件。导演孙亮以女导演特有的细腻手法将镜头对准一群残忍又冷酷的黑心商人的内心。影片主打悬疑，但是却处处充满着“惊悚”的现实意义，观众始终想要知道真相，但苦苦寻觅的真相往往更让人感到无助和绝望。', 3, '2016-5-8 22:16:26', '2016-5-8 22:16:26'),
('#{_u[374%_ul]}', '#{_m[222776]}', '《判我有罪》揭露医疗内幕的故事设定很容易让人想到最近颇受关注的魏则西事件。导演孙亮以女导演特有的细腻手法将镜头对准一群残忍又冷酷的黑心商人的内心。影片主打悬疑，但是却处处充满着“惊悚”的现实意义，观众始终想要知道真相，但苦苦寻觅的真相往往更让人感到无助和绝望。', 3, '2016-5-8 22:15:48', '2016-5-8 22:15:48'),
('#{_u[375%_ul]}', '#{_m[222776]}', '电影《判我有罪》的勇敢之处在于，在几年前筹备时就锁定于最疯狂的医疗市场黑幕上，将极端私利驾驭之下最丑恶的药商、医生和患者关系进行活灵活现的表现，揭示了标榜治病救人、实为买药杀人的种种医疗乱像的内在规律，当然围绕小孩甜甜之死的另一条线又能给人以亲情的温暖，亦使电影主题有种震撼人心的意义；我相信，尤其是在莆田系事件引发了全社会对医疗黑幕集中关注的今年，本片的上映肯定让人过目难忘。', 3, '2016-5-8 21:47:51', '2016-5-8 21:47:51'),
('#{_u[376%_ul]}', '#{_m[222776]}', '医患关系，医患矛盾越来越紧张的今天，很多影视作品都通过表现医生和病人之间真善美的一面来缓解矛盾。然而《判我有罪》这部电影反其道而行之，从用药的角度入手展现医院中一小撮不法分子利欲熏心，不惜草菅人命的黑暗面。敢于直面惨淡的人生，正视淋漓的鲜血，这才是电影人应有的作为！', 3, '2016-5-8 20:56:24', '2016-5-8 20:56:24'),
('#{_u[377%_ul]}', '#{_m[222776]}', '医患关系，医患矛盾越来越紧张的今天，很多影视作品都通过表现医生和病人之间真善美的一面来缓解矛盾。然而《判我有罪》这部电影反其道而行之，从用药的角度入手展现医院中一小撮不法分子利欲熏心，不惜草菅人命的黑暗面。敢于直面惨淡的人生，正视淋漓的鲜血，这才是电影人应有的作为！', 3, '2016-5-8 20:55:17', '2016-5-8 20:55:17'),
('#{_u[378%_ul]}', '#{_m[222776]}', '很难想象，《判我有罪》是新人女导演孙亮的长片处女作。一桩医院坠楼案，牵扯出一系列令人匪夷所思的离奇事件。医疗黑幕、医闹惨剧几乎每天都在现实中发生，而电影里的故事在冷酷残忍的基础上又处处充满着悬疑和人性的黑暗面，且很多场戏的血腥尺度绝对挑战国产电影最底线，看完触目惊心。', 4, '2016-5-8 17:55:41', '2016-5-8 17:55:41'),
('#{_u[379%_ul]}', '#{_m[222776]}', '很难想象，《判我有罪》是新人女导演孙亮的长片处女作。一桩医院坠楼案，牵扯出一系列令人匪夷所思的离奇事件。医疗黑幕、医闹惨剧几乎每天都在现实中发生，而电影里的故事在冷酷残忍的基础上又处处充满着悬疑和人性的黑暗面，且很多场戏的血腥尺度绝对挑战国产电影最底线，看完触目惊心。', 3, '2016-5-8 17:55:02', '2016-5-8 17:55:02'),
('#{_u[380%_ul]}', '#{_m[222776]}', '《判我有罪》：医疗话题每年都是现实热点之一，但较少为国产电影所选取，而本片选材上便如此大胆的聚焦、探讨了医疗业的某些灰色地带，不仅是贿赂医生，还有背后的各种利益、交易，而且，影片的最后一场戏，更是画龙点睛的将人性的复杂带了出来，引人深思这人性的更深一面，使得影片成为近期难得的直面现实之作！', 5, '2016-5-8 14:59:14', '2016-5-8 14:59:14'),
('#{_u[381%_ul]}', '#{_m[222776]}', '《判我有罪》：医疗话题每年都是现实热点之一，但较少为国产电影所选取，而本片选材上便如此大胆的聚焦、探讨了医疗业的某些灰色地带，不仅是贿赂医生，还有背后的各种利益、交易，而且，影片的最后一场戏，更是画龙点睛的将人性的复杂带了出来，引人深思这人性的更深一面，使得影片成为近期难得的直面现实之作！', 5, '2016-5-8 14:58:09', '2016-5-8 14:58:09'),
('#{_u[382%_ul]}', '#{_m[222776]}', '立意确实是好的，但导演野心与能力不成正比，毫无节奏感可言的碎片式剪辑，配搭频密且尴尬生硬的过度转场，衔接奇葩做作又矫情的镜头调度，陪衬复沓出现的无内涵符码及意识流音效，加上刻意空洞的台词和设置扁平错乱的人物性格，以及尴尬死板的表演状态，既要揭露医疗黑幕，又想表现心理层面，结果就是人物都没立住，故事也晕头转向，每一处都是故弄玄虚和矫揉造作，终于实现了从不好好说故事到说不好故事的质的飞越，真是白瞎了一个这么精彩的主题。', 3, '2016-5-8 14:12:19', '2016-5-8 14:12:19'),
('#{_u[383%_ul]}', '#{_m[222776]}', '影评区除了水军没有正常的影评，可见此片根本没人看。', 4, '2016-5-8 10:10:56', '2016-5-8 10:10:56'),
('#{_u[384%_ul]}', '#{_m[222776]}', '此片根据真实案件改编，剑指医疗黑幕，与当下网上正热的魏则西事件恰好扣上，因此较为吸引眼球。另外，作为一部近两年市面上少见的由女性导演执导的暗黑题材悬疑犯罪片，其视角独特，内容大胆，勇气可嘉，而且镜头对光影的处理很有独到之处，对氛围的营造和展现人物内心微妙变化起到了一定作用。最后八卦一句，女主角李昕芸越看越像“赵薇＋张韶涵＋安以轩”的混合版。', 5, '2016-5-8 1:21:39', '2016-5-8 1:21:39'),
('#{_u[385%_ul]}', '#{_m[222776]}', '商业片充斥的当下，《判我有罪》是一部难得的高颜值黑暗系电影，一部层层剥皮揭露真相的、大胆的电影。它聚焦现实题材，直面黑暗人性，讲述一起医药案件重重漩涡之中人性的挣扎和自我救赎。有一点点《心迷宫》的深度烧脑风格，且剧情扑朔迷离。女医生周旋于离心丈夫，贪心副院长，知心男同事和追心刑警之中，为达成目的转换身份，甚至不惜用身体交换，戏剧冲突之下表现了女性在不安绝望时一步步自我救赎的过程。戴立忍演坏人也那么帅，阴暗的帅，大爱。', 5, '2016-5-8 0:15:35', '2016-5-8 0:15:35'),
('#{_u[386%_ul]}', '#{_m[222776]}', '是当下极为鲜见的能深入触及与医疗有关的心理、犯罪、伦理的颇具批判意义的现实主义题材影片。直击现实，针砭时弊，再现医疗领域的贪腐、堕落，深掘人心深处的真善美假恶丑。荒诞的惊悚风格里，暗黑的镜头语言中，是对人性的剖白、深省与反思。', 3, '2016-5-7 19:26:16', '2016-5-7 19:26:16'),
('#{_u[387%_ul]}', '#{_m[222776]}', '细思极恐的黑色电影', 4, '2016-5-7 18:51:26', '2016-5-7 18:51:26'),
('#{_u[388%_ul]}', '#{_m[222776]}', '我国银幕上比较少见的医疗犯罪电影，影片故事引线是新药滥用导致患者死亡，又提到药监局局长被判死刑，手法上属于现实题材作者化表达。印象深刻的是电影中阴晴不定的天、突如其来的雨，营造悬疑、黑色戏剧氛围，导演孙亮对李昕芸饰演的美艳忧郁女医生类型角色设定，也是国产电影难得一见的。', 3, '2016-5-7 18:36:47', '2016-5-7 18:36:47'),
('#{_u[389%_ul]}', '#{_m[222776]}', '很多镜头语言的手法特别的明显直观，明显的导演处女作。开篇的水波效果和开会中心里声音和状态的镜头表现，昆虫的意象，冯医生面对和穿过楼道中患者们的过程使用的主客观镜头转换，各种将观众带入人物心里活动和情绪的声音表现手法等等，尤其值得肯定的是影片的选题和场景的选择。很多的细节都可以看得出主创的态度，是良心佳作，年度华语十佳候选。', 5, '2016-5-7 14:26:27', '2016-5-7 14:26:27'),
('#{_u[390%_ul]}', '#{_m[222776]}', '孙亮导演有着很大的野心，一部电影把医疗的一些黑幕与纠纷赤裸裸的揭露出来。这种题材非常敏感，并且影射出许多不为人知的真相，尤其是最近魏泽西事件的爆发，把医疗安全又推到了社会舆论的风口浪尖上。电影步步设局，逐渐揭开人性的黑暗，能过审上映，确实厉害。', 4, '2016-5-7 13:02:04', '2016-5-7 13:02:04'),
('#{_u[391%_ul]}', '#{_m[222776]}', '大尺度有深度的医疗犯罪推理片《判我有罪》看似医生因财谋利加大药量致死事件，实则剑指当下医界乱象，可以说，医院治病救人背后冷血无情令人胆颤心惊。一起医生神秘坠楼事件，牵出一系列黑心利益链条，谁是始作俑者悬疑丛生。小甜甜之死究竟是用药过量还是摆脱病痛安乐死，更多道德探讨。片中“药监局长都被枪毙了”等敏感台词频现，影片能过审也是一个奇迹。综上，这是一部为莆田系和医界乱象量身定做的悬疑推理影片。', 5, '2016-5-7 12:09:35', '2016-5-7 12:09:35'),
('#{_u[392%_ul]}', '#{_m[222776]}', '大尺度有深度的医疗犯罪推理片《判我有罪》看似医生因财谋利加大药量致死事件，实则剑指当下医界乱象，可以说，医院治病救人背后冷血无情令人胆颤心惊。一起医生神秘坠楼事件，牵出一系列黑心利益链条，谁是始作俑者悬疑丛生。小甜甜之死究竟是用药过量还是摆脱病痛安乐死，更多道德探讨。片中“药监局长都被枪毙了”等敏感台词频现，影片能过审也是一个奇迹。综上，这是一部为莆田系和医界乱象量身定做的悬疑推理影片。', 4, '2016-5-7 12:08:46', '2016-5-7 12:08:46'),
('#{_u[393%_ul]}', '#{_m[225169]}', '扑街', 5, '2016-5-16 1:11:15', '2016-5-16 1:11:15'),
('#{_u[394%_ul]}', '#{_m[225169]}', '是要歌颂意志品质还是佛法宣导，好像都不明确～。', 5, '2016-5-15 23:15:21', '2016-5-15 23:15:21'),
('#{_u[395%_ul]}', '#{_m[225169]}', '佛教宣传片', 4, '2016-5-14 18:13:26', '2016-5-14 18:13:26'),
('#{_u[396%_ul]}', '#{_m[225169]}', '一部正剧 是玄奘的取经之路 也是心路！', 4, '2016-5-14 12:14:45', '2016-5-14 12:14:45'),
('#{_u[397%_ul]}', '#{_m[225169]}', '复制大唐西域记，豪无新意', 5, '2016-5-13 11:56:49', '2016-5-13 11:56:49'),
('#{_u[398%_ul]}', '#{_m[225169]}', '电影取景超美', 5, '2016-5-12 14:56:18', '2016-5-12 14:56:18'),
('#{_u[399%_ul]}', '#{_m[225169]}', '风景很美，黄教主演技很烂', 4, '2016-5-12 1:47:33', '2016-5-12 1:47:33'),
('#{_u[400%_ul]}', '#{_m[225169]}', '全是水军！', 4, '2016-5-11 8:04:45', '2016-5-11 8:04:45'),
('#{_u[401%_ul]}', '#{_m[225169]}', '我看了两遍（一遍陪老爸去看的，他喜欢历史），给8分，影片中规中矩，比较平实，感受到了取经路上的艰辛不易，我印象中这是国产电影迄今唯一一部讲唐僧玄奘的影片，特别要说的是我是在西安市曲江影城大雁塔店观看的，这个电影院离著名的唐朝古迹大雁塔只有约200米距离，玄奘取经归来就是在这里，在大雁塔下的佛寺翻译真经的，看完电影仰望大雁塔和前广场矗立的玄奘塑像，真是有一种古今穿越的唏嘘，在玄奘翻译佛经的附近看电影大唐玄奘，全国唯一。', 5, '2016-5-10 21:21:41', '2016-5-10 21:21:41'),
('#{_u[402%_ul]}', '#{_m[225169]}', '分数主要给配乐和取景，电影场次不多情有可原，我去看的那家电影院的屏幕实在是槽点太多，不过不影响欣赏构图和印度石窟寺庙的取景。如果动画能做的再逼真一些就好了。', 5, '2016-5-10 19:51:52', '2016-5-10 19:51:52'),
('#{_u[403%_ul]}', '#{_m[225169]}', '谁演大师兄？', 3, '2016-5-10 13:35:08', '2016-5-10 13:35:08'),
('#{_u[404%_ul]}', '#{_m[225169]}', '小明哥的45度角总是让人出戏', 4, '2016-5-10 13:01:55', '2016-5-10 13:01:55'),
('#{_u[405%_ul]}', '#{_m[225169]}', '小明哥的45度角总是让人出戏', 4, '2016-5-10 13:01:45', '2016-5-10 13:01:45'),
('#{_u[406%_ul]}', '#{_m[225169]}', '黄晓明的独角戏，玄奘的寂寞与孤独，坚韧与勇敢还不是黄晓明能驾驭的！', 4, '2016-5-10 10:48:47', '2016-5-10 10:48:47'),
('#{_u[407%_ul]}', '#{_m[225169]}', '水军真TM多。', 4, '2016-5-10 9:16:59', '2016-5-10 9:16:59'),
('#{_u[408%_ul]}', '#{_m[225169]}', '很好看！我很佩服导演 摄影 还有音乐和黄XM。台词不多 但是眼神演绎得很赞。值得一看！难得好片子啊', 3, '2016-5-9 23:55:51', '2016-5-9 23:55:51'),
('#{_u[409%_ul]}', '#{_m[225169]}', '挺好看的，出乎意料', 4, '2016-5-9 20:45:32', '2016-5-9 20:45:32'),
('#{_u[410%_ul]}', '#{_m[225169]}', '只因是玄奘', 5, '2016-5-9 10:17:07', '2016-5-9 10:17:07'),
('#{_u[411%_ul]}', '#{_m[225169]}', '好看', 3, '2016-5-9 7:10:15', '2016-5-9 7:10:15'),
('#{_u[412%_ul]}', '#{_m[225169]}', '还是比较好段伟 尽管没有3d', 5, '2016-5-8 22:44:25', '2016-5-8 22:44:25'),
('#{_u[413%_ul]}', '#{_m[225169]}', '画面精美，音乐大气，故事感人。', 3, '2016-5-8 21:30:22', '2016-5-8 21:30:22'),
('#{_u[414%_ul]}', '#{_m[225169]}', '画面精美，音乐大气，情节从内心打动人。', 5, '2016-5-8 21:29:40', '2016-5-8 21:29:40'),
('#{_u[415%_ul]}', '#{_m[225169]}', '玄奘的坚持是我要学习的', 5, '2016-5-8 18:00:13', '2016-5-8 18:00:13'),
('#{_u[416%_ul]}', '#{_m[225169]}', '给小明同学扣一分', 5, '2016-5-8 14:21:45', '2016-5-8 14:21:45'),
('#{_u[417%_ul]}', '#{_m[225169]}', '基本按照史实，中规中矩，摄影不错', 3, '2016-5-7 22:30:01', '2016-5-7 22:30:01'),
('#{_u[418%_ul]}', '#{_m[225169]}', '黄晓明，蒲巴甲演得一般，情节有些简单。很平淡的一片子。', 3, '2016-5-7 15:34:29', '2016-5-7 15:34:29'),
('#{_u[419%_ul]}', '#{_m[225169]}', '对于历史的复制是好的，但是当玄奘回到大唐那一幕，本应该是最感人的场面，却并没有那么体现出来', 4, '2016-5-7 13:59:41', '2016-5-7 13:59:41'),
('#{_u[420%_ul]}', '#{_m[189531]}', 'OK抱抱', 4, '2016-5-15 15:21:35', '2016-5-15 15:21:35'),
('#{_u[421%_ul]}', '#{_m[189531]}', '一般，不妨一看', 3, '2016-5-15 1:30:18', '2016-5-15 1:30:18'),
('#{_u[422%_ul]}', '#{_m[189531]}', '不好看', 5, '2016-5-14 21:18:37', '2016-5-14 21:18:37'),
('#{_u[423%_ul]}', '#{_m[189531]}', '这两部选角除了塞隆女王之外都相当差劲', 3, '2016-5-14 21:09:18', '2016-5-14 21:09:18'),
('#{_u[424%_ul]}', '#{_m[189531]}', '整个剧情分泵离析（。。。）没有灵魂的四大主演也不知道自己在干嘛...', 5, '2016-5-14 17:16:53', '2016-5-14 17:16:53'),
('#{_u[425%_ul]}', '#{_m[189531]}', '中规中矩，谈不上惊艳，价格划算～', 5, '2016-5-14 12:00:36', '2016-5-14 12:00:36'),
('#{_u[426%_ul]}', '#{_m[189531]}', '看脸就够了', 5, '2016-5-13 19:52:33', '2016-5-13 19:52:33'),
('#{_u[427%_ul]}', '#{_m[189531]}', '前段太无聊，', 3, '2016-5-12 21:03:53', '2016-5-12 21:03:53'),
('#{_u[428%_ul]}', '#{_m[189531]}', '成人版童话，邪恶天真指数减半', 5, '2016-5-12 13:00:56', '2016-5-12 13:00:56'),
('#{_u[429%_ul]}', '#{_m[189531]}', '一般般~~', 3, '2016-5-11 23:34:54', '2016-5-11 23:34:54'),
('#{_u[430%_ul]}', '#{_m[189531]}', '要没有特效的话，就是一群傻逼了吧。Emily竟然没有武戏，差评！剧情果然很童话，不要太认真啦，图个热闹而已。雷神最终还是附体了Orz', 3, '2016-5-11 21:18:38', '2016-5-11 21:18:38'),
('#{_u[431%_ul]}', '#{_m[189531]}', '前半段真心无聊˜˜', 5, '2016-5-11 3:45:49', '2016-5-11 3:45:49'),
('#{_u[432%_ul]}', '#{_m[189531]}', '去看男神，又性感又可爱又专一，怎么能不爱！和劳模姐配一脸啊，船戏删的也太明显了吧。其实我觉得最可怜的是小梅演的和妹妹好的那个男人，被魔法控制杀了自己的女儿，清醒后又被自己心爱的女人杀死，他才是最虐的角色', 3, '2016-5-9 19:50:37', '2016-5-9 19:50:37'),
('#{_u[433%_ul]}', '#{_m[189531]}', '在电影院有点坐不住的感觉。衣服是美的、风景也是美的，人也是美的，但就是看不进去。', 5, '2016-5-9 16:32:08', '2016-5-9 16:32:08'),
('#{_u[434%_ul]}', '#{_m[189531]}', '这么好的魔幻片评分为什么这么低？国人的口味有别于西方。', 3, '2016-5-8 19:30:10', '2016-5-8 19:30:10'),
('#{_u[435%_ul]}', '#{_m[189531]}', '作为续集来说很一般', 4, '2016-5-8 18:06:11', '2016-5-8 18:06:11'),
('#{_u[436%_ul]}', '#{_m[189531]}', '除了塞隆其他都可以不用看', 4, '2016-5-8 16:37:44', '2016-5-8 16:37:44'),
('#{_u[437%_ul]}', '#{_m[189531]}', '感觉一般般', 3, '2016-5-5 22:43:14', '2016-5-5 22:43:14'),
('#{_u[438%_ul]}', '#{_m[189531]}', '雷神大战T1000X', 4, '2016-5-5 21:42:26', '2016-5-5 21:42:26'),
('#{_u[439%_ul]}', '#{_m[189531]}', '一般', 5, '2016-5-5 10:47:10', '2016-5-5 10:47:10'),
('#{_u[440%_ul]}', '#{_m[189531]}', '名字和我看到的有点偏差，我以为是神话结果是童话。那是不是白雪公主抢了老巫婆的王国呢。不知道啦', 5, '2016-5-5 0:47:25', '2016-5-5 0:47:25'),
('#{_u[441%_ul]}', '#{_m[189531]}', '只为看女神', 3, '2016-5-4 18:52:59', '2016-5-4 18:52:59'),
('#{_u[442%_ul]}', '#{_m[189531]}', '本作剧情比较简单，精神上完胜前作《白雪公主与猎人》。因为前作讲革命，本作讲爱情；前作着重集体，本作着重个人。只有个人才有审美，集体没有审美。', 3, '2016-5-4 12:45:05', '2016-5-4 12:45:05'),
('#{_u[443%_ul]}', '#{_m[189531]}', '本作剧情比较简单，精神上完胜前作《白雪公主与猎人》。因为前作讲革命，本作讲爱情；前作着重集体，本作着重个人。只有个人才有审美，集体没有审美。', 5, '2016-5-4 12:44:03', '2016-5-4 12:44:03'),
('#{_u[444%_ul]}', '#{_m[189531]}', '木有看片子，只是海报的惊鸿一瞥让我看成了西游记…', 5, '2016-5-3 0:12:03', '2016-5-3 0:12:03'),
('#{_u[445%_ul]}', '#{_m[189531]}', '平淡无奇，算是对该片很高的评价了。能让本人记住的，也就是三位女魔头的造型了。魔法的设计也让人失望。', 4, '2016-5-2 22:41:20', '2016-5-2 22:41:20'),
('#{_u[446%_ul]}', '#{_m[189531]}', '很不错的一部电影', 3, '2016-5-2 19:08:04', '2016-5-2 19:08:04'),
('#{_u[447%_ul]}', '#{_m[201437]}', '算是中等作品，演员的演绎还是很出色。', 4, '2016-5-3 23:16:59', '2016-5-3 23:16:59'),
('#{_u[448%_ul]}', '#{_m[201437]}', '本来其实作为恐怖片，最多只能打五分，但是，在不能有鬼的情况下，还是把故事好歹说完了，多加一分', 5, '2016-3-30 18:58:14', '2016-3-30 18:58:14'),
('#{_u[449%_ul]}', '#{_m[201437]}', '题材不错，阵容强大，影音也很精致。可惜拍得有些散了，前半部还好，后半部有点不合逻辑，草草收场的感觉。', 5, '2016-3-27 12:07:22', '2016-3-27 12:07:22'),
('#{_u[450%_ul]}', '#{_m[201437]}', '本来不爱看惊悚的鬼片，但看了这个之后发觉恐怖程度还能接受。。。因为完全不恐怖啊。。。不知道是不是国内的审查机制所致。', 5, '2016-3-6 23:22:48', '2016-3-6 23:22:48'),
('#{_u[451%_ul]}', '#{_m[201437]}', '要不是最后出现鬼，我以为看的是青春爱情片呢……', 5, '2016-2-28 16:39:26', '2016-2-28 16:39:26'),
('#{_u[452%_ul]}', '#{_m[201437]}', '所有中国式鬼片都一个路线 因为心如才去看的', 3, '2016-2-14 17:01:42', '2016-2-14 17:01:42'),
('#{_u[453%_ul]}', '#{_m[201437]}', '要不是为了看“爸爸love you”', 3, '2016-1-15 11:12:29', '2016-1-15 11:12:29'),
('#{_u[454%_ul]}', '#{_m[201437]}', '呵呵', 4, '2016-1-15 11:11:54', '2016-1-15 11:11:54'),
('#{_u[455%_ul]}', '#{_m[201437]}', '前面还可以，后面比较乱', 4, '2016-1-6 20:25:16', '2016-1-6 20:25:16'),
('#{_u[456%_ul]}', '#{_m[201437]}', '这孽缘，不装神弄鬼的话还是可以看一下的~', 5, '2015-11-22 16:21:23', '2015-11-22 16:21:23'),
('#{_u[457%_ul]}', '#{_m[201437]}', '不好看不好看不好看，重要的事情说三遍。', 5, '2015-11-15 14:15:57', '2015-11-15 14:15:57'),
('#{_u[458%_ul]}', '#{_m[201437]}', '实在是扶不上墙的国产恐怖片，没法给出及格的分数。', 5, '2015-11-2 7:16:15', '2015-11-2 7:16:15'),
('#{_u[459%_ul]}', '#{_m[201437]}', '我草我居然看完了', 5, '2015-10-30 5:05:45', '2015-10-30 5:05:45'),
('#{_u[460%_ul]}', '#{_m[201437]}', '氛围营造的不错，吴镇宇大叔对弟媳的暗恋，唯一的嚼劲了。', 3, '2015-10-22 15:50:24', '2015-10-22 15:50:24'),
('#{_u[461%_ul]}', '#{_m[201437]}', '电影频道播 我妈在看就陪她看了 并不想评价--', 5, '2015-9-17 19:55:48', '2015-9-17 19:55:48'),
('#{_u[462%_ul]}', '#{_m[201437]}', '真的不是在看狗血言情穿越玛丽苏剧？只承认某些爱情场面蛮美', 5, '2015-9-7 19:24:21', '2015-9-7 19:24:21'),
('#{_u[463%_ul]}', '#{_m[201437]}', '大陆的鬼片永远都不是真鬼而是精神疾病', 4, '2015-8-28 9:34:55', '2015-8-28 9:34:55'),
('#{_u[464%_ul]}', '#{_m[201437]}', '原来是霍家三兄弟和一个青楼女子、一个男人和三个女人的两个故事', 4, '2015-7-13 22:46:13', '2015-7-13 22:46:13'),
('#{_u[465%_ul]}', '#{_m[201437]}', '不恐怖………被宣传骗了……', 5, '2015-7-13 1:32:45', '2015-7-13 1:32:45'),
('#{_u[466%_ul]}', '#{_m[201437]}', '影片刚开始的一段还让人略感到有一点恐怖的氛围，不过越到后面剧情穿越的越突兀，国产的恐怖片一直没有什么突破！', 4, '2015-7-3 21:10:39', '2015-7-3 21:10:39'),
('#{_u[467%_ul]}', '#{_m[201437]}', '作为国产恐怖片，确实值得肯定！', 3, '2015-6-27 13:06:54', '2015-6-27 13:06:54'),
('#{_u[468%_ul]}', '#{_m[201437]}', '简直垃圾！', 5, '2015-6-9 19:20:03', '2015-6-9 19:20:03'),
('#{_u[469%_ul]}', '#{_m[201437]}', '用四个字就可以形容中国式鬼片：精神分裂。', 3, '2015-5-19 20:28:19', '2015-5-19 20:28:19'),
('#{_u[470%_ul]}', '#{_m[201437]}', '平庸之作，不看也罢', 5, '2015-5-9 20:28:16', '2015-5-9 20:28:16'),
('#{_u[471%_ul]}', '#{_m[201437]}', '平庸之作，不看也罢', 5, '2015-5-7 21:05:29', '2015-5-7 21:05:29'),
('#{_u[472%_ul]}', '#{_m[201437]}', '真的吓人。。中国式鬼片，欧美的鬼片就是满嘴血尖獠牙来吓人，中国的就是营造那肿吓死人不偿命的阴森气氛。', 3, '2015-4-24 11:11:29', '2015-4-24 11:11:29'),
('#{_u[473%_ul]}', '#{_m[201437]}', '感觉有点幼稚的说。。。不过话说回来，这应该也算这几年国产恐怖有点质量的作品了。。。', 4, '2015-4-19 16:33:40', '2015-4-19 16:33:40'),
('#{_u[474%_ul]}', '#{_m[228257]}', '其实是挺不错的一电影。现代社会快节奏、高压力，爱情亲情无时无刻不在被扭曲和异化。人们心中的阴影总是挥之不去，异变的人性凭空生出许多事端与烦恼！', 5, '2016-5-10 20:58:58', '2016-5-10 20:58:58'),
('#{_u[475%_ul]}', '#{_m[228257]}', '影片本身就是妄想症！', 4, '2016-5-9 17:57:47', '2016-5-9 17:57:47'),
('#{_u[476%_ul]}', '#{_m[228257]}', '什么时候彭氏的悬疑片变成这样了？已经低级到把自己的旧作《妄想》再串联抄一遍的地步，通篇无病呻吟，故事烂得简直丧心病狂，片名即是剧透，从头到尾都是精神病的幻想世界，情节幼稚至极，表演及其生硬，音乐成为了最大的悬疑部分，严重怀疑导演是不是刚从职校毕业的！这种低成本小作坊制作和幼稚的剧本尴尬得令人汗颜，也再次证明了中国大陆目前拍出来的“惊悚悬疑”片连最基本的讲故事都做不好，气！', 3, '2016-5-8 14:20:28', '2016-5-8 14:20:28'),
('#{_u[477%_ul]}', '#{_m[200506]}', '说实话，索尼这几年发行的片子越来越不尽人意了，不知道这部电影能不能挽回点期待值……', 3, '2016-5-15 21:52:24', '2016-5-15 21:52:24'),
('#{_u[478%_ul]}', '#{_m[200506]}', '没有看到那只很肥的大红鸟啊！', 3, '2016-5-15 19:12:06', '2016-5-15 19:12:06'),
('#{_u[479%_ul]}', '#{_m[200506]}', '群众基础强大的电影，很欢乐，估计票房会很好。', 4, '2016-5-12 20:31:27', '2016-5-12 20:31:27'),
('#{_u[480%_ul]}', '#{_m[200506]}', '脸疼(°Д°)ﾉ原来是五月的吗!', 5, '2016-4-21 18:12:15', '2016-4-21 18:12:15'),
('#{_u[481%_ul]}', '#{_m[200506]}', '正好高考完去看～～', 4, '2016-4-21 18:10:12', '2016-4-21 18:10:12'),
('#{_u[482%_ul]}', '#{_m[200506]}', '定档了？', 5, '2016-4-13 7:30:01', '2016-4-13 7:30:01'),
('#{_u[483%_ul]}', '#{_m[200506]}', '预告看着成色不错', 5, '2016-3-5 9:28:28', '2016-3-5 9:28:28'),
('#{_u[484%_ul]}', '#{_m[200506]}', '好像看哇!', 5, '2015-12-2 14:14:54', '2015-12-2 14:14:54'),
('#{_u[485%_ul]}', '#{_m[200506]}', '誓要将冷饭吵到不能吃的地步', 5, '2015-10-16 15:14:25', '2015-10-16 15:14:25'),
('#{_u[486%_ul]}', '#{_m[200506]}', '(☆▽☆)。。。。。。2016', 5, '2015-9-28 16:36:18', '2015-9-28 16:36:18'),
('#{_u[487%_ul]}', '#{_m[200506]}', '我倒是挺想看植物大战僵尸电影版，哈哈', 4, '2015-6-16 9:30:21', '2015-6-16 9:30:21'),
('#{_u[488%_ul]}', '#{_m[200506]}', 'Haha', 5, '2014-12-17 14:53:04', '2014-12-17 14:53:04'),
('#{_u[489%_ul]}', '#{_m[200506]}', '#不该电影化的游戏#怎么说呢……rpg似乎更容易排成电影……但是想拍好很难……act的话也是翻篇的热门，但是想拍好也很难……算了当我没说，其实我觉得还是尽快拍《植物大战僵尸》吧，拍动画很合适的！人家《愤怒的小鸟》都要来啦！EA加油啊！', 3, '2013-10-16 23:48:19', '2013-10-16 23:48:19'),
('#{_u[490%_ul]}', '#{_m[208256]}', '现在这些烂片市场好大，还拍了三部', 4, '2016-5-17 9:56:02', '2016-5-17 9:56:02'),
('#{_u[491%_ul]}', '#{_m[208256]}', '挺喜欢分歧者1和2的，我觉得比饥饿游戏1和3好看，比移动迷宫1和2好看，会去电影院看3的。', 3, '2016-5-12 17:25:08', '2016-5-12 17:25:08'),
('#{_u[492%_ul]}', '#{_m[208256]}', '很差，完全是浪费时间', 3, '2016-5-11 6:39:13', '2016-5-11 6:39:13'),
('#{_u[493%_ul]}', '#{_m[208256]}', '老实说，前两部说什么我已经忘记了。这类片子和《移动迷宫》、《饥饿游戏》相似度实在太高。', 3, '2016-5-2 19:04:57', '2016-5-2 19:04:57'),
('#{_u[494%_ul]}', '#{_m[208256]}', '某些黑子别在这喷了。不想看可以走开。', 5, '2016-4-27 4:55:57', '2016-4-27 4:55:57'),
('#{_u[495%_ul]}', '#{_m[208256]}', '还可以。不至于那么差。比较喜欢这种题材。', 4, '2016-4-21 18:07:27', '2016-4-21 18:07:27'),
('#{_u[496%_ul]}', '#{_m[208256]}', '内地5月20日上映', 4, '2016-4-11 20:39:06', '2016-4-11 20:39:06'),
('#{_u[497%_ul]}', '#{_m[208256]}', '颜值也拯救不了这部电影，看不出亮点。', 5, '2016-3-30 23:31:25', '2016-3-30 23:31:25'),
('#{_u[498%_ul]}', '#{_m[208256]}', '看到结尾以为系列就这样大团圆完结了，尼玛回去一查竟然还有一部。。。几个年轻演员都很有潜力，以此为跳板获得更好的资源可能是这个系列现在看来唯一的价值了。', 4, '2016-3-26 4:36:18', '2016-3-26 4:36:18'),
('#{_u[499%_ul]}', '#{_m[208256]}', '可别再拍了', 4, '2016-3-23 5:10:55', '2016-3-23 5:10:55')
})
ActiveRecord::Base.connection.execute(%{
INSERT INTO "comments" ("user_id", "movie_id", "content", "rating", "created_at", "updated_at") VALUES
('#{_u[500%_ul]}', '#{_m[208256]}', '浪费了我2个小时。。。', 3, '2016-3-22 8:34:15', '2016-3-22 8:34:15'),
('#{_u[501%_ul]}', '#{_m[208256]}', '女主没死，差评，不看也罢！', 4, '2016-3-21 9:58:07', '2016-3-21 9:58:07'),
('#{_u[502%_ul]}', '#{_m[208256]}', '国内不上映了？', 5, '2016-3-17 19:31:00', '2016-3-17 19:31:00'),
('#{_u[503%_ul]}', '#{_m[208256]}', '真，的，非，常，非，常，难，看。这个系列从此已经被我除名了，Theo James的颜也救不了。', 5, '2016-3-17 8:19:56', '2016-3-17 8:19:56'),
('#{_u[504%_ul]}', '#{_m[208256]}', '好看嚶嚶嚶', 5, '2016-3-11 18:34:49', '2016-3-11 18:34:49'),
('#{_u[505%_ul]}', '#{_m[208256]}', '翠丝的发型真是一部比一部丑', 3, '2016-1-26 9:09:30', '2016-1-26 9:09:30'),
('#{_u[506%_ul]}', '#{_m[208256]}', '很好奇这是有原著的吗 ？ 和移动迷宫的套路很像嘛， 就像是成人版的。', 4, '2016-1-16 17:43:56', '2016-1-16 17:43:56'),
('#{_u[507%_ul]}', '#{_m[208256]}', '但貌似票房不是很高。 关注度也没饥饿游戏那么厉害', 4, '2015-12-26 12:51:31', '2015-12-26 12:51:31'),
('#{_u[508%_ul]}', '#{_m[208256]}', '敢肯定这个片会被压出屎，其3.18（2016年）几乎在全球上映，3.18过一周后（3.25）杀出个《蝙超》，三月中旬到四月末都有一些大片。但是总体而言那个月份是《蝙超》最受欢迎，遇到蝙超算它自己倒霉吧。总之我个人感觉它遇到蝙超简直是以卵击石。会被蝙超以及另外一些大片压出屎，并且屎无全尸。', 3, '2015-12-23 15:16:19', '2015-12-23 15:16:19'),
('#{_u[509%_ul]}', '#{_m[208256]}', '敢肯定这个片会被压出屎，其3.18（2016年）几乎在全球上映，3.18过一周后（3.25）杀出个《蝙超》，三月中旬到四月末都有一些大片。但是总体而言那个月份是《蝙超》最受欢迎，遇到蝙超算它自己倒霉吧。总之我个人感觉它遇到蝙超简直是以卵击石。会被蝙超以及另外一些大片压出屎，并且屎无全尸。', 5, '2015-12-23 15:16:19', '2015-12-23 15:16:19'),
('#{_u[510%_ul]}', '#{_m[208256]}', '竟然有全果激情戏 还有巨人乱入 调查兵团在外被墙外人类干得不要不要的', 4, '2015-12-7 22:49:14', '2015-12-7 22:49:14'),
('#{_u[511%_ul]}', '#{_m[208256]}', '评论的各位你们是都看过了吗？。。。穿越未来了？', 4, '2015-11-13 16:17:05', '2015-11-13 16:17:05'),
('#{_u[512%_ul]}', '#{_m[208256]}', '电影的节奏很好,代入感强.', 4, '2015-9-21 14:44:36', '2015-9-21 14:44:36'),
('#{_u[513%_ul]}', '#{_m[208256]}', '少儿不宜。和老师一起看电影。遇到床戏。老师说。专心玩手机。剧情可悲。', 5, '2015-9-21 14:44:30', '2015-9-21 14:44:30'),
('#{_u[514%_ul]}', '#{_m[208256]}', '电影告诉我们，想要好好相处，就别管太多', 5, '2015-9-21 14:44:24', '2015-9-21 14:44:24'),
('#{_u[515%_ul]}', '#{_m[208256]}', '提奥长得不错………', 4, '2015-9-21 14:44:07', '2015-9-21 14:44:07'),
('#{_u[516%_ul]}', '#{_m[208256]}', '讲述了因为颜值低所以虽然胸不大但是并不影响她无脑的女主角和她上一部存在感爆表然而这一部戏份无限少的男朋友在历尽千难万险之后终于达到宇宙的大和谐的故事。不过，男主的颜让我还是享受地看完了分歧者，毕竟我还是一个肤浅的看脸的女生。。。。', 5, '2015-9-21 14:43:58', '2015-9-21 14:43:58'),
('#{_u[517%_ul]}', '#{_m[221228]}', '居然是导演第一部国内公映的作品，没法参照了', 5, '2016-5-9 12:24:58', '2016-5-9 12:24:58'),
('#{_u[518%_ul]}', '#{_m[221228]}', '戴思杰就是质量的保证', 4, '2016-5-3 12:48:07', '2016-5-3 12:48:07'),
('#{_u[519%_ul]}', '#{_m[221228]}', '哦', 5, '2016-2-25 16:30:35', '2016-2-25 16:30:35'),
('#{_u[520%_ul]}', '#{_m[221228]}', '期待上映，mark!~~', 5, '2015-2-9 16:17:18', '2015-2-9 16:17:18'),
('#{_u[521%_ul]}', '#{_m[195394]}', '再次充分证明兲朝这死不要碧莲的意淫、剽窃水平在整个地球里也是没谁了！！！', 3, '2016-5-11 15:36:11', '2016-5-11 15:36:11'),
('#{_u[522%_ul]}', '#{_m[195394]}', '罪恶之城3：手撕鬼子', 5, '2016-5-4 19:52:23', '2016-5-4 19:52:23'),
('#{_u[523%_ul]}', '#{_m[195394]}', '到底讲的是抗战，还是内战？？？', 5, '2016-5-4 12:17:28', '2016-5-4 12:17:28'),
('#{_u[524%_ul]}', '#{_m[195394]}', '怎么看怎么像《罪恶之城》。尚不说抄袭还是致敬，这类风格国内真的能上映么？', 5, '2016-4-25 15:05:58', '2016-4-25 15:05:58'),
('#{_u[525%_ul]}', '#{_m[195394]}', '怎么看怎么像《罪恶之城》。尚不说抄袭还是致敬，这类风格国内真的能上映么？', 5, '2016-4-25 15:05:56', '2016-4-25 15:05:56'),
('#{_u[526%_ul]}', '#{_m[195394]}', '满满的抄袭风格，满满的意淫手撕鬼子，满满的不知廉耻～～～～～', 3, '2016-4-23 13:29:02', '2016-4-23 13:29:02'),
('#{_u[527%_ul]}', '#{_m[195394]}', '抄袭作品 我就是来黑的', 4, '2016-4-22 12:01:13', '2016-4-22 12:01:13'),
('#{_u[528%_ul]}', '#{_m[195394]}', '喜欢何润东不同的造型，我觉得他太爷们了', 4, '2016-4-15 22:41:59', '2016-4-15 22:41:59'),
('#{_u[529%_ul]}', '#{_m[195394]}', '这个钢刀里面感受别样的风采，我想我会去看', 4, '2016-4-15 22:41:37', '2016-4-15 22:41:37'),
('#{_u[530%_ul]}', '#{_m[195394]}', '太吸引我们的视野了', 4, '2016-4-15 22:41:08', '2016-4-15 22:41:08'),
('#{_u[531%_ul]}', '#{_m[195394]}', '有着众多的元素，钢刀不可多得', 4, '2016-4-15 22:40:44', '2016-4-15 22:40:44'),
('#{_u[532%_ul]}', '#{_m[195394]}', '看看去，中国男人的血性气概啊', 5, '2016-4-15 22:40:28', '2016-4-15 22:40:28'),
('#{_u[533%_ul]}', '#{_m[195394]}', '关注李东学，此片不可多得，支持下', 4, '2016-4-15 22:40:08', '2016-4-15 22:40:08'),
('#{_u[534%_ul]}', '#{_m[195394]}', '喜欢这种另类的兄弟情义片，有研究', 5, '2016-4-15 22:39:56', '2016-4-15 22:39:56'),
('#{_u[535%_ul]}', '#{_m[195394]}', '具体什么时候能见面，非常想看呢', 3, '2016-4-15 22:39:30', '2016-4-15 22:39:30'),
('#{_u[536%_ul]}', '#{_m[195394]}', '支持了，喜欢李东学，走着电影院见', 4, '2016-4-15 22:39:17', '2016-4-15 22:39:17'),
('#{_u[537%_ul]}', '#{_m[195394]}', '绝对惊艳大家的视线，哈哈，有意思', 3, '2016-4-15 22:38:50', '2016-4-15 22:38:50'),
('#{_u[538%_ul]}', '#{_m[195394]}', '有意思，值得一看的剧情，支持了', 3, '2016-4-15 22:38:28', '2016-4-15 22:38:28'),
('#{_u[539%_ul]}', '#{_m[195394]}', '正愁找不着好的片呢，这个好！！', 3, '2016-4-15 22:38:16', '2016-4-15 22:38:16'),
('#{_u[540%_ul]}', '#{_m[195394]}', '看影片场面也一定很壮观呢，不错过', 4, '2016-4-15 22:38:05', '2016-4-15 22:38:05'),
('#{_u[541%_ul]}', '#{_m[195394]}', '喜欢枪战片，非常惊心动作片', 4, '2016-4-15 22:37:52', '2016-4-15 22:37:52'),
('#{_u[542%_ul]}', '#{_m[195394]}', '嘻嘻何润东在，我怎么能镇定，钢刀，我来了', 3, '2016-4-15 22:37:31', '2016-4-15 22:37:31'),
('#{_u[543%_ul]}', '#{_m[195394]}', '好有内涵的片子，不容错过', 5, '2016-4-15 22:37:20', '2016-4-15 22:37:20'),
('#{_u[544%_ul]}', '#{_m[195394]}', '不知道什么时候上映啊，等不及咯', 3, '2016-4-15 22:36:57', '2016-4-15 22:36:57'),
('#{_u[545%_ul]}', '#{_m[195394]}', '李东学这次也算是颠覆形象了吧，很有突破', 3, '2016-4-15 22:36:27', '2016-4-15 22:36:27'),
('#{_u[546%_ul]}', '#{_m[195394]}', '看完剧情介绍，我的心情竟是久久不能平静', 4, '2016-4-15 22:36:06', '2016-4-15 22:36:06'),
('#{_u[547%_ul]}', '#{_m[195394]}', '钢刀的特技效果一定会是出彩的，总会让大家满意', 4, '2016-4-15 22:35:54', '2016-4-15 22:35:54'),
('#{_u[548%_ul]}', '#{_m[233252]}', '就这名字，可惜不能打负分！', 5, '2016-5-10 21:54:07', '2016-5-10 21:54:07'),
('#{_u[549%_ul]}', '#{_m[233252]}', '我喜欢看演员互相舔对方血的剧情，晚上看，看完特别释放，电影都是假的，不要这么认真好吧。', 3, '2016-5-10 20:09:33', '2016-5-10 20:09:33'),
('#{_u[550%_ul]}', '#{_m[233252]}', '我根本就是怕女朋友跟我分手，上次看了一次屏幕毫无预兆突然出个鬼，女朋友把我掐的我差点没把电影票吃了。', 3, '2016-5-10 20:09:05', '2016-5-10 20:09:05'),
('#{_u[551%_ul]}', '#{_m[233252]}', '掏婴儿看的真的要吐了，地上滚的是血肉球吗，看着那么疼呢，心疼怀孕的女人', 5, '2016-5-10 20:08:46', '2016-5-10 20:08:46'),
('#{_u[552%_ul]}', '#{_m[233252]}', '食人族，我也想看食人族，上学时候看过最重口味的是异形，直接把人插碎了，特效做的太好了。', 3, '2016-5-10 20:08:26', '2016-5-10 20:08:26'),
('#{_u[553%_ul]}', '#{_m[233252]}', '三个女人一台戏，女人何苦为难女人，就喜欢看这种都是女人的戏，男的好像都是打酱油的。。', 3, '2016-5-10 20:08:03', '2016-5-10 20:08:03'),
('#{_u[554%_ul]}', '#{_m[233252]}', '如果真的是食婴和鬼披人皮还是很值得一看的，看疯子电影都要看吐了，那些辣鸡电影才变态呢！', 4, '2016-5-10 20:07:44', '2016-5-10 20:07:44'),
('#{_u[555%_ul]}', '#{_m[233252]}', '群里分享了这个，吃人、喝血、滚婴......还有两性关系，当一个深爱你的人变成深深的恨你该怎么办。', 5, '2016-5-10 20:07:11', '2016-5-10 20:07:11'),
('#{_u[556%_ul]}', '#{_m[233252]}', '全是血，感觉不够刺激啊，女丧尸复活不是僵尸肖恩那样的吧，不过我喜欢重口味。。。。', 5, '2016-5-10 20:06:55', '2016-5-10 20:06:55'),
('#{_u[557%_ul]}', '#{_m[233252]}', '情人节上映惊悚片你们胆子好大，犹豫要不要约女同事去，如果去了是不是就代表她喜欢我', 5, '2016-5-10 20:06:37', '2016-5-10 20:06:37'),
('#{_u[558%_ul]}', '#{_m[233252]}', '起码觉得的这部还是可以看的，食婴人还是挺恶心的，姑娘们不要随便看了吧，会做噩梦。', 5, '2016-5-10 20:06:11', '2016-5-10 20:06:11'),
('#{_u[559%_ul]}', '#{_m[233252]}', '其实我爸妈喜欢看惊悚片！但是我不敢，可以给他们买两张票，食婴人的太重口味了', 4, '2016-5-10 20:06:00', '2016-5-10 20:06:00'),
('#{_u[560%_ul]}', '#{_m[233252]}', '女主角挺好看，长得像我脑公张天爱啊啊啊啊啊啊啊，颜太美了，要弯了要弯了', 5, '2016-5-10 20:05:48', '2016-5-10 20:05:48'),
('#{_u[561%_ul]}', '#{_m[233252]}', '女演员不是很性感，脸还行，海报像恐怖游轮，预告片挺血腥，剧情希望能曲折点', 5, '2016-5-10 20:05:25', '2016-5-10 20:05:25'),
('#{_u[562%_ul]}', '#{_m[233252]}', '女人多的地方就是阴气重，婴儿也是个女婴吧，不对是老太太重新投胎吧，毛骨悚然。。。。。。', 5, '2016-5-10 20:05:03', '2016-5-10 20:05:03'),
('#{_u[563%_ul]}', '#{_m[233252]}', '你们觉得是人吃人可怕还是动物吃人可怕，我觉得无疑是前者，人是有思想的进化了的高级动物，丧尸人性了吧', 3, '2016-5-10 20:04:40', '2016-5-10 20:04:40'),
('#{_u[564%_ul]}', '#{_m[233252]}', '能不能不要放这么吓人的预告片，随便一点就不敢进网页啦，国内怎么越来越多惊悚片了。', 3, '2016-5-10 20:04:27', '2016-5-10 20:04:27'),
('#{_u[565%_ul]}', '#{_m[233252]}', '。。。。。我每次都是被女盆友逼着去看的，在影院里边看鬼边讲鬼，每次都是夜场。。。。', 4, '2016-5-10 20:03:48', '2016-5-10 20:03:48'),
('#{_u[566%_ul]}', '#{_m[233252]}', '竟然像张天爱，还以为串戏了，老太太好吓人，死了还要回来祸害人间，放过可怜的孕妇吧？', 5, '2016-5-10 20:03:10', '2016-5-10 20:03:10'),
('#{_u[567%_ul]}', '#{_m[233252]}', '刚看完“紫薇格格”的片子，一点也不嗨，惊悚片全拍成悬疑 犯罪 神经病，你们都有神经病吧。', 4, '2016-5-10 20:01:14', '2016-5-10 20:01:14'),
('#{_u[568%_ul]}', '#{_m[233252]}', '感觉比死神来了有意思，无尽的等待死亡，一直虐才过瘾，直接死太无聊了', 5, '2016-5-10 20:00:54', '2016-5-10 20:00:54'),
('#{_u[569%_ul]}', '#{_m[233252]}', '吃婴儿的那个新闻是炒作，不要随便污蔑某省人，食人族是真实存在的，但是除非是极其偏僻的国度或者荒岛，不然早就被统治了吧', 4, '2016-5-10 20:00:36', '2016-5-10 20:00:36'),
('#{_u[570%_ul]}', '#{_m[233252]}', '不只是食人族还有食人花食人兽呢，有的深海里还有食人草、食人鱼呢，他们没有人类文明的训话，只是天性。', 3, '2016-5-10 20:00:16', '2016-5-10 20:00:16'),
('#{_u[571%_ul]}', '#{_m[233252]}', '不要手贱随便点，孩子被女尸吃了，日本兵给妇女解剖婴儿的感觉，真变态！！', 4, '2016-5-10 19:59:53', '2016-5-10 19:59:53'),
('#{_u[572%_ul]}', '#{_m[233252]}', '不要拍成香港僵尸鬼片就行，这辈子不想再看了，女主角好漂亮，身材估计不错吧，不露身材还看啥。', 5, '2016-5-10 19:59:36', '2016-5-10 19:59:36'),
('#{_u[573%_ul]}', '#{_m[233252]}', '比各种笔仙、碟仙、盒仙、许仙。。。。有意思吧，神叨的片真受不了，还是欧美的好看。', 5, '2016-5-10 19:59:15', '2016-5-10 19:59:15'),
('#{_u[574%_ul]}', '#{_m[233252]}', '把脸烧了的那块是怎么拍的，后期吗，听说的专业团队，又是国外团队帮拍的吧，国内效果可不行。。', 4, '2016-5-10 19:58:56', '2016-5-10 19:58:56'),
('#{_u[575%_ul]}', '#{_m[196282]}', '这片在时光也能得7分？？？！！！', 5, '2016-5-16 22:01:45', '2016-5-16 22:01:45'),
('#{_u[576%_ul]}', '#{_m[196282]}', '特效达到了国产片的新高度！', 3, '2016-5-15 13:46:15', '2016-5-15 13:46:15'),
('#{_u[577%_ul]}', '#{_m[196282]}', '陈坤不错，其他人演得有点重了，尤其是夏雨。。。您演话剧呢。。那么夸张。。。画面感觉还挺烧钱的，好像是比九层妖塔好一些。。。', 5, '2016-5-14 14:39:45', '2016-5-14 14:39:45'),
('#{_u[578%_ul]}', '#{_m[196282]}', '一个精彩而夸张的盗墓故事', 3, '2016-5-14 14:18:04', '2016-5-14 14:18:04'),
('#{_u[579%_ul]}', '#{_m[196282]}', '乌尔善的电影画面确实很漂亮，视觉效果不一般，算得上是国产佳作。', 4, '2016-5-13 16:29:25', '2016-5-13 16:29:25'),
('#{_u[580%_ul]}', '#{_m[196282]}', '【寻龙诀】真正的重金属“摸金范”摸金三人组鹤立鸡群 唯有八卦阵是本片的超级进化 彼岸花是最终宿命 剧本整齐划一的突出了每个角色的自身完整 严丝合缝的剧情理论把整体划分的很有条理 以80年代末为背景体现了故事的真实性 很真实的场景需要全方位的后期制作 地宫 机关 日本兵生化人及魔怪都具有可比性 所有的一切都证实了导演的超级想法和思想构造 制作出中国版的集合影片 难以想象简单的中心思想能造就出结合一体的鬼吹灯 堪称绝配  ', 5, '2016-5-13 0:29:46', '2016-5-13 0:29:46'),
('#{_u[581%_ul]}', '#{_m[196282]}', '国产佳作，陈坤已然成为实力派。夏雨这次“老汤”路线大赞！', 3, '2016-5-12 15:52:41', '2016-5-12 15:52:41'),
('#{_u[582%_ul]}', '#{_m[196282]}', '国产算好的', 5, '2016-5-10 23:02:53', '2016-5-10 23:02:53'),
('#{_u[583%_ul]}', '#{_m[196282]}', '陈坤的扮相真是奇怪~~~看了大半也没感认', 4, '2016-5-9 20:08:56', '2016-5-9 20:08:56'),
('#{_u[584%_ul]}', '#{_m[196282]}', '没看过原著，但觉得这故事改编的太一般了，没有惊喜。', 5, '2016-5-9 19:13:15', '2016-5-9 19:13:15'),
('#{_u[585%_ul]}', '#{_m[196282]}', '一般，不妨一看', 3, '2016-5-7 23:14:51', '2016-5-7 23:14:51'),
('#{_u[586%_ul]}', '#{_m[196282]}', '故事平淡无奇，娱乐性也不强，还不如狄仁杰一，就靠特效和几个演员撑着了。', 4, '2016-5-7 19:13:22', '2016-5-7 19:13:22'),
('#{_u[587%_ul]}', '#{_m[196282]}', '特效做得很好，剧情发展的节奏很好，故事讲得很清楚。还是觉得舒淇和黄渤演的自然随意，陈坤的形象和角色定位虽突破以往，有点紧绷。', 3, '2016-5-7 11:01:50', '2016-5-7 11:01:50'),
('#{_u[588%_ul]}', '#{_m[196282]}', '陈坤确实有看点，baby还是戴美瞳好看。故事编的乱七八糟，晓庆姐气场真足，日本跟班小妹是从杀死比尔片场过来帮忙的？', 5, '2016-5-4 20:06:41', '2016-5-4 20:06:41'),
('#{_u[589%_ul]}', '#{_m[196282]}', '画面不错，演员的演技也不错，值得一看！', 5, '2016-5-2 11:41:28', '2016-5-2 11:41:28'),
('#{_u[590%_ul]}', '#{_m[196282]}', '有黄渤就有保障，不过本片里夏雨演的角色才是亮点啊，各种正面负面都齐活了。特效也不错，大部分预算都花在那了吧...', 5, '2016-5-1 17:59:35', '2016-5-1 17:59:35'),
('#{_u[591%_ul]}', '#{_m[196282]}', '打斗多于倒斗，打人多于打粽子，整个电影更像是一部解谜类动作游戏的攻略……但是特效，场景包括结尾的职员表动画都做得很好（结尾动画才是正片2333）！剧情跟原著好像也没什么大联系有点扯，就当是一部同人了~LOL PS：学到一句四川骂人的话233！', 5, '2016-4-30 21:30:14', '2016-4-30 21:30:14'),
('#{_u[592%_ul]}', '#{_m[196282]}', '盗墓没怎么讲，可以说就是探险片，还是可以看。', 4, '2016-4-30 17:18:59', '2016-4-30 17:18:59'),
('#{_u[593%_ul]}', '#{_m[196282]}', '国产好片，已经不错了。7分。', 5, '2016-4-28 8:58:12', '2016-4-28 8:58:12'),
('#{_u[594%_ul]}', '#{_m[196282]}', '蒙古小胖子好抢戏~', 5, '2016-4-27 21:29:11', '2016-4-27 21:29:11'),
('#{_u[595%_ul]}', '#{_m[196282]}', '忍不住喊waaao!星爷你看看人家寻龙诀拍的，这特效，这演技，这镜头运用，这对白，不像你那美人鱼，照稿朗诵，最后画面嘴型都对不上。这片让我对国产电影刮目相看!简直了~', 5, '2016-4-27 18:39:03', '2016-4-27 18:39:03'),
('#{_u[596%_ul]}', '#{_m[196282]}', '還原了原著最具特色的鬥嘴鼓、和角色間的對話與口號的俗諺順口溜，透過黃渤與夏雨的詮釋，有種看相聲的錯覺。故事其實過於簡單，轉折也太過容易，說精采卻也不過癮。', 3, '2016-4-26 9:55:40', '2016-4-26 9:55:40'),
('#{_u[597%_ul]}', '#{_m[196282]}', '值得看，陈坤 黄渤 舒淇演得都不错', 4, '2016-4-21 11:46:08', '2016-4-21 11:46:08'),
('#{_u[598%_ul]}', '#{_m[196282]}', '国产影片能拍出如此惊艳的效果万分惊喜，技术无可挑剔，剧情流畅，人物性格鲜明，尤其是夏雨的角色印象深刻，陈坤和黄渤的演绎同样精彩。', 3, '2016-4-18 12:20:04', '2016-4-18 12:20:04'),
('#{_u[599%_ul]}', '#{_m[196282]}', '戏不够爱情凑是吗？', 5, '2016-4-18 1:52:25', '2016-4-18 1:52:25'),
('#{_u[600%_ul]}', '#{_m[196282]}', '还行吧，故事稍扯了点。', 3, '2016-4-16 0:13:18', '2016-4-16 0:13:18'),
('#{_u[601%_ul]}', '#{_m[196282]}', '虽然没看过原著，但电影的故事还是讲的不错的，很精彩，还有特效算是看过的国产片里最好的了。', 4, '2016-4-14 15:38:08', '2016-4-14 15:38:08'),
('#{_u[602%_ul]}', '#{_m[222673]}', '火了有一个星期吗', 5, '2016-5-15 20:56:40', '2016-5-15 20:56:40'),
('#{_u[603%_ul]}', '#{_m[222673]}', '实在一般，难以称之为电影', 5, '2016-5-1 16:44:07', '2016-5-1 16:44:07'),
('#{_u[604%_ul]}', '#{_m[222673]}', '刚看，良心评分。这是典型的报复社会啊！我可是给了“兽交”的奋斗史6分啊。', 4, '2016-4-26 6:51:05', '2016-4-26 6:51:05'),
('#{_u[605%_ul]}', '#{_m[222673]}', '瞎逼演，瞎逼看吧。', 3, '2016-4-23 18:15:25', '2016-4-23 18:15:25'),
('#{_u[606%_ul]}', '#{_m[222673]}', '还可以   挺好笑的', 4, '2016-4-20 4:25:40', '2016-4-20 4:25:40'),
('#{_u[607%_ul]}', '#{_m[222673]}', '万万没想到，大圣也能如此无奈，影片最搞笑的就是在金钟罩里的唐僧师徒，那台词编的，绝了。', 4, '2016-4-19 12:29:29', '2016-4-19 12:29:29'),
('#{_u[608%_ul]}', '#{_m[222673]}', '除了狗狗和杨子姗一无是处。这就是近两年最红的网剧么？', 3, '2016-4-18 23:03:32', '2016-4-18 23:03:32'),
('#{_u[609%_ul]}', '#{_m[222673]}', '我的天哪，叫兽你这么能拍出这样的东西？这还是以前那个叫兽吗？整部电影除了有个师徒四人以外和西游有关吗？还是好好的拍网剧吧，你看为了宣传电影《万万3》都拍成什么鬼了。', 4, '2016-4-18 11:08:52', '2016-4-18 11:08:52'),
('#{_u[610%_ul]}', '#{_m[222673]}', '我的天哪，叫兽你这么能拍出这样的东西？这还是以前那个叫兽吗？整部电影除了有个师徒四人以外和西游有关吗？还是好好的拍网剧吧，你看为了宣传电影《万万3》都拍成什么鬼了。', 4, '2016-4-18 11:08:07', '2016-4-18 11:08:07'),
('#{_u[611%_ul]}', '#{_m[222673]}', '看完琢磨了下感觉也没演啥啊，感觉是网络段子大荟萃～', 4, '2016-4-17 23:35:10', '2016-4-17 23:35:10'),
('#{_u[612%_ul]}', '#{_m[222673]}', '我觉得给5分都算是比较高的了，基本套路就是搞搞网络剧，用用当下的流行语，然后再叫孔连顺反串，来个搞基的，不过电影里连这些都没有，葛布也几乎是来打酱油的', 3, '2016-4-17 12:15:33', '2016-4-17 12:15:33'),
('#{_u[613%_ul]}', '#{_m[222673]}', '不知道是认真讲故事还是认真搞笑的，不伦不类', 5, '2016-4-16 17:41:30', '2016-4-16 17:41:30'),
('#{_u[614%_ul]}', '#{_m[222673]}', '网络剧还能学学《总而言之》，真拍剧情长片了，没有了参考，叫兽的真实水平就展现出来了。虽然没有什么特别差的地方，但的确是不及格的水平。', 4, '2016-4-14 10:39:35', '2016-4-14 10:39:35'),
('#{_u[615%_ul]}', '#{_m[222673]}', '主题电影贴着万万没想到的碎片。我希望看到的是万万没想到风格的电影，或许要求有点高吧', 5, '2016-4-13 20:38:25', '2016-4-13 20:38:25'),
('#{_u[616%_ul]}', '#{_m[222673]}', '我就是来看看陈柏霖……如果作为网剧还是很好的，作为电影就应该用电影的标准去评价。叫兽易小星也觉得拍成电影就应该用电影的语言去做电影，但是毕竟他擅长的目前是网剧，而且这么多年网剧做下来习惯也不是一朝一夕就能改变的，还是有些为难了……', 3, '2016-4-12 20:20:52', '2016-4-12 20:20:52'),
('#{_u[617%_ul]}', '#{_m[222673]}', '人妖恋是没有结果的，何况，连妖都不如……', 5, '2016-4-12 11:20:17', '2016-4-12 11:20:17'),
('#{_u[618%_ul]}', '#{_m[222673]}', '前面的桥段我会觉得是俗不可耐，拿庸俗当好笑，但看到后面，居然禁不住的感动，现在国内的社会戾气很重，动不动就动手，越来越没有人遵守规则，对待不合理的现象也越来越默然，漠然，要改变它不应该是逃离，而应该是人人贡献一点力量，去改变它，重新树立良好的风气。这样我们的社会才有救。', 4, '2016-4-5 17:57:05', '2016-4-5 17:57:05'),
('#{_u[619%_ul]}', '#{_m[222673]}', '因为没有抱太大期待，反而觉得小制作喜剧片也就这样也可以接受。', 3, '2016-4-5 17:15:41', '2016-4-5 17:15:41'),
('#{_u[620%_ul]}', '#{_m[222673]}', '杨子珊真是我的菜啊', 5, '2016-4-4 15:38:15', '2016-4-4 15:38:15'),
('#{_u[621%_ul]}', '#{_m[222673]}', '比之前想的要好很多，本以为就是像十万个冷笑话一样搞搞笑就算了，没想到电影不单有笑料还有泪点，剧情也很不错。', 4, '2016-4-2 22:41:47', '2016-4-2 22:41:47'),
('#{_u[622%_ul]}', '#{_m[222673]}', '叫兽还是回归网络吧，上荧幕还有很多路要走。', 4, '2016-4-2 12:25:56', '2016-4-2 12:25:56'),
('#{_u[623%_ul]}', '#{_m[222673]}', '作为万万粉，笑点真的挺逗的，剧情什么的暂且不那么追究了吧', 5, '2016-4-1 20:13:35', '2016-4-1 20:13:35'),
('#{_u[624%_ul]}', '#{_m[222673]}', '上次被十万个冷笑话伤到，这个倒是出乎意料，比同档期的另外两部喜剧搞笑多了', 4, '2016-3-29 23:00:06', '2016-3-29 23:00:06'),
('#{_u[625%_ul]}', '#{_m[222673]}', '自从《后会无期》上映，我对韩寒从粉转路人，然后经历了《万万没想到》以后，我路人转黑了。《万万没想到》绝对是韩寒一生的污点，其他的污点都可以包容，这部电影无法容忍，它的存在简直是败坏行业的风气！', 4, '2016-3-29 19:12:05', '2016-3-29 19:12:05'),
('#{_u[626%_ul]}', '#{_m[222673]}', '首先意外的觉得本片其实很好看，第二个意外是时光上的评价非常的低。本片首先有一个商业类型片的基本架构加上叫兽网剧个人风格，两者的结合还可以。', 5, '2016-3-27 22:03:17', '2016-3-27 22:03:17'),
('#{_u[627%_ul]}', '#{_m[222673]}', '很雷人的影片，但是很有意思', 5, '2016-3-27 10:21:58', '2016-3-27 10:21:58'),
('#{_u[628%_ul]}', '#{_m[222673]}', '我只想说…叫兽！太失望了！！', 3, '2016-3-26 22:05:50', '2016-3-26 22:05:50'),
('#{_u[629%_ul]}', '#{_m[211983]}', '景色倒是不错，拍成纪录片了，，剧情东拉西扯', 3, '2016-5-14 23:27:11', '2016-5-14 23:27:11'),
('#{_u[630%_ul]}', '#{_m[211983]}', '有运动无剧情。', 5, '2016-5-14 21:49:51', '2016-5-14 21:49:51'),
('#{_u[631%_ul]}', '#{_m[211983]}', '视觉冲击力很足，向不断挑战大自然的人致敬', 5, '2016-5-14 0:57:56', '2016-5-14 0:57:56'),
('#{_u[632%_ul]}', '#{_m[211983]}', '极限运动大合集吧', 5, '2016-5-11 21:45:47', '2016-5-11 21:45:47'),
('#{_u[633%_ul]}', '#{_m[211983]}', '向极限运动致敬，纯粹视觉享受的电影，要看剧情就换一部吧。最后委内瑞拉的天使瀑布有机会一定要去看看。', 5, '2016-5-7 12:41:30', '2016-5-7 12:41:30'),
('#{_u[634%_ul]}', '#{_m[211983]}', '视觉给满分，电影剧情固然薄弱，但光看各种极限运动已经让普通观众血脉喷张叹为观止了，另外这些男演员确定不是穿着肌肉外套吗', 3, '2016-5-7 7:09:11', '2016-5-7 7:09:11'),
('#{_u[635%_ul]}', '#{_m[211983]}', '极盗者一部绝对吸引眼球的电影。一部用电脑看都能让你肾上腺素提升的电影。一部根本不用动脑的电影。一部完全琢磨不透结尾的电影。一部轻松娱乐消遣的电影。一部内在含义完全看不懂的电影。一部还是值得一看的电影。推荐给大家[呲牙]', 3, '2016-5-4 14:01:10', '2016-5-4 14:01:10'),
('#{_u[636%_ul]}', '#{_m[211983]}', '极限运动的画面感真的是很惊人，但是情节就……', 5, '2016-5-3 18:35:50', '2016-5-3 18:35:50'),
('#{_u[637%_ul]}', '#{_m[211983]}', '我原本以为只是一个关于偷盗的故事，但是实际上这是一个关于信念、理想、坚持的故事。不管面对的是什么，人总是要探索生命的意义。这种意义不光是生命何来何止的哲学问题，而是困扰着每一个阶段的人们对自己的定位。', 4, '2016-5-3 17:23:53', '2016-5-3 17:23:53'),
('#{_u[638%_ul]}', '#{_m[211983]}', '挺壮观，但是总觉得哪里不对～', 5, '2016-5-3 14:47:15', '2016-5-3 14:47:15'),
('#{_u[639%_ul]}', '#{_m[211983]}', '人的荷尔蒙是很强大的，可以直面各种危险，好羡慕电影里的这些人，无拘无束可以做自己想做的，自己的身体是真正属于自己的，想活就活想死就可以正式死亡。', 4, '2016-5-2 17:16:36', '2016-5-2 17:16:36'),
('#{_u[640%_ul]}', '#{_m[211983]}', '以视觉为主的电影，观看时候确实非常过瘾，电影的主题还是环保题材，极限运动者通过完成所谓的挑战八项极端来向世界宣示“我们从地球索取的应该还与地球”，其实大家都知道这些都是胡扯，前三项的高楼跳伞、飞机跳伞和洞中穿越只是简单提一下，后几项挑战如冲浪、翼装飞行、滑雪、攀岩等才是重点，特别喜欢在世界最高瀑布-天使瀑布攀岩的那一段，景色壮观得不忍直视！不过电影的情节和人物内心刻画就不够严谨，总觉得似是而非牵强肤浅，感情戏几乎为零', 4, '2016-5-2 11:37:48', '2016-5-2 11:37:48'),
('#{_u[641%_ul]}', '#{_m[211983]}', '浪费时间，完全不知道想说什么。', 3, '2016-5-1 20:51:50', '2016-5-1 20:51:50'),
('#{_u[642%_ul]}', '#{_m[211983]}', 'Point.Break.2015.BD720P.X264.AAC.English.CHS-ENG.Mp4Ba', 4, '2016-5-1 13:47:39', '2016-5-1 13:47:39'),
('#{_u[643%_ul]}', '#{_m[211983]}', '极限大合集，画面音乐棒棒哒，剧情故事扯扯哒', 4, '2016-4-30 20:03:20', '2016-4-30 20:03:20'),
('#{_u[644%_ul]}', '#{_m[211983]}', '剧情真是渣，除了上天入地也没啥看头', 4, '2016-4-30 11:44:53', '2016-4-30 11:44:53'),
('#{_u[645%_ul]}', '#{_m[211983]}', '男主很精神，反派很魅力。场景很壮观，运动很刺激。', 5, '2016-4-29 1:37:32', '2016-4-29 1:37:32'),
('#{_u[646%_ul]}', '#{_m[211983]}', '那些人的生命就是不断地冒险，从不停止挑战自己，但也从不自诩为征服大自然，而是天人合一。尾崎八项，人生的终极目标。', 3, '2016-4-28 10:44:14', '2016-4-28 10:44:14'),
('#{_u[647%_ul]}', '#{_m[211983]}', '剧情牵强，但确实够酷！', 5, '2016-4-27 17:45:09', '2016-4-27 17:45:09'),
('#{_u[648%_ul]}', '#{_m[211983]}', '极限运动宣传片，有几项运动让看的人也感觉惊心动魄。当然，毫无剧情可言。', 3, '2016-4-24 17:57:42', '2016-4-24 17:57:42'),
('#{_u[649%_ul]}', '#{_m[211983]}', '剧情的叛变冲突反而没啥意思，我就是冲着极限运动来的！！！', 4, '2016-4-24 9:04:55', '2016-4-24 9:04:55'),
('#{_u[650%_ul]}', '#{_m[211983]}', '极限运动MV，故事没什么逻辑可言', 4, '2016-4-23 16:09:42', '2016-4-23 16:09:42'),
('#{_u[651%_ul]}', '#{_m[211983]}', '部分的场景还算得上精彩，对于极限运动的展现也比较专业，只是整个人物的塑造和故事的编排过于简单，和90年代简单的警匪动作电影一样的故事框架，整体比暴力街区差得很远。', 3, '2016-4-22 13:32:33', '2016-4-22 13:32:33'),
('#{_u[652%_ul]}', '#{_m[211983]}', '1991年美日合拍的《惊爆点》，如今被中美翻拍。不得不说，片中囊括各种极限运动，都非常惊险刺激，适合影院观赏。除了节奏慢了点，基本无缺点，要讨论剧情的请闭嘴。其实，我更想了解那位日本人的故事。21家媒体给34分，不理解了。', 3, '2016-4-20 17:49:47', '2016-4-20 17:49:47'),
('#{_u[653%_ul]}', '#{_m[211983]}', '无语，除了峡谷翼装飞行之外，全片无亮点，剧情脉络严重抄袭速激！', 5, '2016-4-19 23:20:18', '2016-4-19 23:20:18'),
('#{_u[654%_ul]}', '#{_m[211983]}', '这电影就是宣传极限运动，很无聊', 4, '2016-4-18 9:29:21', '2016-4-18 9:29:21'),
('#{_u[655%_ul]}', '#{_m[211983]}', '风景很美！', 5, '2016-4-17 21:00:18', '2016-4-17 21:00:18'),
('#{_u[656%_ul]}', '#{_m[216495]}', '节奏张弛有度', 5, '2016-5-15 17:50:44', '2016-5-15 17:50:44'),
('#{_u[657%_ul]}', '#{_m[216495]}', '这样的师父，这样的江湖，有点意思！', 4, '2016-5-15 1:16:26', '2016-5-15 1:16:26'),
('#{_u[658%_ul]}', '#{_m[216495]}', '好多年没看过这样好的国产电影了，上一部好像还是看《一九四二》的时候吧?好电影就是你看完了之后还会继续回味。本片通篇故事紧凑，表演可圈可点，廖凡演的好，他演过的角色能够跳出他的本色，这是非常难得的。武打场面尤其精彩，特别是最后在胡同的闯关，看得我心潮澎湃啊！只可惜这样的一部电影，票房并不理想，可能是宣传的原因吧，希望徐导演再接再厉，我欠你一张电影票，一定会还你的。', 5, '2016-5-11 16:29:25', '2016-5-11 16:29:25'),
('#{_u[659%_ul]}', '#{_m[216495]}', '不錯，很有水準的一位導演。', 4, '2016-5-8 13:08:38', '2016-5-8 13:08:38'),
('#{_u[660%_ul]}', '#{_m[216495]}', '用一天才来换开宗立派，野心糊了眼，强龙哪里躲得过地头蛇的算计。"一日为师，终生为父"的传承精神已变，传承又该如何继续。有人的地方就有江湖，江湖之道不可说。', 4, '2016-5-8 12:14:21', '2016-5-8 12:14:21'),
('#{_u[661%_ul]}', '#{_m[216495]}', '本片是徐导武侠三部曲里最棒的，片中各种冷兵器的武术套路真的可以用侠来形容，侠淋漓的贯彻到巧字上面，各种兵刃相接的擒敌与反制让人觉得古武术并非只有一介莽夫的力，高手过招全在巧思后灵活用力，徐导通过镜头，把武师的招式细节的设计的十分到位。不亏是行家，武指太惊艳了，正真做到了武与侠。看完此片后让人有大喊“爽”的行为。', 3, '2016-5-8 1:08:31', '2016-5-8 1:08:31'),
('#{_u[662%_ul]}', '#{_m[216495]}', '武术的传承之路有一种礼仪叫师傅，师傅的背后是血腥的武林', 4, '2016-5-7 18:28:25', '2016-5-7 18:28:25'),
('#{_u[663%_ul]}', '#{_m[216495]}', '写实并别具风格的一部功夫片。', 3, '2016-5-7 16:22:17', '2016-5-7 16:22:17'),
('#{_u[664%_ul]}', '#{_m[216495]}', '功夫就是要这么拍，写实！', 3, '2016-5-6 14:56:07', '2016-5-6 14:56:07'),
('#{_u[665%_ul]}', '#{_m[216495]}', '总体来说稍显乱，影片有种断断续续的感觉。中间一段诙谐的音乐挺不搭配的。', 5, '2016-5-4 9:57:02', '2016-5-4 9:57:02'),
('#{_u[666%_ul]}', '#{_m[216495]}', '动作不错，小打小闹', 5, '2016-5-3 18:40:54', '2016-5-3 18:40:54'),
('#{_u[667%_ul]}', '#{_m[216495]}', '光是那段巷战，就值得回味', 3, '2016-5-3 15:22:04', '2016-5-3 15:22:04'),
('#{_u[668%_ul]}', '#{_m[216495]}', '打起来有点老早老早功夫片的味道，少林搭棚大师那种，连说起话来都一套一套的', 5, '2016-5-3 0:41:29', '2016-5-3 0:41:29'),
('#{_u[669%_ul]}', '#{_m[216495]}', '接收不了这种形式的武侠…', 4, '2016-5-2 23:15:53', '2016-5-2 23:15:53'),
('#{_u[670%_ul]}', '#{_m[216495]}', '好看，越发喜欢廖凡了。', 3, '2016-5-1 20:43:06', '2016-5-1 20:43:06'),
('#{_u[671%_ul]}', '#{_m[216495]}', '巷战堪称华丽', 5, '2016-5-1 16:41:50', '2016-5-1 16:41:50'),
('#{_u[672%_ul]}', '#{_m[216495]}', '电影里的ring cigarette holder（戒指烟托）这个东西原来这么性感，电影的打斗细节像是发春的狼猫抱着大玩具后脚的无限踢，看着居然有些可爱……', 3, '2016-4-30 10:02:39', '2016-4-30 10:02:39'),
('#{_u[673%_ul]}', '#{_m[216495]}', '怎么我就看了盗版？', 4, '2016-4-29 14:30:16', '2016-4-29 14:30:16'),
('#{_u[674%_ul]}', '#{_m[216495]}', '台词精炼，武打干脆利落，相当凌厉的风格；讲述衰败的武林中挑战者的努力和下场；单看海报觉得廖凡的造型跟咏春相去甚远，但与片中一招致命的凌厉风格却十分般配；为了门派，大才耿良辰成了牺牲品；宋佳在片中十分有女人味！', 4, '2016-4-28 21:34:36', '2016-4-28 21:34:36'),
('#{_u[675%_ul]}', '#{_m[216495]}', '讲究!', 5, '2016-4-27 18:35:45', '2016-4-27 18:35:45'),
('#{_u[676%_ul]}', '#{_m[216495]}', '教科书般的电影  严谨但缺乏趣味', 5, '2016-4-25 13:53:14', '2016-4-25 13:53:14'),
('#{_u[677%_ul]}', '#{_m[216495]}', '武打戏不错，比较真实，竟能让我这死宅从眼花缭乱的招式套路中感受到武术之美，不过单线叙述撑不起它后面突如其来的转折，其他人物出场迟还没铺垫，让人脑补剧情是减分的，还有过于风格化的台词和表演一直让我很出戏，甚至发笑，对，太装逼了，武侠片耍点文艺是很好，但是本片又不是一代宗师那种含蓄，而是骚气，鸡皮疙瘩都起来了(╯▽╰)', 5, '2016-4-24 18:29:22', '2016-4-24 18:29:22'),
('#{_u[678%_ul]}', '#{_m[216495]}', '果然不同，手起刀落，见不得招式。不但是武行，片中各行各业的规矩和仪式感，包裹，推动着故事走向。精彩！台词如招式，一字千金。', 3, '2016-4-24 14:53:00', '2016-4-24 14:53:00'),
('#{_u[679%_ul]}', '#{_m[216495]}', '電影裡存在著一項跨時代真理，那就是這個世界是屬於「真功夫輸假功夫」的時代', 5, '2016-4-23 8:18:48', '2016-4-23 8:18:48'),
('#{_u[680%_ul]}', '#{_m[216495]}', '武戏写实，文戏干练，话不多说，事不多讲，纯粹还原真实的江湖', 4, '2016-4-20 23:12:22', '2016-4-20 23:12:22'),
('#{_u[681%_ul]}', '#{_m[216495]}', '師父裡存在著一項跨時代真理，那就是這個世界是屬於「真功夫輸假功夫」的時代', 3, '2016-4-20 10:29:17', '2016-4-20 10:29:17'),
('#{_u[682%_ul]}', '#{_m[216495]}', '风格很特别，打斗也不拖泥带水', 3, '2016-4-19 21:36:35', '2016-4-19 21:36:35'),
('#{_u[683%_ul]}', '#{_m[219623]}', '对于电影《睡在上铺的兄弟》《年少那首歌》《狐朋狗友》《奔爱》《恶棍天使》及其宣传曲还有《过年好》的宣传曲，就一个感觉:恶心，低俗，太屌丝，破垃圾', 4, '2016-5-16 20:00:38', '2016-5-16 20:00:38'),
('#{_u[684%_ul]}', '#{_m[219623]}', '标标准准、彻彻底底的大烂片，那种强行放入的笑点，让人看得很难受！', 4, '2016-5-12 13:44:03', '2016-5-12 13:44:03'),
('#{_u[685%_ul]}', '#{_m[219623]}', '很搞笑', 4, '2016-5-10 9:15:11', '2016-5-10 9:15:11'),
('#{_u[686%_ul]}', '#{_m[219623]}', '毫无笑点的喜剧，你成功了', 4, '2016-4-30 23:00:52', '2016-4-30 23:00:52'),
('#{_u[687%_ul]}', '#{_m[219623]}', '邓超孙俪两夫妻能文能武，装疯卖傻到爆，影片傻中带笑，笑中带泪，大家乐呵乐呵得了。', 3, '2016-4-24 12:23:43', '2016-4-24 12:23:43'),
('#{_u[688%_ul]}', '#{_m[219623]}', '邓超欠俞白眉的钱什么时候能还清？', 3, '2016-4-21 20:15:52', '2016-4-21 20:15:52'),
('#{_u[689%_ul]}', '#{_m[219623]}', '其实之前那部《分手大师》我还算喜欢，虽然已经记不得演的是什么了。这次变本加厉，更加癫狂了。邓超要把这种风格一直延续下去吗？不适合他，更不适合观众。毕竟不管怎样的天马行空，也是要有真的感情在里面，而不是拼凑虚假廉价的情感点。', 4, '2016-4-17 11:50:34', '2016-4-17 11:50:34'),
('#{_u[690%_ul]}', '#{_m[219623]}', '其实之前那部《分手大师》我还算喜欢，虽然已经记不得演的是什么了。这次变本加厉，更加癫狂了。邓超要把这种风格一直延续下去吗？不适合他，更不适合观众。毕竟不管怎样的天马行空，也是要有真的感情在里面，而不是拼凑虚假廉价的情感点。', 4, '2016-4-17 11:49:52', '2016-4-17 11:49:52'),
('#{_u[691%_ul]}', '#{_m[219623]}', '主创是有多缺钱，科科', 3, '2016-4-15 21:56:12', '2016-4-15 21:56:12'),
('#{_u[692%_ul]}', '#{_m[219623]}', '笑点很经典啊 剧情也很好 为什么这么低分', 5, '2016-4-10 0:05:36', '2016-4-10 0:05:36'),
('#{_u[693%_ul]}', '#{_m[219623]}', '一切都在向星爷致敬', 3, '2016-4-5 20:45:03', '2016-4-5 20:45:03'),
('#{_u[694%_ul]}', '#{_m[219623]}', '陪老公拍这片，孙俪对邓超是真爱', 4, '2016-4-4 21:39:32', '2016-4-4 21:39:32'),
('#{_u[695%_ul]}', '#{_m[219623]}', '为什么我觉得还可以，娘娘演技很到位，邓超虽然夸张了一点，但是感觉很有张力没有过度，剧情发展也合情合理，有些无厘头，但不荒诞，只有我一个人觉得还不错吗😂😂😂', 3, '2016-4-3 0:39:14', '2016-4-3 0:39:14'),
('#{_u[696%_ul]}', '#{_m[219623]}', '做作了', 5, '2016-4-1 22:30:41', '2016-4-1 22:30:41'),
('#{_u[697%_ul]}', '#{_m[219623]}', '邓超是带上媳妇豁出去了！', 5, '2016-3-31 0:57:37', '2016-3-31 0:57:37'),
('#{_u[698%_ul]}', '#{_m[219623]}', '邓氏喜剧，欣赏不来。', 4, '2016-3-30 19:02:25', '2016-3-30 19:02:25'),
('#{_u[699%_ul]}', '#{_m[219623]}', '不知道如何评价了', 5, '2016-3-29 23:02:46', '2016-3-29 23:02:46'),
('#{_u[700%_ul]}', '#{_m[219623]}', '真心不搞笑，不过孙俪演技依旧很棒！', 3, '2016-3-27 19:58:34', '2016-3-27 19:58:34'),
('#{_u[701%_ul]}', '#{_m[219623]}', '孙俪真的…走心了！超哥自己的电影一点也不有心', 4, '2016-3-26 22:04:05', '2016-3-26 22:04:05'),
('#{_u[702%_ul]}', '#{_m[219623]}', '4分中有1分是演员卖力的同情分~笑点太生硬，情节很无趣，后半段着实耐着性子快进到最后算看完', 3, '2016-3-24 23:25:38', '2016-3-24 23:25:38'),
('#{_u[703%_ul]}', '#{_m[219623]}', '为了搞笑而搞笑不是好喜剧', 3, '2016-3-24 17:59:07', '2016-3-24 17:59:07'),
('#{_u[704%_ul]}', '#{_m[219623]}', '画面太美，我但不忍直视了。。邓超和孙俪要不要这样啊，真是天雷滚滚', 3, '2016-3-23 17:29:07', '2016-3-23 17:29:07'),
('#{_u[705%_ul]}', '#{_m[219623]}', '就这样吧', 4, '2016-3-23 8:55:51', '2016-3-23 8:55:51'),
('#{_u[706%_ul]}', '#{_m[219623]}', '听了那么多的负面评价，也认真的看了一遍片子，其实说实话虽然不是什么精彩的好片子，但是凑合看看也能看的下去。大家反感的主要原因，也许就是邓超在这部片中的无厘头搞笑，似乎演的过于夸张，换句话说，如果放在20年前由周星驰主演这个角色，也许就是另外一个评价；看惯了孙俪的众多连续剧，再看片中査小刀那神神叨叨的形象，可能也是这部片子差评的主要原因吧。整体故事情节还算完整，虽有夸张但不至于低到5分以下，看来该片还是有被黑的嫌疑啊。。', 5, '2016-3-22 18:28:13', '2016-3-22 18:28:13'),
('#{_u[707%_ul]}', '#{_m[219623]}', '比万万没想到强多了，真的', 3, '2016-3-21 15:06:06', '2016-3-21 15:06:06'),
('#{_u[708%_ul]}', '#{_m[219623]}', '音画及格，其他简直惨不忍睹，话说孙俪成名后，在大银幕上真没有拿得出手的角色。', 5, '2016-3-21 8:59:16', '2016-3-21 8:59:16'),
('#{_u[709%_ul]}', '#{_m[219623]}', '不知道为什么分这么低  真实自己看过之后我觉得  很不错的喜剧  孙俪的形象很有突破  很好看啊', 5, '2016-3-21 8:56:58', '2016-3-21 8:56:58'),
('#{_u[710%_ul]}', '#{_m[217699]}', '影片观感意外的好 的确是国产片的惊喜之作 但情节冲突的编排都透着一股小题大做的作劲儿 和这群老炮儿体现出来的气场有些违和 搂不太住 不过这是在国内 情有可原 打架斗殴已经很叛逆了 也就不要求更多了 如果有一个更好的创作环境 片子会更优 PS：吴亦凡 李易峰 掏粪 嗯 管虎很懂阴阳八卦', 4, '2016-5-15 21:20:02', '2016-5-15 21:20:02'),
('#{_u[711%_ul]}', '#{_m[217699]}', '只看故事就太老套了，背景才是真正的，固化的社会，可以说此情此境和新闻联播一样从来没有改变。', 5, '2016-5-10 16:03:59', '2016-5-10 16:03:59'),
('#{_u[712%_ul]}', '#{_m[217699]}', '看得有点久了,记得当时感慨挺深,对义气,对家庭,对责任的感慨,不同的年代,不同的生活,吴亦凡真的挺帅', 5, '2016-5-9 16:15:30', '2016-5-9 16:15:30'),
('#{_u[713%_ul]}', '#{_m[217699]}', '六爷演得很生动！', 5, '2016-5-9 12:48:46', '2016-5-9 12:48:46'),
('#{_u[714%_ul]}', '#{_m[217699]}', '当今社会缺少了讲规矩的江湖气。', 4, '2016-5-9 0:06:23', '2016-5-9 0:06:23'),
('#{_u[715%_ul]}', '#{_m[217699]}', '表面糙，情感内核挺细腻的。故事有想法只是后半段转折太硬，煽情稍过。冯小刚表演到位，许晴的角色也十分出彩。', 4, '2016-5-8 23:09:32', '2016-5-8 23:09:32'),
('#{_u[716%_ul]}', '#{_m[217699]}', '最不易的坚守', 4, '2016-5-8 17:35:09', '2016-5-8 17:35:09'),
('#{_u[717%_ul]}', '#{_m[217699]}', '冯爷确实演的不错，觉得李易峰还不是很适应大银幕，吴亦凡有发展', 3, '2016-5-8 12:52:13', '2016-5-8 12:52:13'),
('#{_u[718%_ul]}', '#{_m[217699]}', '看着有一种凄凉的感觉，给的分数很高，其实也没那么好，但是每一个分项都感觉不错，只有一点不爽，最后的结局把逼格提高了', 3, '2016-5-5 13:34:47', '2016-5-5 13:34:47'),
('#{_u[719%_ul]}', '#{_m[217699]}', '煽情到位，节奏流畅，表演十分出色，可惜没有逻辑的情怀和优秀表演扭转不了尴尬的价值观输出，诚然现在的时代不是最好的，可六爷怀念的时代难道就是？电影自以为是的混淆了落寞的伤感和对于尊严的坚守，草莽气有余，英雄气全无，一个人对抗时代的设想固然大气，奈何作为切入点的主角实在难堪大用。', 4, '2016-5-4 17:41:07', '2016-5-4 17:41:07'),
('#{_u[720%_ul]}', '#{_m[217699]}', '燃点不够。', 4, '2016-5-4 9:07:17', '2016-5-4 9:07:17'),
('#{_u[721%_ul]}', '#{_m[217699]}', '感觉还可以，特别是最后那里冯小刚拿着刀向前冲的时候还是有点儿感人。我以为最后是坏人得逞了，哪里知道来个中纪委。。。说实话，现实里根本不可能实现！冯小刚演技不错！', 4, '2016-5-3 21:42:40', '2016-5-3 21:42:40'),
('#{_u[722%_ul]}', '#{_m[217699]}', '没想到冯导的演技还挺不错滴', 3, '2016-5-3 10:19:15', '2016-5-3 10:19:15'),
('#{_u[723%_ul]}', '#{_m[217699]}', '看了没有那么热血 吴亦凡挺精神', 4, '2016-5-3 0:53:34', '2016-5-3 0:53:34'),
('#{_u[724%_ul]}', '#{_m[217699]}', '就我说补漆那事吧有点牵强，三小时版本估计是不会有了，应该是戳到哪个的痛处了', 4, '2016-5-2 21:25:22', '2016-5-2 21:25:22'),
('#{_u[725%_ul]}', '#{_m[217699]}', '一部让人回味的电影，拍出了一代人的精气神！', 3, '2016-5-2 19:48:49', '2016-5-2 19:48:49'),
('#{_u[726%_ul]}', '#{_m[217699]}', '新旧江湖的火花，社会虽然变了，但是规矩终归要遵守的！', 3, '2016-5-2 16:21:20', '2016-5-2 16:21:20'),
('#{_u[727%_ul]}', '#{_m[217699]}', '很不错，值得一看。', 4, '2016-5-2 11:30:00', '2016-5-2 11:30:00'),
('#{_u[728%_ul]}', '#{_m[217699]}', '检举那段应该是为了审片能过特意加的，全片基调在那就断了', 3, '2016-5-1 1:13:23', '2016-5-1 1:13:23'),
('#{_u[729%_ul]}', '#{_m[217699]}', '绝望的电影', 4, '2016-4-30 10:04:32', '2016-4-30 10:04:32'),
('#{_u[730%_ul]}', '#{_m[217699]}', '六爷注定让人难忘，人生新老交替，生活里的故事却永远继续。看父辈衰老着的同时，我们又何尝不是慢慢的也一步一步走向同一个地方？！', 3, '2016-4-29 22:30:19', '2016-4-29 22:30:19'),
('#{_u[731%_ul]}', '#{_m[217699]}', '前半部分积聚了巨大的能量 ，本以为可以在后边爆发没想到却虎头蛇尾了，不知道到底想强调的是江湖还是局势，最后弄的四不像', 3, '2016-4-28 21:36:05', '2016-4-28 21:36:05'),
('#{_u[732%_ul]}', '#{_m[217699]}', '情迷江湖，人为老炮', 5, '2016-4-27 20:42:34', '2016-4-27 20:42:34'),
('#{_u[733%_ul]}', '#{_m[217699]}', '一部情怀大于叙事的电影，电影本身而言有许多值得商榷的的地方。小飞的转变太突兀，最后六爷诊断得癌症等。但电影的情怀还是让人感动，像北京的冬天一样，让人久久不能忘怀', 4, '2016-4-26 21:49:41', '2016-4-26 21:49:41'),
('#{_u[734%_ul]}', '#{_m[217699]}', '牢不可破的规矩！', 5, '2016-4-25 13:53:44', '2016-4-25 13:53:44'),
('#{_u[735%_ul]}', '#{_m[217699]}', '0000000000000000', 4, '2016-4-25 1:03:03', '2016-4-25 1:03:03'),
('#{_u[736%_ul]}', '#{_m[217699]}', '什么规矩、江湖、中纪委，一套套地装，讲圆了吗？居然还上7.9。。', 4, '2016-4-23 15:56:16', '2016-4-23 15:56:16')
})
Movie.all.each{|movie|movie.update_ratings!}
