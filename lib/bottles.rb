class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    lyrics = ""

    (upper).downto(lower + 1) do |verse_number|
      lyrics += verse(verse_number)
      lyrics += "\n"
    end
    
    lyrics += verse(lower)
  end

  def verse(verse_number)
    number_of_bottles = verse_number
    next_number_of_bottles = successor(number_of_bottles)
    bottle_number = BottleNumber.new(number_of_bottles)

    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall, " +
    "#{bottle_number.quantity} #{bottle_number.container} of beer.\n" +
    bottle_number.action +
    "#{quantity(next_number_of_bottles)} #{container(next_number_of_bottles)} of beer on the wall.\n"
  end

  def action(number_of_bottles)
    BottleNumber.new(number_of_bottles).action
  end

  def successor(number_of_bottles)
    BottleNumber.new(number_of_bottles).successor
  end

  def quantity(number_of_bottles)
    BottleNumber.new(number_of_bottles).quantity
  end

  def container(number_of_bottles)
    BottleNumber.new(number_of_bottles).container
  end

  def pronoun(number_of_bottles)
    BottleNumber.new(number_of_bottles).pronoun
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def action
    if number == 0
      "Go to the store and buy some more, "
    else
      "Take #{pronoun} down and pass it around, "
    end
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end

  def quantity
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end
end