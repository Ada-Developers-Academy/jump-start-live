_Jumpstart Live (JSL)_
# Day 1
## Strings

### Overview
Strings in Ruby are objects that hold a sequence of characters. You can create a string be surrounding the sequence of characters with double or single quotes, both `"hello"` and `'hello'` are strings.

If you use double quotes, you can also use string interpolation and escape sequences. If you use single quotes you cannot use string interpolation, and you can only use the escape sequence `\\`.

### Common Escape Sequences

| Escape Sequence | Description | 
| :--- | :--- |
| `\n` | A new line (moves down to the next line)
| `\\` | A single backslash |
| `\"` | A double quote |

```ruby
str = "hello \"person\""
puts str # prints hello "person"

str = 'hello \nworld'
puts str # prints hello \\nworld
```

### String Interpolation
String interpolation allows Ruby code to appear within a string. The code is evaluated, and the result appears in the string.

```ruby
 puts "1 + 2 = #{1 + 2}"    # prints 1 + 2 = 3

 str = "hello"
 puts "#{str} world" # prints hello world
 puts '#{str} world' # prints #{str} world
 ```

### String Concatenation
* When combining strings, you can use the `+` operator, or the `<<` operator
* When using the `+` operator, Ruby creates a new string in memory, when using `<<` Ruby modifies the original string (this is super important when working with lots of data! `+` is super slow).

#### Examples

```ruby
output = ""
(1..5).each do |i|
	output += i.to_s # output = output + i.to_s
end
puts output
```

```ruby
output = ""
(1..5).each do |i|
	output << i.to_s
end
puts output
```

### % Notation
The % notation is a method for creating arrays of strings.
* Use %w to create a non-interpolated array of strings
* Use %W to create an interpolated array of strings

```ruby
%w[one two three]  # ["one", "two", "three"]

apples = 3
oranges = 2
%W[#{apples} #{oranges}] #["3", "2"]
%w[#{apples} #{oranges}] #["#{apples}", "#{oranges}"]
```

### Resources
* [Ada Strings Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=f78798dc-c888-4615-befd-966edf9e165b) (12:30)
* [Ruby Documentation on Strings](http://ruby-doc.org/core-2.4.0/String.html)