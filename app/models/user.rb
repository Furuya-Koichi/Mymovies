class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :movies, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_movies, through: :bookmarks, source: :board

  validates :name, presence: true, uniqueness: true
end
