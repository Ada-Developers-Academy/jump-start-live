_Jumpstart Live (JSL)_
# Day 6
## Arrays vs Hashes

Both Arrays and Hashes are collections that store and retrieve data.

### Arrays
Arrays are ordered lists of items. The order of the data is maintained and important. Arrays have integer indexes starting at 0 which cannot be changed. This means you can retrieve data using a 0-based index.

### Hashes
Hashes are a collection of paired information. Also described as a collection of key-value pairs, or as a "look up table". Hashes use any object for their index.

Each pair has both a key and a value. The keys in the hash are unique (i.e., not repeated), but values may be repeated. Hashes store information in the order in which the keys were inserted, you however should never depend on this order.

### Differences
Arrays store values, but have fixed indexes (integers, starting at 0). Hashes allow you to still store data but to define the index as any object.

### Similarities
If you try and access an element of an array or a hash that does not exist, the value `nil` will be sent back.

### Tips
If you want to store single pieces of information use an array. If your data is better described as a pair, then use a Hash.

### Examples
1. You want to store the names of all the students in Ada, class of C7.

	```ruby
	names = ["Riley", "Sam", "Alex"]
	```

2. You want to store the names and ages of all the students in Ada, class of C7.

	```ruby
	# assuming no repeated names
	# student name is the key
	# student age is the value
	c7 = {Riley: 29, Sam: 42, Alex: 29}
	```

3. You want to store the names, ages, and favorite colors of all the students in Ada, class of C7.

	```ruby
	# assuming no repeated names
	# student name is the key
	# value is a hash containing key, value pairs
	c7 = {
		Riley: {age: 29, color: "blue"}, 
		Sam: {age: 42, color: "yellow"}, 
		Alex: {age: 29, color: "blue"}
	}
	```

	You may also consider storing hashes with individual people's information inside of an array

	```ruby
	# c7 is an array of 3 hashes
	# each hash has information on a single person
	# they keys for each hash are name, age, and color
	c7 = [
		{
			name: "Riley"
			age: 29
			color: "blue"
		}
		{
			name: "Sam"
			age: 42
			color: "yellow"
		}
		{
			name: "Alex"
			age: 29
			color: "blue"
		}
	]