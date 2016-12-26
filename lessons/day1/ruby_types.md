_Jumpstart Live (JSL)_
# Day 1
## Ruby Types

### Overview
Everything in Ruby is an object. There are 7 data types you should know about now.

| Data Type | Description | Example |
| :--- | :--- | :--- |
| String | Anything surrounded by single or double quotes | `"hello"`, `'hello'` |
| Fixnum | Integer value (no decimal) | `1`, `0`, `-7` |
| Float | Real value (decimal) | `0.5` |
| Array | An ordered list | `[5, 0, 1]` |
| Symbol | A named object | `:apple` |
| Hash | A set of key, value pairs | `{ A: 2, B: 3, C: 1}` |
| Range | A set of values with a beginning and an end | `(2..6)` |


### Determining the type
To determine the type of an object you can use `.class`

```ruby
x = 1
puts x.class #Fixnum

word = "hello"
puts word.class #String
```

### Resources
* [Ruby Types Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=0a3aad23-0e7d-4dca-b6bb-f1ed3bed8692)(5:52)