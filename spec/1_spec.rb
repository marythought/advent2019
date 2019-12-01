require "spec_helper"
require "1.rb"

describe "1" do
  test_input = []
  input = IO.read("inputs/1.txt").split("\n")

  it "returns accurate test data" do
    assert_nil part_1_1(test_input)
    assert_nil part_2_1(test_input)
  end

  it "returns a valid result" do
    assert_nil part_1_1(input)
    assert_nil part_2_1(input)
  end
end
