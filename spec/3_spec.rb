require "spec_helper"
require "3.rb"

describe "3" do
  test_input = []
  input = IO.read("inputs/3.txt").split("\n")

  it "returns accurate test data" do
    assert_nil part_1_3(test_input)
    assert_nil part_2_3(test_input)
  end

  it "returns a valid result" do
    assert_nil part_1_3(input)
    assert_nil part_2_3(input)
  end
end
