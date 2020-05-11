class Movie < ApplicationRecord

  def self.search(search)
    return Movie.all unless search
    Movie.where('text LIKE(?)', "%#{search}%")
  end

end
