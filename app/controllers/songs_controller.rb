class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @song.album = Album.new
    @song.artists << Artist.new
  end

  def create
    @song = Song.new(song_params)

    artist_name = song_params[:artists_attributes]['0'][:name]

    artist = Artist.find_by(name: artist_name)

    unless artist.nil?
      @song.artists = [artist]
    end

    album_title = song_params[:album_attributes][:title]
    album = Album.find_by(title: album_title)

    unless album.nil?
      @song.album = album
    end

    if @song.save
      redirect_to songs_path
    else
      redirect_to new_song_path
    end

  end

  private

  def song_params
    params.require(:song).permit(:title, :length, :audio_file, artists_attributes: [:name], album_attributes: [:title])
  end

end
