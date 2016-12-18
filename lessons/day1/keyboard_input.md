_Jumpstart Live (JSL)_
# Day 1
## Keyboard Input
Keyboard input is a way to accept input from the user, when running the program in Terminal.

### gets
`gets` accepts a single line of data from the keyboard. A line is something that ends in '\n'. `gets` is short for 'get string' which means whatever the user enters (even if it is a number) will be stored as a string

### chomp
When the user enters the data and then presses enter, or return a '\n' (also called a newline character) is added to the end of the line. In some cases you don't want this character at the end, `chomp` removes that newline character

### to_i
Sometimes you want to be able to interact with what the user entered as a number and not a string (what `gets` gives you). To convert that string into a fixnum, use the method `to_i`

### Example

```ruby
3.times do
	print "Enter a number: "
	num = gets.chomp.to_i
	puts "You entered #{num}, #{num} to the power of 2 is #{num ** 2}"
end
```
