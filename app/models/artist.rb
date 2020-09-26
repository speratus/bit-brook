class Artist < ApplicationRecord
  has_many :song_artists
  has_many :songs

  has_many :album_artists
  has_many :albums
end
