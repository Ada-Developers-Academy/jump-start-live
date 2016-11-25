# Hashes

As we saw in [Jump Start Lesson 10](https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/11-basic-data-structs/notes/hashes.md) hashes, are the second-most common way to store data in Ruby. We utilize unordered keys rather than ordered indexes to store data. The hash is sort of like a dictionary, where we can look up a value by a given key.

The main things that we need to be able to do with hashes are:
- Create a hash with or without any type of data  
- Be able to assign or re-assign any value to a given key
- Be able to access any item in the hash
- Be able to add a new key-value pair to the hash


### Let's see some examples
#### Example #1
Create a hash which will store the _quantity_ and _unit of measure_ for an item in your refrigerator. Output these values to the user in a logical sentence.

Note: We are going to use **symbol** keys in this example.

##### Part 1
Create an empty hash
```ruby
butter = {}
```

##### Part 2
Add some items
```ruby
butter[:quantity] = 3
butter[:unit] = "stick"
```

##### Part 3
Put it all together!
```ruby
puts "We have #{ butter[:quantity] } #{ butter[:unit] }(s) of butter!"
```

#### Example #2
Let's take Example #1 to another level. Let's generalize this has that we created to create a _hash_ of _hashes_ which will keep track of _every_ item in our refrigerator.

### Part 1
Create an empty hash
```ruby
fridge_items = {}
```

##### Part 2
Add the original item we used
```ruby
fridge_items[:butter] = { quantity: 3, unit: "stick" }
```

##### Part 3
Add another item
```ruby
fridge_items[:milk] = { quantity: 16, unit: "ounces" }
```


#### Example #3
Create a hash that will store a **list** of people corresponding to their current age. We should be able to ask for the list of people, given the age we are interested in querying.

Use yourself and some (possibly made up) friends and family to get started.

##### Part 1
Create an empty hash
```ruby
people_by_age = {}
```

##### Part 2
Create a list of people who are 30 years old
```ruby
thirty = ["Random 1", "Random 2", "Jane Jones"]
```

##### Part 3
Add this list to the empty hash
```ruby
people_by_age[30] = thirty
```

##### Part 4
Do this again for some another age
```ruby
forty_three = ["Gabrielle Union", "Geri Halliwell"]
people_by_age[43] = forty_three
```

##### Part 5
Do this now for only one person in the age range without an age _variable_
```ruby
people_by_age[50] = ["Viola Davis"]
```
