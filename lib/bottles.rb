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

    "#{quantity(number_of_bottles).capitalize} #{container(number_of_bottles)} of beer on the wall, " +
    "#{quantity(number_of_bottles)} #{container(number_of_bottles)} of beer.\n" +
    action(number_of_bottles) +
    "#{quantity(next_number_of_bottles)} #{container(next_number_of_bottles)} of beer on the wall.\n"
  end

  def action(number_of_bottles)
    BottleNumber.new(number_of_bottles).action(number_of_bottles)
  end

  def successor(number_of_bottles)
    BottleNumber.new(number_of_bottles).successor(number_of_bottles)
  end

  def quantity(number_of_bottles)
    BottleNumber.new(number_of_bottles).quantity(number_of_bottles)
  end

  def container(number_of_bottles)
    BottleNumber.new(number_of_bottles).container(number_of_bottles)
  end

  def pronoun(number_of_bottles)
    BottleNumber.new(number_of_bottles).pronoun(number_of_bottles)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def action(number_of_bottles)
    if number_of_bottles == 0
      "Go to the store and buy some more, "
    else
      "Take #{pronoun(number_of_bottles)} down and pass it around, "
    end
  end

  def successor(number_of_bottles)
    if number_of_bottles == 0
      99
    else
      number_of_bottles - 1
    end
  end

  def quantity(number_of_bottles)
    if number_of_bottles > 0
      number_of_bottles.to_s
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