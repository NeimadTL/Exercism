class Raindrops

  FACTORS_TABLE = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    indivisible?(number) ? sound = "#{number}" : sound = ''
    FACTORS_TABLE.each { |k, v| sound << v if number % k == 0 }
    sound
  end

  def self.indivisible?(number)
    FACTORS_TABLE.each_key.all? { |k| (number % k) != 0 }
  end

end
