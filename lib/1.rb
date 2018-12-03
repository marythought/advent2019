class Day1
  def initialize
    @pointer = 0
    @seen = {}
  end

  def self.frequency(input)
    input.reduce(&:+)
  end

  def twice_frequency(input)
    found = loop_frequency(input) until found
    found
  end

  def loop_frequency(input)
    input.each do |num|
      this_place = @pointer + num
      return this_place if @seen.key?(this_place)

      @seen[this_place] = true
      @pointer += num
    end
    nil
  end
end
