# frozen_string_literal: true

class BeerSong
  def self.verse(verse)
    case verse
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{verse} bottles of beer on the wall, #{verse} bottles of beer.\n" \
        "Take one down and pass it around, #{verse - 1} bottles of beer on the wall.\n"
    end
  end

  def self.verses(*verses)
    song = []
    verses.first.downto(verses.last) do |verse|
      song << BeerSong.verse(verse)
    end
    song.join
  end

  def self.lyrics
    BeerSong.verses(99, 0)
  end
end
