_Jumpstart Live (JSL)_
# Day 6
## Symbols

### Overview
* Symbols in Ruby are objects with specific names. There can only ever be one symbol with the same name in a program's execution.
* If you are naming something, you should use a symbol. If the contents of the individual characters are important than you should use a string.
* To create a symbol named age, use `:age`
* You can convert a string to a symbol by using `to_sym`, e.g., `"apple".to_sym` would create `:apple`

### Symbols and Hashes

```ruby
# red, blue, yellow, and purple are all symbols
# when initializing a hash, you do not need the preceding :
colors = {red: 32, blue: 13, yellow: 2, purple: 104}

# when accessing, you do need the :
puts "#{colors[:red] people love red"
```
