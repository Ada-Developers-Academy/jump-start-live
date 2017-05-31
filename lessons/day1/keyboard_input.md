_Jumpstart Live (JSL)_
# Day 1
## Keyboard Input
Keyboard input is a way to accept input from the user, when running the program in Terminal.

### `gets`
`gets` accepts a single line of data from the keyboard. A line is something that ends in `\n`. `gets` is short for _get string_ which means whatever the user enters (even if it is a number) will be stored as a string

### `chomp`
When the user enters the data and then presses enter (or return) a `\n` (also called a newline character) is added to the end of the line. In some cases you don't want this character at the end, `chomp` removes that newline character

### Converting user input
`gets` gives you back a string, no matter what the user enters, even if they enter a number. Two common methods for converting that string into a number are described below.

#### `to_i`
Converts a string into a `fixnum`, which is an integer value. If there is not a valid `fixnum` at the beginning of the string, then `0` is given instead. Any extra characters at the end that are not part of the `fixnum` are ignored.

```ruby
puts "2".to_i	# prints 2
puts "2a".to_i	# prints 2
puts "a2".to_i	# prints 0
puts "a".to_i	# prints 0
```

#### `to_f`
Converts a string into a `float`, which is a decimal value. If there is not a valid `float` at the beginning of the string, then `0.0` is given instead. Any extra characters at the end that are not part of the `float` are ignored.

```ruby
puts "2.1".to_f		# prints 2.1
puts "2.1a".to_f	# prints 2.1
puts "2a".to_f		# prints 2.0
puts "a2.0".to_f	# prints 0.0
puts "a".to_f		# prints 0.0
```

### Example

```ruby
3.times do
	print "Enter a number: "
	num = gets.chomp.to_i
	puts "You entered #{num}, #{num} to the power of 2 is #{num ** 2}"
end
```

### References
* [Ada Keyboard Input Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=9c2c9fdc-19e6-4e37-b5dc-6a57054a83ec) (5:51)
