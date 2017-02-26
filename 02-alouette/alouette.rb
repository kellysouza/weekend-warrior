
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
    bits = lines_for_verse(number)[0].sub(/\s*[\w']+\s+/, "").chop
    start = ["Je te plumerai #{bits}.", "Je te plumerai #{bits}."]
    middle = lines_for_verse(number)
    ending = ["Alouette!", "Alouette!", "A-a-a-ah"] #<< "\n"
    middle = middle.zip(middle).flatten.compact
    verses = [start, middle, ending].join("\n")
    return verses
  end

  def self.sing

    i = 0
    song = []
    until i > 7
      song << "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
      song << verse(i)
      song << "\n\n"
      i +=1
    end
    song << "Alouette, gentille alouette,\nAlouette, je te plumerai."
    return song.join
  end

end
