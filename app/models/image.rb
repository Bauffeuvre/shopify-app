class Image < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy

   URL_REGEXP = /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix

  validates :title, presence: true
  validates :legend, presence: true
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :path, presence: true, unless: ->(photo){photo.present?}
  validates :path, format: { with: URL_REGEXP, message: 'You provided invalid URL' }
  validates :photo, presence: true, unless: ->(image){image.path.present?}
  
end
