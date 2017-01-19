module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna_strand)
    decoding = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

    dna_strand.chars.map do |c|
      decoding[c] || (return '')
    end.join
  end
end
