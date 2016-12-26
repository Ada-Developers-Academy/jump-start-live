_Jumpstart Live (JSL)_
# Day 4
## Advanced Loops

### Fencepost Problems
* Sometimes illustrated as `|-|-|-|-|` with the `|` representing a fence post and the `-` representing the wire of the fence
* The idea is that you need 1 more post than you do wire sections; you begin with a post and end with a post
* Also sometimes called a _loop-and-a-half_
* Common solutions usually have the loop run one less times than needed and then handle the last post outside of the loop

#### Examples

```ruby
# handles the first post outside the loop
# prints a comma separated list of numbers from 1 up to max
print "Max: "
max = gets.chomp.to_i
print 1
(2..max).each do |num|
	print ", #{num}" 
end
```

```ruby
# handles the last post outside the loop
# prints a comma separated list of numbers from 1 up to max
print "Max: "
max = gets.chomp.to_i
(1..max - 1).each do |num|
	print "#{num}, " 
end
print max
```

### Loops with logical operators

```ruby
print "Please enter a number greater than 0 and less than 100: "
num = gets.chomp.to_i

while num < 1 || num > 99
	puts "Please follow the directions!"
	print "Please enter a number greater than 0 and less than 100: "
	num = gets.chomp.to_i
end

puts "You entered #{num}"
```

```ruby
print "Please enter a number greater than 0 and less than 100: "
num = gets.chomp.to_i

until num > 0 && num < 100
	puts "Please follow the directions!"
	print "Please enter a number greater than 0 and less than 100: "
	num = gets.chomp.to_i
end

puts "You entered #{num}"
```

### Resources
* [Ada Advanced Loops Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=39c011c5-5d58-4f15-973a-7a4ffb2ce5c1) (5:02)