require 'rake'
require 'rake/testtask'

hw1_tasks = [
  ['all', 'test/hw1_*_test.rb'],
  ['1',   'test/hw1_part1_test.rb'],
  ['2',   'test/hw1_part2_test.rb'],
  ['3',   'test/hw1_part3_test.rb'],
  ['4',   'test/hw1_part4_test.rb'],
  ['5',   'test/hw1_part5_test.rb']
]
hw2_tasks = [
  ['all', 'test/hw2_*_test.rb'],
  ['1',   'test/hw2_part1_test.rb'],
  ['2',   'test/hw2_part2_test.rb']
]

def create_test_task(name, pattern)
  Rake::TestTask.new(name) do |t|
    t.pattern = pattern
    t.verbose = true
    t.warning = true
  end
end

task :default => ['test:all']
create_test_task 'test:all', 'test/*_test.rb'

namespace :test do
  namespace :hw1 do
    hw1_tasks.each { |t| create_test_task *t }
  end
  namespace :hw2 do
    hw2_tasks.each { |t| create_test_task *t }
  end
end
