class Artist < ActiveRecord::Base
  # add associations here
  has_many :songs
  has_many :genres, through: :songs

  def artist=(name)
    self.artist = Artist.find_or_create_by(name: artist_name)
  end

  def artist
    self.artist ? self.artist.name : nil
  end

end
