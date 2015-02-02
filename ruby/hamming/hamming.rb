class Hamming
  def self.compute(sequence_1, sequence_2)
    distance = 0 - (sequence_1.length - sequence_2.length).abs

    0.upto(sequence_1.length) do |base|
      sequence_1[base] == sequence_2[base] || distance += 1
    end
    distance
  end
end
