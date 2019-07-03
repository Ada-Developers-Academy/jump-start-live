# While Loops

## Overview

A loop, is a programming control structure which enables the developer to repeat the execution of code.  All high-level programming languages provide forms of loops.  Ruby, like many languages provides a type of loop called a `while` loop, which executes as long as a condition is true.  

## Example of a counter-controlled While Loop

```ruby
num = 0

while num < 5
  puts "num is #{num}"
  num += 1
end
```

The above program will result in the output of:

```bash
num is 0
num is 1
num is 2
num is 3
num is 4
```

This loop is a **counter-controlled** loop.  In a counter-controlled loop the number of times the loop will execute is determined before the loop starts.  In this example `num` starts at 0 and will run while it is less than 5.  Since num increases by one in each iteration, the loop will execute 5 times.

## Sentinel Controlled Loop

Another form of a loop is called a **sentinel-controlled** loop.  In a sentinel-controlled loop, you cannot identify the number of times the loop will execute prior to it starting.  The conditional in the while loop below is called the **sentinel** and it determines if the loop will continue executing.  Because 

```ruby
num = 0
total = 0

while num >= 0
  total += num

  puts "Please enter a number, enter a negative number to stop"
  num = gets.chomp.to_i
end

puts "The total is #{total}"
```

## Practice

For practice Create a loop in which outputs all the even numbers from 0 - 10.

When you are ready you can see an [example solution.](example-code/while-loop.rb)

## Resources

- [Ruby-doc.org on while loops](https://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/while.html)
