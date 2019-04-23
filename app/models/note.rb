class Note < ActiveRecord::Base
  # add associations here
  belongs_to :songs

  def note_contents=(notes)
    notes.each do |note|
      notes = Song.find(note)
      self.songs << notes
    end
  end
end
