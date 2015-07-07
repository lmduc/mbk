class Book < ActiveRecord::Base
  has_many :posts, dependent: :destroy, inverse_of: :book
end
