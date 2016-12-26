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
* [Ada Symbols Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5fb869d2-db52-4cd2-a1cc-238e0e084fa5) (15:34)
* [Symbols Video by Peter Cooper](https://youtu.be/mBXGBbEbXZY)
* [Ruby Documentation on Symbols](http://ruby-doc.org/core-2.4.0/Symbol.html)