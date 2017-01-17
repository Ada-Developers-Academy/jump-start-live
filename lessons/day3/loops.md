_Jumpstart Live (JSL)_
# Day 3
## Loops

### Definitions
<dl>
	<dt>Loop</dt>
	<dd>Repeating a sequence of statements; telling the program to do something a certain number of times, or until a certain condition is met</dd>
	<dt>Infinite loop</dt>
	<dd>A loop that runs until you kill the program</dd>
	<dt>Sentinel-controlled loop</dt>
	<dd>When the number of loops cannot be determined prior to loop execution (e.g, while, until)</dd>
	<dt>Counter-controlled loop</dt>
	<dd>When the number of loops can be determined prior to loop execution (e.g, times)</dd>
</dl>

### Sentinel-controlled Loops
#### While loop
* Executes code over and over again, while a condition is true

```
# code syntax
while <boolean expression> do
   code
end
```

```ruby
# code example
rand_num = rand(5)
guess = gets.chomp.to_i
while rand_num != guess do
	guess = gets.chomp.to_i
end
```

#### `until` loop
* Executes code over and over again, until the condition is true

```
# code syntax
until <boolean expression> do
   code
end
```

```ruby
# code example
rand_num = rand(5)
guess = gets.chomp.to_i
until rand_num == guess do
	guess = gets.chomp.to_i
end
```

### Counter-controlled Loops
#### `times`
* when `times` is used without an iteration variable it is a loop, when it is used with an iteration variable it becomes an iterator
* `times` must be associated with a block

```ruby
# times syntax as a loop with no iteration variable
Fixnum.times
   code
end
```

```ruby
# code example
# prints out "hello" 5 times
5.times do
	puts "hello"
end
```

### Loop Tables
1. Create a loop table for the code below, assuming the inputs noted below

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

	```
	1. inputs; 0, -1, 2
	2. inputs: 33, 6, 2, 9, 0, -1
	3. inputs: 4.2, 1.1, 9.9, -1.0
	```

### Resources
* [Ada Loops Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=de97b3c0-a134-4fb5-a671-300f290f38cc) (17:31)
