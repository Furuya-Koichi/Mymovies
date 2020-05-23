class Movie < ApplicationRecord
  # # validates :youtube_url, :title, presence: true
  # belongs_to :user, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  def self.search(search)
    return Movie.all unless search
    Movie.where('title LIKE(?)', "%#{search}%")
  end

  def bookmark_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end
  
  mount_uploader :move, MoveUploader
end
