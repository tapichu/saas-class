require 'rake'
require 'rake/testtask'

test_tasks = [
    ['all', 'test/*_test.rb'],
    ['1',   'test/hw1_part1_test.rb'],
    ['2',   'test/hw1_part2_test.rb'],
    ['3',   'test/hw1_part3_test.rb'],
    ['4',   'test/hw1_part4_test.rb'],
    ['5',   'test/hw1_part5_test.rb']
]

def create_test_task(name, pattern)
    Rake::TestTask.new(name) do |t|
        t.pattern = pattern
        t.verbose = true
        t.warning = true
    end
end

task :default => ["test:all"]

namespace :test do
    test_tasks.each { |t| create_test_task *t }
end
