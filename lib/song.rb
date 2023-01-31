require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist =  artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        unique_artists_array = []
        @@artists.map do |artist|
            if unique_artists_array.include?(artist) == false
                unique_artists_array << artist
            else
                nil
            end
        end
        unique_artists_array
    end

    def self.genres
        unique_genres_array = []
        @@genres.map do |genre|
            if unique_genres_array.include?(genre) == false
                unique_genres_array << genre
            else
                nil
            end
        end
        unique_genres_array
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end