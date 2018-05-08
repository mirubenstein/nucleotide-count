class Nucleotide
  def self.from_dna(strand)
    raise ArgumentError if strand.match(/[^ATCG]/)
    @strand = strand
    self
  end

  def self.count(nucleotide)
    histogram[nucleotide]
  end

  def self.histogram
    @strand.chars.each_with_object({ 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }) do |char, histogram|
      histogram[char] += 1
    end
  end
end
