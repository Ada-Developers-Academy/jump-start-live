_Jumpstart Live (JSL)_
# Day 6
## Hashes

### Overview
* Hashes are a collection of paired information. Also described as a collection of key-value pairs, or as a "look up table".
* Hashes use any object for their index.
* Each pair has both a key and a value.
* The keys in the hash are unique (i.e., not repeated), but values may be repeated.
* Hashes store information in the order in which the keys were inserted, you however should never depend on this order.

### Creating a hash

```ruby
# an empty hash
students = {}

# hash created with key,value pairs
# keys are symbols
soda = {coke: 3, sprite: 7, pepsi: 1}

# hash created with key,value pairs
# keys are numbers
# must use hash rocket
people = {104 => "Korica", 54 => "Jamie", 4 => "Kelly"}
```

### Storing and retrieving data from a hash

#### Syntax

```ruby
# will store the key,value pair into the hash
# if the key already exists, it will change the current value to the new value
hash[key] = value
```

#### Example
```ruby
students[:Riley] = 29
# now the hash holds one key,value pair
students[:Sam] = 42
# now the hash holds two key,value pairs

puts "Student Riley is #{students[:Riley]} years old"
```

### Iterating over a hash

```ruby
# iterating over key,value pairs
students.each do |name, age|
	puts "Student #{name} is #{age} years old"
end

# iterating over keys only
students.each_key do |name|
	puts "#{name}"
end

# iterating over values only
students.each_value do |age|
	puts "#{age}"
end
```

### Useful hash methods

| Method | Description |
| :--- | :--- |
| `h.clear` | Remove all key-value pairs from hash h |
| `h.empty?` | Return true if hash h contains no key-value pairs |
| `h.length` | Return the number of key-value pairs in hash h |
| `h.keys` | Return a new array with the keys from hash h |
| `h.key(value)` | Return the key of an occurrence of a given value in hash h |
| `h.key?(key)` | Return true if key is present in hash h |
| `h.value?(value)` | Return true if value is present in hash h |

### Examples
_We will complete these examples in pairs on paper_

1. We want to be able to quickly determine the state abbreviation for the states in the United States. 

	Determine whether it is best to use an array or a hash, and create it storing at least 4 states and their abbreviations.

	Then write code to print out only the states, then only the abbreviations, and finally nicely formatted output displaying both the states and their abbreviations (e.g., The abbreviation for Nebraska is NE)

2. We want to be able to quickly determine the amount of different types of food items you have in your house.

	Determine whether it is best to use an array or a hash, and create it storing at least 4 food items and their quantities.

	Then write code to print out all the items and their quantities using nicely formatted output.

	```
	# Example output
	3: Oranges
	12: Tortillas
	1: Cookie
	4: Popsicles
	```
