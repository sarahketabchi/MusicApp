class Artist < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :band 

  has_many :authored_songs, :class_name => "Song", :foreign_key => :author_id

  has_many :performed_songs, :through => :bands, :source => :recordings


  # not complete
  def self.artists_authored_songs
  	songs = Artist
  		.select('artists.name')
  		.includes(:authored_songs)


  	authors_songs = {}
  	songs.each do |song|
  		#authors_songs[song.]
  		p song
  	end
  end
end
