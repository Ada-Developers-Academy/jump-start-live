_Jumpstart Live (JSL)_
# Day 6
## Arrays vs Hashes

combining arrays and hashes

Both Arrays and Hashes are collections that store and retrieve data.

Arrays are ordered lists. The order of the data is maintained and important. This means you can retrieve data using a 0-based index.

Hashes are a collection of paired information (also described as a collection of key-value pairs). Each pair has both a key and a value. The keys in the hash are unique (i.e., not repeated), but values may be repeated. Hashes store information in the order in which the keys were inserted, you however should never depend on this order.

Arrays store values, but have fixed indexes (integers, starting at 0). Hashes allow you to still store data but to define the index as something other than an integer.

If you try and access an element of an array or a hash that does not exist, the value `nil` will be sent back.

If you want to store single pieces of information use an array. If your data is better described as a pair, then use a Hash.

### Examples
1. You want to store the names of all the students in Ada, class of C7.

	```ruby
	names = ["Riley", "Sam", "Alex"]
	```

2. You want to store the names and ages of all the students in Ada, class of C7.

	```ruby
	c7 = {Riley: 29, Sam: 42, Alex: 29}
	```

3. You want to store the names, ages, and favorite colors of all the students in Ada, class of C7.
	```ruby
	c7 = {Riley: {age: 29, color: "blue"}, Sam: {age: 42, color: "yellow"}, Alex: {age: 29, color: "blue"}}
	```