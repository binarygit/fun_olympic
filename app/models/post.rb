class Post < ApplicationRecord
  belongs_to :user

  has_many :likes
  has_many :comments

  has_one_attached :video
  has_one_attached :thumbnail

  before_save do
    num = rand(3)
    if num == 1
      self.recommended = true
    elsif num == 2
      self.recently_watched = true
    else
      self.trending = true
    end
  end
end
