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

def part_2_2(input)
end
