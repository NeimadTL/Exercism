class Hamming
  def self.compute(strand1, strand2)
    unless strand1.size == strand2.size
      raise ArgumentError.new("The DNA strands don't have the same lenght")
    end
    
    # strand1.chars.zip(strand2.chars).reject { |pair| pair[0] == pair[1] }.size
    # strand1.chars.each_index.reject { |nucleic| strand1[nucleic] == strand2[nucleic] }.size
    # strand1.chars.zip(strand2.chars).count { |pair| pair[0] != pair[1] }
    strand1.chars.each_index.count { |nucleic| strand1[nucleic] != strand2[nucleic] }

  end
end
