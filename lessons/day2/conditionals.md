_Jumpstart Live (JSL)_
# Day 2
## Conditionals

Conditionals are a programming construct that will allow you to control the flow of a program through branching (they allow your program to make decisions)

#### Structure
* `else` can only be used when paired with an if

```ruby
# independent tests; not exclusive
# 0, 1, or many of the statement(s) may execute
# every test in every if block is checked
if test
  statement(s)
if test
  statement(s)
if test
  statement(s)
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
```

```ruby
# mutually exclusive
# exactly 1 of the if blocks will execute
if test
  statement(s)
elsif test
  statement(s)
else {
  statement(s)
```

### Practice Problems
1. Single if statement
  
  #### Questions
  * What is the boolean expression in the code below?
  * Provide a value of `test_score` that will cause the code to print "You got an A!"
  * Provide a value of `test_score` that will cause the code to not print anything

  ```ruby
  test_score = gets.chomp.to_i

  if test_score > 90
    print "You got an A!"
  end
  ```

2. if/else statement

  #### Questions
  * What is different about the examples below?
  * Will they work the same, even though their code is different?

  ```ruby
  test_score = gets.chomp.to_i

  if test_score != 90
    print "You got an A!"
  else
    print "You did not get an A!"
  end
  ```

  ```ruby
  test_score = gets.chomp.to_i

  if test_score > 90
    print "You got an A!"
  else
    print "You did not get an A!"
  end
  ```

3. if/else statement

  #### Questions
  * What is different about the examples below?
  * Will they work the same, even though their code is different?

  ```ruby
  test_score = gets.chomp.to_i

  if test_score < 90
    print "You did not get an A!"
  else
    print "You got an A!"
  end
  ```

  ```ruby
  test_score = gets.chomp.to_i

  if test_score > 90
    print "You got an A!"
  else
    print "You did not get an A!"
  end
  ```

4. if/elsif/else statement

  #### Questions
  * What will be output if the user enters "FedEx"? How about "usps"? What about "mailing"?

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