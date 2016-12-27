_Jumpstart Live (JSL)_
# Day 2
## Conditionals

Conditionals are a programming construct that will allow you to control the flow of a program through branching (they allow your program to make decisions)

### `if`/`elsif`/`else` Statements
* `elsif` and `else` statements can only be used when paired with an if

```ruby
# independent tests; not exclusive
# 0, 1, or many of the statement(s) may execute
# every test in every if block is checked
if test
  statement(s)
end
if test
  statement(s)
end
if test
  statement(s)
end
```

```ruby
# 0, or 1 of the if blocks may execute
# at most only 1 of the if blocks execute
# it could be the case that 0 if blocks execute because their is no else
if test
  statement(s)
elsif test 
  statement(s)
elsif test
  statement(s)
end
```

```ruby
# mutually exclusive
# exactly 1 of the if blocks will execute
if test
  statement(s)
elsif test
  statement(s)
else
  statement(s)
end
```

### Postfix Conditional
A way to shorten your code, when you only have one test to perform.

```ruby
name = gets.chomp
puts "You're rad!" if name == "Issa" 
```

```ruby
drink = gets.chomp
puts "Drink more water!" unless drink == "water"
```

### Case Statements
* A good option when you are wanting to test a number of cases on a single variable

```ruby
grade = gets.chomp
case grade
when "A"
  puts "Good job"
when "B"
  puts "Okay job"
when "C"
  puts "You did a job"
when "D"
  puts "You might have to do the job again"
when "E"
  puts "You have to do the job again"
end
```

```ruby
grade = gets.chomp
case grade
when "A", "B", "C"
  puts "You passed"
when "D"
  puts "You barely passed"
when "E"
  puts "You did not pass"
end
```

### Practice Problems
1. Single `if` statement
  
  #### Questions
  * What is the boolean expression in the code below?
  * Provide a value of `test_score` that will cause the code to print `You got an A!`
  * Provide a value of `test_score` that will cause the code to not print anything

  ```ruby
  test_score = gets.chomp.to_i

  if test_score > 90
    print "You got an A!"
  end
  ```

2. `if`/`else` statement

  #### Questions
  * What is different about the examples below?
  * Will they work the same, even though their code is different?

  ```ruby
  test_score = gets.chomp.to_i

  if test_score != 90
    puts "You got an A!"
  else
    puts "You did not get an A!"
  end
  ```

  ```ruby
  test_score = gets.chomp.to_i

  if test_score > 90
    puts "You got an A!"
  else
    puts "You did not get an A!"
  end
  ```

3. `if`/`else` statement

  #### Questions
  * What is different about the examples below?
  * Will they work the same, even though their code is different?

  ```ruby
  test_score = gets.chomp.to_i

  if test_score < 90
    puts "You did not get an A!"
  else
    puts "You got an A!"
  end
  ```

  ```ruby
  test_score = gets.chomp.to_i

  if test_score > 90
    puts "You got an A!"
  else
    puts "You did not get an A!"
  end
  ```

4. `if`/`elsif`/`else` statement

  #### Questions
  * What will be output if the user enters `FedEx`? How about `usps`? What about `mailing`?

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

### Resources
* [Ada Conditionals Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=22e94763-7a38-4237-a39b-96154f090cbf) (14:21)