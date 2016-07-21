Relational Operators

Logical Operators



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
