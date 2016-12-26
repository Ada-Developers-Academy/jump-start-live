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

### Resources
* [nil Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=14459006-e389-45e7-b996-98f2fb15f4d4) (5:25)
* [Ruby Documentation on nil](http://ruby-doc.org/core-2.4.0/NilClass.html)