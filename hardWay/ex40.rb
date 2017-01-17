class Song
    def initialize(lyrics)
        @lyrics = lyrics
        @tangerine = "Running from the men"
    end

    attr_reader :tangerine

    def sing_me_a_song()
        @lyrics.each {|line| puts line}
    end


end

happy_bday = Song.new(["Happy birthday to you",
            "Happy birthday to me."])

marry_poppins = Song.new(["Just a spoon full of sugar",
                "Helps the medicine go down."])

lyrics = ["Don't stop me know", "Ia m having such a good time"]

unstoppoble = Song.new(lyrics)

unstoppoble.sing_me_a_song()

happy_bday.sing_me_a_song()

marry_poppins.sing_me_a_song()

puts unstoppoble.tangerine
