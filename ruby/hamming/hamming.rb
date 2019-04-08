module ConvenienceMethodsForHamming
  def compute(strand1, strand2)
    new(strand1, strand2).distance
  end
end

class StrandLengthError < ArgumentError
  def initialize(message = 'Strand Lengths must be identical!')
    super
  end
end

class Hamming
  extend ConvenienceMethodsForHamming
  attr_reader :nucleotides

  def initialize(strand1, strand2)
    raise StrandLengthError unless strand1.size == strand2.size

    @nucleotides = strand1.chars.zip(strand2.chars)
  end

  def distance
    nucleotides.count { |n1, n2| n1 != n2 }
  end
end
