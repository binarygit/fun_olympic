class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  has_one_attached :video
  has_one_attached :thumbnail
end
