class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  belongs_to :country
  has_many :posts

  validates :username, :phone_number, presence: true, uniqueness: true
  validates :full_name, presence: true
end
