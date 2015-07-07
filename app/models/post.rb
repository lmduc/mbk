class Post < ActiveRecord::Base
  belongs_to :book

  validates :title, presence: true
  validates :body, presence: true

  accepts_nested_attributes_for :book
end
