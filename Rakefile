require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |t|
  t.libs << 'spec'
  t.pattern = 'spec/*_spec.rb'
end

task :new_puzzle, [:num] do |t, args|
  sh "echo 'def part_1_#{args[:num]}(input)\nend\n\ndef part_2_#{args[:num]}(input)\nend' >> 'lib/#{args[:num]}.rb'"
  sh "echo '' >> 'inputs/#{args[:num]}.txt'"
  sh "echo 'require \"spec_helper\"\nrequire \"#{args[:num]}.rb\"\n\ndescribe \"#{args[:num]}\" do\n  test_input = []\n  input = IO.read(\"inputs/#{args[:num]}.txt\").split(\"\\\\n\")\n\n  it \"returns accurate test data\" do\n    assert_nil part_1_#{args[:num]}(test_input)\n    assert_nil part_2_#{args[:num]}(test_input)\n  end\n\n  it \"returns a valid result\" do\n    assert_nil part_1_#{args[:num]}(input)\n    assert_nil part_2_#{args[:num]}(input)\n  end\nend' >> 'spec/#{args[:num]}_spec.rb'"
end
