class Movie < ApplicationRecord

  def self.search(search)
    return Movie.all unless search
    Movie.where('title LIKE(?)', "%#{search}%")
  end

end
