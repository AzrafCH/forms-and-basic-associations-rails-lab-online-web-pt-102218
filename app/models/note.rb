class Note < ActiveRecord::Base
  # add associations here
  belongs_to :songs

  def note_contents=(ids)
    ids.each do |id|
      notes = Song.find(id)
      self.songs << notes
    end
  end
end
