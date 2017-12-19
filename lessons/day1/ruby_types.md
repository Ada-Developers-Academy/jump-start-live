_JumpStart Live (JSL)_
# Day 1
## Ruby Types

### Overview
Everything in Ruby is an object. There are 7 data types you should know about now.

| Data Type | Description | Example |
| :--- | :--- | :--- |
| String | Anything surrounded by single or double quotes | `"hello"`, `'hello'` |
| Integer | A number with no decimal | `1`, `0`, `-7` |
| Float | Real value (decimal) | `0.5` |
| Array | An ordered list | `[5, 0, 1]` |
| Symbol | A named object | `:apple` |
| Hash | A set of key, value pairs | `{ A: 2, B: 3, C: 1}` |
| Range | A set of values with a beginning and an end | `(2..6)` |

> Fixnum is another name for Integer. Ruby version 2.4.0 introduced the term
> Integer, so if your ruby version is at least 2.4.0, use Integer. Otherwise
> use Fixnum. You can check your version by typing `ruby --version` in the
> terminal.


### Determining the type
To determine the type of an object you can use `.class`

```ruby
x = 1
puts x.class #Integer

word = "hello"
puts word.class #String
```

### Resources
* [Ada Ruby Types Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=0a3aad23-0e7d-4dca-b6bb-f1ed3bed8692) (5:52)
