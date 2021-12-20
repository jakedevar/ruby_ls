class DNA
  attr_accessor :dna

  def initialize(dna)
    @dna = dna
  end

  def hamming_distance(str)
    hamming_dist = 0
    indx = 0
    shorter = dna.size
    shorter = str.size if dna.size > str.size
    loop do
      break if indx == shorter
      hamming_dist += 1 if dna[indx] != str[indx]
      indx += 1
    end

    hamming_dist
  end
end
