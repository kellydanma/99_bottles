class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    lyrics = ""

    (upper).downto(lower + 1) do |number_of_bottles|
      lyrics += verse(number_of_bottles)
      lyrics += "\n"
    end
    
    lyrics += verse(lower)
  end

  def verse(number_of_bottles)
    case number_of_bottles
    when 0
      lyrics_for_0_bottles
    when 1
      lyrics_for_1_bottle
    else
      lyrics_for(number_of_bottles)
    end
  end

  def lyrics_for_0_bottles
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def lyrics_for_1_bottle
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
    "Take #{pronoun(1)} down and pass it around, " +
    "#{quantity(0)} #{container(0)} of beer on the wall.\n"
  end

  def lyrics_for(number_of_bottles)
    "#{number_of_bottles} bottles of beer on the wall, " +
    "#{number_of_bottles} bottles of beer.\n" +
    "Take #{pronoun(number_of_bottles)} down and pass it around, " +
    "#{quantity(number_of_bottles - 1)} #{container(number_of_bottles - 1)} of beer on the wall.\n"
  end

  def quantity(number_of_bottles)
    if number_of_bottles > 0
      number_of_bottles
    else
      "no more"
    end
  end

  def container(number_of_bottles)
    if number_of_bottles == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number_of_bottles)
    if number_of_bottles > 1
      "one"
    else
      "it"
    end
  end
end