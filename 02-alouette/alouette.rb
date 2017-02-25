

class Alouette
  attr_reader

  #  lines_for_verse will do the work of
  #   generating all those `Et <part>!` lines for a given verse.
  #   It should return an array of strings, without repeats.
  #   For example, if you were to call `lines_for_verse(2)`,
  #   it would return  ["Et les yeux!", "Et le bec!", "Et la tête!"]
  #   Note that verses are 0-indexed.

  def lines_for_verse(verse)
    lines = []
          CSV.read("alouette_lyrics").each do |line|
            lines << lines end


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

  def verse(verse)



  end


  ### `sing`
  # `Alouette#sing` will build the entire song,
  # formatted as in [`alouette_lyrics.txt`](alouette_lyrics.txt).
  # There should be a blank line between verses and refrains.
  # The value returned should return a string.


  def sing

  end

end
