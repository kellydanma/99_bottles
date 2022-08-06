class Bottles

  def verse(number)
    if number == 2
      lyrics_for_2_bottles
    else
      lyrics_for_bottle(number)
    end
  end

  def lyrics_for_bottle(number)
    "#{number} bottles of beer on the wall, " +
    "#{number} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{number - 1} bottles of beer on the wall.\n"
  end

  def lyrics_for_2_bottles
    "2 bottles of beer on the wall, " +
    "2 bottles of beer.\n" +
    "Take one down and pass it around, " +
    "1 bottle of beer on the wall.\n"
  end
end