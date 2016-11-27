# Loops

loops day 1
----
loop
- iteration variable

range loop
- 3 dots, only exclusive on last number

infinite loop

times loops start at 0

fencepost problems

iteration variables: name i, or meaningful (i,j,k)

As we saw in [Jump Start Lesson 10](https://github.com/Ada-Developers-Academy/jump-start/tree/master/lessons/10-iterators) _iterators_, also known as _loops_, are used to prevent code duplication and allow us to repeat a code action a certain number of times.

We will be using some of the vocabulary we went over in the [loop notes](https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/10-iterators/notes/loops.md), specifically the _counter-controlled_ loops and the _sentinel-controlled_ loops.

### Practice Identifying loops
Let's look at the [loops worksheet](https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/10-iterators/assignments/loops-worksheet.md) to work to identify the different types!

### More Loop Examples
#### Example #1
##### A
```ruby
2.times do
  puts "dance"
end
```

##### B
```ruby
2.times do |i|
  puts "dance"
end
```

- What is the difference between example `A` and example `B`?
- What is the vocabulary word which describes additional piece in example `B`?
- What will the values of `i` be for each iteration in example `B`? Will the user see the value for `i`?

#### Example #2
```ruby
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i
while input > -1
  total += input
  input = gets.chomp.to_i
end

puts "Result: #{total}"
```

- Let's run through the example step by step for the following inputs. Determine how the total variable changes, and what happens with the user's input.
  - 0, -1, 2
  - 33, 6, 2, 9, 0, -1
  - 4.2, 1.1, 9.9, -1.0
- Why would the while loop use `input > 0` rather than `input < 0`?
