# Style
## Day 1

### Warm up
* Discuss madlib code
* Discuss code with vocabulary: variables, assignment, strings, input, output, string interpolation or string concatenation

### Lesson
The style in your code is just as important as the code itself. Programmers use code standards along with company _style guides_ to ensure that all programmers are using the same style. Code with good style is easy to read, understand, and modify.

#### Examples

##### Indentation

```ruby
# poor style
(1..10).times do |i|
puts i
end
```

```ruby
# good style
(1..10).times do |i|
  puts i
end
```

```ruby
# poor style
animal = gets.chomp
if animal == "Fish"
puts "Wonderful in the Water!"
elsif animal == "Camel"
puts "Destination Desert!"
else
puts "Worldwide Wonder!"
end
```

```ruby
# good style
animal = gets.chomp

if animal == "Fish"
  puts "Wonderful in the Water!"
elsif animal == "Camel"
  puts "Destination Desert!"
else
  puts "Worldwide Wonder!"
end
```

### Discussion
* Code quality: indentation, whitespace and variable names
* Together look at a MadLib code example and identify areas for improvement in these areas of code quality

### Exercise
* Create a program which will take input from the user to create a bio for that person based on information about themselves



#### Example #3
##### A
```ruby
total = 0
(1..10).times do |i|
total += i
end
if total > 10
puts "More than ten"
else
puts "Less than ten"
end
```

##### B
```ruby
total = 0
(1..10).times do |i|
  total += i
end

if total > 10
  puts "More than ten"
else
  puts "Less than ten"
end
```

- What lines in **B** are _indented_? Why?
- What lines in **B** are _whitespace_? Why?

#### Example #4
##### A
```ruby
if username == "foo"
if password == "bar"
puts "Welcome, administrator!"
else
puts "Incorrect password."
end
else
puts "Incorrect username."
end
```

##### B
```ruby
if username == "foo"
	if password == "bar"
		puts "Welcome, administrator!"
	else
		puts "Incorrect password."
	end
else
	puts "Incorrect username."
end
```

- What is the difference between **A** and **B**?
- How is **B** different than the previous examples we have seen? 

#### Your Turn
How would you modify the code below to improve the code style and readability?
```ruby
foods = ["shrimp", "cauliflower", "salmon", "garlic", "oysters", "salami", "tomatoes", "okra", "zucchini", "avocado"]
print "\nHow many foods would you like to see? I suggest 10, but it's up to you. "
items = gets.chomp.to_i
if items > 10
puts "Best I can do is 10. Let's do 10."
items = 10
elsif items >= 1 && items <= 10
puts "Ok! Let's do " + items + "."
else
puts "We'll just pretend you said 10."
items = 10
end
puts "...Your Fancy Random Menu..."
items.times do |i|
rand_food = foods[rand(0...(foods.length))]
puts i.to_s + ": " + rand_food
end
```
