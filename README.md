# Unit tests

Feel free to fork and send pull requests to improve the tests.

## Testing with rake

The **rake** gem is required (`gem install rake`).

### Running all tests

``` bash
rake
```

or:

``` bash
rake test:all
```

### Running all tests for a specific homework

``` bash
rake test:hw1:all
rake test:hw2:all
```

### Testing a single part

``` bash
rake test:hw1:1           # Test part one - fun with strings
rake test:hw1:2           # Test part two - rock, paper, scissors
rake test:hw1:3           # Test part three - anagrams
rake test:hw1:4           # Test part four - basic OOP
rake test:hw1:5           # Test part five - advanced OOP
```

## Testing without rake

### Testing a single part

``` bash
ruby -I lib test/hw1_part1_test.rb           # Test part one - fun with strings
ruby -I lib test/hw1_part2_test.rb           # Test part two - rock, paper, scissors
ruby -I lib test/hw1_part3_test.rb           # Test part three - anagrams
ruby -I lib test/hw1_part4_test.rb           # Test part four - basic OOP
ruby -I lib test/hw1_part5_test.rb           # Test part five - advanced OOP
```

### Running a single test

``` bash
ruby -I lib test/hw1_part1_test.rb -n "test_palindrome"
```
