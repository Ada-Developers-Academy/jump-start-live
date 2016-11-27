_Jumpstart Live (JSL)_
# Day 1
## Ruby Style

The style in your code is just as important as the code itself. Programmers use code standards along with company _style guides_ to ensure that all programmers are using the same style. Code with good style is easy to read, understand, and modify.

### Concepts
* File naming
	* Use `snake_case` for naming files and directories
* Whitespace
	* Code should be separated into thoughts, similar to how you might use paragraphs when writing an essay; every thought should be separated with a blank line
	* There should be a single space on either side of all operators (e.g, `x = x * 2` instead of `x=x*2`)
	* There should be a single space after all commas and colons
	* Use spaces around `{` and `}`
* Indentation
	* All code between a `do` and an `end` (i.e., inside of a block) should be indented
	* All code inside a `if`, `elsif`, or `else` should be indented
* Variable names
	* Variable name should clearly describe what they hold, with the exception of iteration variables
	* Use `snake_case` for variable names (e.g, user_full_name instead of userfullname)
* Comments
	* Use comments to describe your code
	* Comments should describe _what the code does_ and not _how the code does it_ (i.e., do not include implementation details in your comments)

### Examples
1. _Consider indentation, variable names, and comments__
	```ruby
	# poor style
	# prints the numbers 1 to 10 using a loop
	(1..10).times do |i|
	puts i
	end
	```

	```ruby
	# good style
	# prints the numbers 1 to 10
	(1..10).times do |i|
	  puts i
	end
	```

2. _Consider white space, indentation, variable names, and comments_
	
	```ruby
	# poor style
	x=gets.chomp
	if x=="Fish"
	puts "Wonderful in the Water!"
	elsif x=="Camel"
	puts "Destination Desert!"
	else
	puts "Worldwide Wonder!"
	end
	```

	```ruby
	# good style
	# read in the type of animal from the user
	animal = gets.chomp

	# output a message based on the animal type
	if animal == "Fish"
	  puts "Wonderful in the Water!"
	elsif animal == "Camel"
	  puts "Destination Desert!"
	else
	  puts "Worldwide Wonder!"
	end
	```

3. _Consider white space, indentation, variable names, and comments_
	
	```ruby
	# bad style
	total=0
	(1..10).times do |i|
	total+=i
	end
	if total >10
	puts "More than ten"
	else
	puts "Less than ten"
	end
	```

	```ruby
	# good style
	# sums the values from 1 to 10
	total = 0
	(1..10).times do |i|
	  total += i
	end

	# prints a message based on the sum
	if total > 10
	  puts "More than ten"
	else
	  puts "Less than ten"
	end
	```

4. _Consider white space, indentation, variable names, and comments_

	```ruby
	# bad style
	if username =="foo"
	if password== "bar"
	puts "Welcome, administrator!"
	else
	puts "Incorrect password."
	end
	else
	puts "Incorrect username."
	end
	```

	```ruby
	# good style
	# prints a welcome message if correct username and password, otherwise prints error message
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

### Resources
* Crowd-sourced [ruby style guide](https://github.com/bbatsov/ruby-style-guide)