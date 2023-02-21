require 'rubygems'
require 'gosu'

TOP_COLOR = Gosu::Color.new(0xFF1EB1FA)
BOTTOM_COLOR = Gosu::Color.new(0xFF1D4DB5)

module ZOrder
  BACKGROUND, PLAYER, UI = *0..2
end

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

GENRE_NAMES = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class ArtWork
  attr_accessor :bmp

  def initialize (file)
    @bmp = Gosu::Image.new(file)
  end
end

class Track
  attr_accessor :title, :location

  def initialize(title, location)
    @title = title
    @location = location
  end
end

class Album
  attr_accessor :title, :artist, :artwork, :tracks, :num_tracks

  def initialize(title, artist, artwork, num_tracks)
    @title = title
    @artist = artist
    @artwork = artwork
    @num_tracks = num_tracks
    @tracks = []
  end
end

class MusicPlayerMain < Gosu::Window
  def initialize
    super 600, 800
    self.caption = "Music Player"

    @albums = []
    @selected_album = nil
    @selected_track = nil
    @album_font = Gosu::Font.new(40)
    @track_font = Gosu::Font.new(25)
    @title_font = Gosu::Font.new(80)

    read_albums_from_file
  end

  def read_albums_from_file
    # read in album data from a file, create Album and Track objects
    # and store them in the @albums array
  end

  def draw_albums(albums)
    # draw the album images on the screen
  end

  def area_clicked(left_x, top_y, right_x, bottom_y)
    # detect if a mouse sensitive area has been clicked
  end

  def display_track(title, ypos)
    @track_font.draw(title, TrackLeftX, ypos, ZOrder::PLAYER, 1.0, 1.0, Gosu::Color::BLACK)
  end

  def play_track(track, album)
    @song = Gosu::Song.new(album.tracks[track].location)
    @song.play(false)
  end

  def draw_background
    draw_quad(0, 0, TOP_COLOR, width, 0, TOP_COLOR, 0, height, BOTTOM_COLOR, width, height, BOTTOM_COLOR, ZOrder::BACKGROUND)
  end

  def update
  end

  def draw
    draw_background
    draw_albums(@albums)

    if @selected_album
      # draw the tracks for the selected album
    end
  end

  def needs_cursor?
    true
  end

  def button_down(id)
    case id

