class Artist < ActiveRecord::Base
  # add associations here
  has_many :songs
  has_many :genres, through: :songs

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: artist_name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
