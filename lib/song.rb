class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@artists << artist
        @@genres << genre
    end

    def Song.count
        @@count
    end

    def Song.artists
        @@artists.uniq
    end

    def Song.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            if hash[genre] == nil
                hash[genre] = 1
            else
                hash[genre] += 1
            end
        end
        hash
    end

    def Song.artist_count
        hash = {}

        @@artists.each do |artist|
            if hash[artist] == nil
                hash[artist] = 1
            else
                hash[artist] += 1
            end
        end
        hash
    end

end