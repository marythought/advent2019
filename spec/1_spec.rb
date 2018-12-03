require "spec_helper"
require "1.rb"

describe '1' do
  test_input = [1, -2, 3, 1]
  input = IO.read("inputs/1.txt").split("\n").map(&:to_i)

  it "returns a valid result for part 1" do
    assert_equal 3, Day1.frequency(test_input)
    assert_equal 531, Day1.frequency(input)
  end

  it "returns valid response for part 2" do
    a = Day1.new
    assert_equal 2, a.twice_frequency(test_input)
    b = Day1.new
    assert_equal 76_787, b.twice_frequency(input)
  end
end
