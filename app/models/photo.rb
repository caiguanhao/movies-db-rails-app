class Photo < ActiveRecord::Base
  belongs_to :movie

  TYPES = {
    'stage'   => '剧照',
    'poster'  => '海报',
    'work'    => '工作照',
    'news'    => '新闻图片',
    'desktop' => '桌面',
    'cover'   => '封套',
  }

  URL_TYPES = {
    'mtime' => '时光网',
  }
end
