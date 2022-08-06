class Bottles

  def verse(number)
    lyrics_for_bottle(number)
  end

  def lyrics_for_bottle(number)
    "#{number} bottles of beer on the wall, " +
    "#{number} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{number - 1} bottles of beer on the wall.\n"
  end
end