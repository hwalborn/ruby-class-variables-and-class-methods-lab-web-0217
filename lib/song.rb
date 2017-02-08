require 'pry'

class Song
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count_hash = Hash.new(0)
  @@artist_count_hash = Hash.new(0)

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each{|genre|
      @@genre_count_hash[genre] += 1
    }
    @@genre_count_hash
  end

  def self.artist_count
    @@artists.each{|artist|
      @@artist_count_hash[artist] += 1
    }
    @@artist_count_hash
  end
end
