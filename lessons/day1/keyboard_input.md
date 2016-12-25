_Jumpstart Live (JSL)_
# Day 1
## Keyboard Input
Keyboard input is a way to accept input from the user, when running the program in Terminal.

### gets
`gets` accepts a single line of data from the keyboard. A line is something that ends in `\n`. `gets` is short for 'get string' which means whatever the user enters (even if it is a number) will be stored as a string

### chomp
When the user enters the data and then presses enter, or return a '\n' (also called a newline character) is added to the end of the line. In some cases you don't want this character at the end, `chomp` removes that newline character

### Converting user input
`gets` gives you back a string, no matter what the user enters, even if they enter numbers. Two common methods for converting that string into a number are described below.

#### to_i
Convert the string the user entered into a `fixnum`, which is an integer value. If it cannot figure out how to convert it to a `fixnum` it will give you back `0`.

#### to_f
Convert the string the user entered into a `float`, which is a decimal value. If it cannot figure out how to convert it to a `float` it will give you back `0.0`.

### Example

```ruby
3.times do
	print "Enter a number: "
	num = gets.chomp.to_i
	puts "You entered #{num}, #{num} to the power of 2 is #{num ** 2}"
end
```
