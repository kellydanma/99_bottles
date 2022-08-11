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
    bottle_number = bottle_number_for(verse_number)
    next_bottle_number = bottle_number_for(bottle_number.successor)

    "#{(bottle_number)}".capitalize + " of beer on the wall, " +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " + 
    "#{next_bottle_number} of beer on the wall.\n"
  end

  def bottle_number_for(verse_number)
    if verse_number == 0
      BottleNumber0.new(0)
    else
      BottleNumber.new(verse_number)
    end
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
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
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

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    99
  end
end