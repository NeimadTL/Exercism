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

  attr_reader :intensity

  def fall
    noise.to_s
  end

  def self.convert(intensity)
    Raindrops.new(intensity).fall
  end

  private

    def initialize(intensity)
      @intensity = intensity
      @sound = compose
    end

    def compose
      RULES.each_with_object('') do |(factor, note), sound|
        sound << note if intensity.factor_of?(factor)
      end
    end

    def noise
      @sound.empty? ? intensity : @sound
    end
end
