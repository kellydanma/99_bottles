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
    bottle_number = BottleNumber.new(verse_number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)

    "#{(bottle_number)}".capitalize + " of beer on the wall, " +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action} #{next_bottle_number} of beer on the wall.\n"
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def action
    if number == 0
      "Go to the store and buy some more,"
    else
      "Take #{pronoun} down and pass it around,"
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