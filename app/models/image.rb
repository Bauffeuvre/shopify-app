class Image < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :legend, presence: true
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :path, presence: true, unless: ->(photo){photo.present?}
  validates :photo, presence: true, unless: ->(image){image.path.present?}
  
end
