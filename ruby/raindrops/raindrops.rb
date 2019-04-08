class Raindrops
  def self.convert(number)
    sound = ""
    if number % 3 == 0
      sound << 'Pling'
    end

    if number % 5 == 0
      sound << 'Plang'
    end

    if number % 7 == 0
      sound << 'Plong'
    end

    if number % 3 != 0 && number % 5 != 0 && number % 7 != 0
      sound = "#{number}"
    end

    sound
  end
end


# if the number has 3 as a factor, output 'Pling'.
# If the number has 5 as a factor, output 'Plang'.
# If the number has 7 as a factor, output 'Plong'.
# If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.
