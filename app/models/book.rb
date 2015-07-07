class Book < ActiveRecord::Base
  has_many :posts, dependent: :destroy, inverse_of: :book

  validates :image_url, url: true
  validates :title, presence: true
end
