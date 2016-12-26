_Jumpstart Live (JSL)_
# Day 5
## nil

### Overview
* Everything in Ruby is an object (even `nil` is an object)
* `nil` is the default value of many variables when they are first created and before you store something else in them
* To check if something is `nil` you can use the `nil?` method

### Examples

```ruby
# everything is not automatically nil
# you do need to first declare it
puts x	# undefined local variable
```

```ruby
nums = [1]
if nums[1].nil?
	puts "There is no value in index 1"
else 
	puts "#{nums[1]} is in index 1"
end

nums = [1, 2]
if nums[1].nil?
	puts "There is no value in index 1"
else 
	puts "#{nums[1]} is in index 1"
end
```
