_JumpStart Live (JSL)_

# Day 4

## Boolean Zen

_Boolean zen is a phrase used to describe if code using boolean values is written in the most concise way possible. Boolean zen is considered good programming style._

### Tips

* You should never compare to true or false in an if statement, while loop, or until loop

### Examples

```ruby
# not boolean zen
if width > 0 && width < 100
    puts true
else
    puts false
end

# boolean zen
puts width > 0 && width < 100
```

```ruby
# not boolean zen
correct = false
until correct == true
    # statement(s)
end

# boolean zen
correct = false
until correct
    # statement(s)
end
```

```ruby
# not boolean zen
not_correct = true
while not_correct == true
    # statement(s)
end

# boolean zen
not_correct = true
while not_correct
    # statement(s)
end
```

### Resources

* [Ada Boolean Zen Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=1d4f3740-edc2-469a-ac3c-bf980dd649cf) (2:55)
