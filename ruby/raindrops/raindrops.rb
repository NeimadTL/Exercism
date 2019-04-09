class Raindrops
  def self.convert(number)
    sound = ""
    factors = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    sound = "#{number}" if factors.each_key.all? { |k| (number % k) != 0 }
    factors.each do |k, v|
      sound << v if number % k == 0
    end
    sound
  end
end
