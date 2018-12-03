require 'spec_helper'
require '2.rb'

describe '2' do
  test_input = ['abcdef', 'bababc', 'abbcde', 'abcccd', 'aabcdd', 'abcdee', 'ababab']
  input = IO.read('inputs/2.txt').split("\n")

  it 'returns accurate test data' do
    assert_equal 12, part_1_2(test_input)
    # assert_equal part_2_2(test_input)
  end

  it 'returns a valid result' do
    assert_equal 7688, part_1_2(input)
    # assert_nil part_2_2(input)
  end
end
