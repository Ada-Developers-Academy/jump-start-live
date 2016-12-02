_Jumpstart Live (JSL)_
# Day 5
## Arrays

arrays
----
ljust?
shovel method? or push
data structure
ordered list
motivation for arrays
Arrays.new .. or []
shovel array onto array by accident
indexes
iterating over an array
* Review storing and retrieving data from an array
* Review iterating over an array

As we saw in [Jump Start Lesson 11](https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/11-basic-data-structs/notes/arrays.md) _arrays_, are the most common way to create collections in Ruby.

The main things that we need to be able to do with arrays are:
- Create an array with or without any type of data  
- Be able to assign or re-assign any value in an array
- Be able to access any item in the array
- Be able to add a new value to the end of an array


### Let's see some examples
#### Example #1
Create an array which will store the square of each value between 2 and 5, inclusive.

##### Part 1
Create the empty array
```ruby
my_array = []
```

##### Part 2
Determine each square value between 2 and 5, inclusive
```ruby
(2..5).each do |i|
  puts i * i
end
```

##### Part 3
Put it all together!
```ruby
my_array = []
(2..5).each do |i|
  my_array << i * i

  # ALTERNATE APPROACH
  # my_array.push(i * i)
end
```

#### Example #2
Given an array that contains three people, Ada Lovelace, Anita Borg  and Margaret Hamilton do the following:
- Add one new person of your choice
- Output Anita Borg using the array
- Replace Ada Lovelace with Megan Smith

##### Part 1
Given an array
```ruby
people = ["Ada Lovelace", "Anita Borg", "Margaret Hamilton"]
```

##### Part 2
Add two new people
```ruby
people << "Grace Hopper"

# ALTERNATE APPROACHES
# people.push("Grace Hopper")

# LESS IDEAL ALTERNATE APPROACH
# people[3] = "Grace Hopper"
```

##### Part 3
Retrieve Anita Borg using the original **index**
```ruby
puts people[1]
```

##### Part 4
Reassign the value at the same index where Ada Lovelace is
```ruby
people[0] = "Megan Smith"
```

1. Create an array which will store the names of each member of your family.  
  a. What are two different ways you can access the second-last name in your array?  
  b. If the names are in order from youngest to oldest, how would you access the name of the second-youngest person?
  * Members of your family in age order

2. Create an array which stores the numbers 1 - 15.  
  a. What are two different ways of accessing the middle number?  
  b. If the numbers are stored in order, how would you access the second value in the array? 

