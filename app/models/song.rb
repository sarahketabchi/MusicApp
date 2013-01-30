class Song < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :author, :class_name => "Artist"

  has_many :recordings
  has_many :bands, :through => :recordings
end
