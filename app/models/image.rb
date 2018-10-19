class Image < ApplicationRecord


  validates :isbn, presence: true,
            length: { maximum: 18 }
  validates :name, presence: true,
            length: { maximum: 64 }
  validates :language, length: { maximum: 16 }
  validates :script,  length: { maximum: 65535 }
  validates :link, presence: true,
            length: { maximum: 128 }
  validates :image_link,  length: { maximum: 128 }


  before_save do
    self.count ||= '0'
    self.date ||= Time.now.to_str
  end

end
