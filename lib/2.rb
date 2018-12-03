require 'fuzzy_match'
require 'amatch'

def part_1_2(inputs)
  twos = []
  threes = []
  inputs.each do |input|
    input.each_char do |char|
      if input.count(char) == 3
        threes << input unless threes.include?(input)
      end
      if input.count(char) == 2
        twos << input unless twos.include?(input)
        next
      end
    end
  end
  twos.count * threes.count
end

def part_2_2(inputs)
  winners = {}
  inputs.length.times do
    # pop what we're testing so it doesn't match against itself
    test = inputs.shift
    winner = FuzzyMatch.new(inputs).find(test)
    if winner
      sameness = test.pair_distance_similar(winner)
      if winners[sameness]
        winners[sameness] << [winner, test].sort unless winners[sameness].include?([winner, test].sort)
      else
        winners[sameness] = [[winner, test].sort]
      end
    end
  end
  a, b = winners.max[1].flatten # ["fghij", "fguij"]
  a.chars.map.each_with_index do |char, i|
    char if char == b[i]
  end.compact.join
end
