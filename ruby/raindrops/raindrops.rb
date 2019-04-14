class Fixnum
  def factor_of?(factor)
    self % factor == 0
  end
end


class Raindrops
  
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    sound = RULES.each_with_object('') do |(factor, note), sound|
      sound << note if number.factor_of?(factor)
    end
    sound.empty? ? number.to_s : sound
  end
end
