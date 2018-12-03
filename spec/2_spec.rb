require 'spec_helper'
require '2.rb'

describe '2' do
  test_input = ['abcdef', 'bababc', 'abbcde', 'abcccd', 'aabcdd', 'abcdee', 'ababab']
  input = IO.read('inputs/2.txt').split("\n")
  test_2 = ['abcde', 'fghij', 'klmno', 'pqrst', 'fguij', 'axcye', 'wvxyz']

  it 'returns accurate test data' do
    assert_equal 12, part_1_2(test_input)
    assert_equal 'fgij', part_2_2(test_2)
  end

  it 'returns a valid result' do
    assert_equal 7688, part_1_2(input)
    assert_equal 'lsrivmotzbdxpkxnaqmuwcchj', part_2_2(input)
  end
end
