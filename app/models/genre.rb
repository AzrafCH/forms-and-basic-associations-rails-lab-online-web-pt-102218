class Genre < ActiveRecord::Base
  # add associations
  has_many :songs

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_id
    self.genre ? self.genre.name : nil
  end
end
