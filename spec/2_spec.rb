require "spec_helper"
require "2.rb"

describe "2" do
  test_input = []
  input = IO.read("inputs/2.txt").split("\n")

  it "returns accurate test data" do
    assert_equal nil, part_1_2(test_input)
    assert_equal nil, part_2_2(test_input)
  end

  it "returns a valid result" do
    assert_equal nil, part_1_2(input)
    assert_equal nil, part_2_2(input)
  end
end
