module BookKeeping
  VERSION = 3
end

class Hamming
    def self.compute(string_one, string_two)
        raise ArgumentError if string_one.length != string_two.length
            strand_one = string_one.split("")
            strand_two = string_two.split("")
            distance = 0

            strand_one.each_index do |i|
                if strand_one[i] != strand_two[i]
                    distance += 1
                end
            end
            return distance
    end
end
