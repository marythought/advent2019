require 'spec_helper'
require '3.rb'

describe '3' do
  test_input = ['#1 @ 1,3: 4x4', '#2 @ 3,1: 4x4', '#3 @ 5,5: 2x2']
  input = IO.read('inputs/3.txt').split("\n")

  it 'returns accurate test data' do
    grid = Day3.new
    assert_equal 4, grid.part_1_3(test_input)
    # assert_equal '3', grid.part_2_3(test_input)
  end

  it 'returns a valid result' do
    grid2 = Day3.new
    assert_equal 111_485, grid2.part_1_3(input)
    # assert_nil grid.part_2_3(input) # not 1208
  end
end
