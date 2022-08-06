class Bottles

  def verse(number_of_bottles)
    case number_of_bottles
    when 1
      lyrics_for_1_bottle
    when 2
      lyrics_for_2_bottles
    else
      lyrics_for(number_of_bottles)
    end
  end

  def lyrics_for_1_bottle
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def lyrics_for_2_bottles
    "2 bottles of beer on the wall, " +
    "2 bottles of beer.\n" +
    "Take one down and pass it around, " +
    "1 bottle of beer on the wall.\n"
  end

  def lyrics_for(number_of_bottles)
    "#{number_of_bottles} bottles of beer on the wall, " +
    "#{number_of_bottles} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{number_of_bottles - 1} bottles of beer on the wall.\n"
  end
end