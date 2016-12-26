_Jumpstart Live (JSL)_
# Day 6
## Symbols

### Overview
* Symbols in Ruby are objects with specific names
* There can only ever be one symbol with the same name in a program's execution
* If you are naming something, you should use a symbol
* If the contents of the individual characters are important than you should use a string

### Syntax
```ruby
:age # creates a symbol named age
```

### Convert string to symbol

```ruby
"apple".to_sym # creates an :apple symbol
```

### Symbols and Hashes

```ruby
# red, blue, yellow, and purple are all symbols
# when initializing a hash, you do not need the preceding :
colors = {red: 32, blue: 13, yellow: 2, purple: 104}

# when accessing, you do need the :
puts "#{colors[:red] people love red"
```

### Resources
* [Ada Symbols Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=c01b4ab7-7a1e-4f92-9e27-c7d561146016) (4:19)
* [Symbols Video by Peter Cooper](https://youtu.be/mBXGBbEbXZY) (24:46)
* [Ruby Documentation on Symbols](http://ruby-doc.org/core-2.4.0/Symbol.html)