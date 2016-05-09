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

  before_save do
    if self.url_type == 'mtime'
      self.url = self.url.sub(/_.*\.jpg$/, '.jpg')
    end
  end
end
