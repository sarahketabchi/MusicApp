class Band < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :artists
  has_many :recordings
  has_many :songs, :through => :recordings

  # in process of testing
  def self.recorded_same_song_multiple
  	Band
  		.select('bands.*, COUNT(*) AS song_count')
  		.joins(:songs)
  		.group('songs.id')
  		.having('song_count > 1')
  end
end
