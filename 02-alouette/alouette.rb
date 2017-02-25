
# require_relative 'alouette_lyrics'
class Alouette
  attr_reader

# def initialize
#   @lines_for_verse = []
# end
  #  lines_for_verse will do the work of
  #   generating all those `Et <part>!` lines for a given verse.
  #   It should return an array of strings, without repeats.
  #   For example, if you were to call `lines_for_verse(2)`,
  #   it would return  ["Et les yeux!", "Et le bec!", "Et la tête!"]
  #   Note that verses are 0-indexed.

  # def self.lines_for_verse(verse)
  #   lines = []
  #   File.read("alouette_lyrics.txt").each_line { |line| lines << line.chop }
  #   lines.reject! { |line| line.empty? || line.include?("Alouette") || line.include?("plumerai") || line.include?("A-a-a-ah") }
  #   lines.uniq!
  #   line = []
  #   line << lines[verse]
  #
  #   @lines_for_verse = []
  #     i = verse
  #     until i < 0
  #       @lines_for_verse << lines[i]
  #       i -= 1
  #     end
  #     return @lines_for_verse
  # end

  def self.lines_for_verse(verse_number)
    lines = [
      "Et la tête!",
      "Et le bec!",
      "Et les yeux!",
      "Et le cou!",
      "Et les ailes!",
      "Et les pattes!",
      "Et la queue!",
      "Et le dos!"
    ]
    @lines_for_verse = []
    i = 0
    until i > verse_number
      @lines_for_verse.unshift(lines[i])
      i += 1
    end
    return @lines_for_verse
  end


  ### `verse`
  # `Alouette#verse` will build the requested verse.
  # It should return a string.
  # For example, if you were to call `verse(2)`, it would return
  # ```
  # Je te plumerai les yeux.
  # Je te plumerai les yeux.
  # Et les yeux!
  # Et les yeux!
  # Et le bec!
  # Et le bec!
  # Et la tête!
  # Et la tête!
  # Alouette!
  # Alouette!
  # A-a-a-ah
  # ```

  def self.verse(number)

    # "Je te plumerai la tête."
    # Je te plumerai la tête.
    # Et la tête!
    # Et la tête!
    # Alouette!
    # Alouette!
    # A-a-a-ah
    verse = ["Je te plumerai la tête.", "Je te plumerai la tête."]
    i = number
    while i >= 0
      verse << lines_for_verse(i)
      i -= 1
    end
    verse << ["Alouette!", "Alouette!", "A-a-a-ah"]
    verse_string = verse.join("\n")

    # .each do |line|
    # i = number
    # while i >= 0
    # puts line[i]
    # puts line[i]
    # i -= 1
    # end
    puts verse_string
  end


  ### `sing`
  # `Alouette#sing` will build the entire song,
  # formatted as in [`alouette_lyrics.txt`](alouette_lyrics.txt).
  # There should be a blank line between verses and refrains.
  # The value returned should return a string.


  def sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

  end

end
