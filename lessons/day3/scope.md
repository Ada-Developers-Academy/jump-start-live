_Jumpstart Live (JSL)_
# Day 3
## Scope

### Overview
Scope in programming defines when something (usually a variable) is visible to something else. In regards to scope of variables, the scope defines what knows about and can access that variable.

### Variable types and their scope
You will not need to know about most of these until a few weeks into Ada, but its important to have a general idea about the different types of variables and their scope. You should understand local variables and their scope by the end of Jumpstart Live.

| Variable type | Syntax | Scope |
| :--- | :--- | :--- |
| Class variable | `@@name` | Visible to the class, and sub classes |
| Instance variable | `@name` | Visible to a specific object, and the instance methods of that object |
| Global variable | `$name` | Visible to everything in the file |
| Local variable | `name`| Depends! |

### Local variables and scope
* When you define a local variable inside of a block, it is not visible outside of that block

#### Examples
* In ruby, local variables created outside of a block, are visible to everything inside of that file
	
	```ruby
	name = gets.chomp
	num = gets.chomp.to_i

	while num > 0
		# num and name are within scope
		# because they are defined outside
		# of a block
		num -= 1 # num = num - 1
		name << " birthday! "
	end

	puts name
	```

* In ruby, local variables created inside if statements, are visible outside of those if statements

	```ruby
	x = gets.chomp.to_i
	if x > 0
		y = 1
	else
		y = -1
	end
	
	puts y # No error, if statements are not considered blocks in Ruby
	```

* In ruby, local variables created inside of a block are not visible outside of those blocks

	```ruby
	(1..3).each do |num|
		last = num
	end
	puts last 	# NameError: undefined local variable or method x
	```