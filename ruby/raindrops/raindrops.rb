class Raindrops

  FACTORS_TABLE = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    indivisible?(number) ? sound = number.to_s : sound = ''
    FACTORS_TABLE.each { |k, v| sound << v if number % k == 0 }
    sound
  end

  def self.convert2(number)
    sound = ''
    FACTORS_TABLE.each_key do |key| 
      sound << FACTORS_TABLE[key] if number % key == 0 
    end
    sound.empty? ? number.to_s : sound
  end

  def self.convert3(number)
    return number.to_s if indivisible?(number)
    FACTORS_TABLE.each_with_object('') do |pair, sound|
      sound << pair[1] if number % pair[0] == 0
    end
  end



  def self.indivisible?(number)
    FACTORS_TABLE.each_key.all? { |k| (number % k) != 0 }
  end

end
