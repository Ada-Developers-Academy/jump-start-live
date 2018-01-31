_JumpStart Live (JSL)_
# Day 1
## Ruby Style

The style in your code is just as important as the code itself. Programmers use code standards along with company _style guides_ to ensure that all programmers are using the same style. Code with good style is easy to read, understand, and modify.

### Concepts
#### File naming
* Use `snake_case` for naming files and directories

#### Whitespace
* Code should be separated into thoughts, similar to how you might use paragraphs when writing an essay; every thought should be separated with a blank line
* There should be a single space on either side of most operators (e.g, `x = x * 2` instead of `x=x*2`)
* There should be a single space after all commas and colons
* Use spaces around `{` and `}`
* All code between a `do` and an `end` (i.e., inside of a block) should be indented
* All code inside a `if`, `elsif`, or `else` should be indented

#### Variable names
* Variable names should clearly describe what they hold
* Use `snake_case` for variable names (e.g, user_full_name instead of userfullname)

#### Comments
* Use comments to describe your code
* Comments should describe _what the code does_ and not _how the code does it_ (i.e., do not include implementation details in your comments)
* Use one space between the `#` and the text of the comment

#### Big Numbers
* Use underscores to make big numbers easy to read, (e.g., use `num = 3_000_000` instead of `num = 3000000`)

#### Calling Methods
* If the method accepts an argument, always use parens, (e.g., use `push("apple")` instead of `push "apple"`)
	* Exception: `puts "hello"` is good style, whereas `puts("hello")` is bad style
* If a method does not accept arguments, do not use parens, (e.g, use `chomp` instead of `chomp()`)

#### Strings
* Use string interpolation and string formatting instead of string concatenation

### Examples
1. _Consider indentation, variable names, and comments_
	```ruby
	# poor style
	# prints the numbers 1 to 10 using a loop
	(1..10).each do |i|
	puts i
	end
	```

	```ruby
	# good style
	# prints the numbers 1 to 10
	(1..10).each do |num|
	  puts num
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
	puts "Enter an animal: "
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
	# poor style
	total=0
	(1..10).each do |i|
	total=total+i
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
	(1..10).each do |num|
	  total += num
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
	# poor style
	username = gets.chomp
	password = gets.chomp
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
	username = gets.chomp
	password = gets.chomp
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
* [Ada Ruby Style Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7387c766-7e2c-43b6-84f5-3f8b45d0f1f0) (12:37)
* [Crowd-sourced Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
* [Github's Ruby style guide](https://github.com/github/rubocop-github/blob/master/STYLEGUIDE.md)
