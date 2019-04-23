class Artist < ActiveRecord::Base
  # add associations here
  has_many :songs
  has_many :genres, through: :songs

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

end
