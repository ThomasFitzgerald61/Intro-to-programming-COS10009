
class Track
	attr_accessor :name, :location

	def initialize (name, location)
		@name = name
		@location = location
	end
end

# Returns an array of tracks read from the given file
def read_tracks(music_file)

  count = music_file.gets().to_i()
  tracks = Array.new()

    track_counter_number = 0
  # Put a while loop here which increments an index to read the tracks
    while (track_counter_number < count )
            track = read_track(music_file)
            tracks << track
        track_counter_number += 1 # Increment index by one
    end
  return tracks
end

# reads in a single track from the given file.
def read_track(a_file)
    # complete this function
    # you need to create a Track here.
    track_name = a_file.gets()
    track_sound_path = a_file.gets()
    track = Track.new(track_name, track_sound_path)
    return track
end


# Takes an array of tracks and prints them to the terminal
def print_tracks(tracks)

  # Use a while loop with a control variable index
  # to print each track. Use tracks.length to determine how
  # many times to loop.
    tracks_count = tracks.count
    track_counter_number = 0
  # Print each track use: tracks[index] to get each track record
  while (track_counter_number < tracks_count)
    print_track(tracks[track_counter_number])
    track_counter_number += 1 # Increment index by one
  end
end

# Takes a single track and prints it to the terminal
def print_track(track)
    puts (track.name)
        puts (track.location)
end

# Open the file and read in the tracks then print them
def main()
  a_file = File.new("input.txt", "r") # open for reading
    if a_file # if nil this will return false
        tracks = read_tracks(a_file)
        a_file.close
    else
        puts "unable to open file to read!"
    end
  # Print all the tracks
  print_tracks(tracks)
end

main()
