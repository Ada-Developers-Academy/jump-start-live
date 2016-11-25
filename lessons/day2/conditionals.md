# Conditionals

As we saw in [Jump Start Lesson 9](https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/09-programming-expressions/notes/conditionals.md), _conditionals_ are a tool that will allow you to control the flow of a program through branching.

This concept relies on us understanding what a _boolean expression_ is and how these types of expressions are evaluated. Let's see some examples!

#### Example #1
```ruby
test_score = gets.chomp.to_i

if test_score > 90
  print "You got an A!"
end
```

- What is an example of a value for `test_score` where the _boolean expression_ will return `true`?
- What is an example of a value for `test_score` where the _boolean expression_ will return `false`?

#### Example #2
##### A
```ruby
test_score = gets.chomp.to_i

if test_score != 90
  print "You got an A!"
else
  print "You did not get an A!"
end
```

##### B
```ruby
test_score = gets.chomp.to_i

if test_score > 90
  print "You got an A!"
else
  print "You did not get an A!"
end
```

- Will the resulting code executed be the same in example A and B?


#### Example #3
##### A
```ruby
test_score = gets.chomp.to_i

if test_score < 90
  print "You did not get an A!"
else
  print "You got an A!"
end
```

##### B
```ruby
test_score = gets.chomp.to_i

if test_score > 90
  print "You got an A!"
else
  print "You did not get an A!"
end
```

- Will the resulting code executed be the same in example A and B?

#### Example #4
```ruby
carrier = gets.chomp

if carrier == "UPS"
  puts "United Parcel Service"
elsif carrier == "USPS"
  puts "United States Postal Servce"
elsif carrier == "FedEx"
  puts "Federal Express"
else
  puts "Mail!"
end
```

What will the output of this code be if the input is:
- "FedEx"?
- "usps"?
- "mailing"?
