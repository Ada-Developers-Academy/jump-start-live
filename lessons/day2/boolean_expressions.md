_Jumpstart Live (JSL)_
# Day 2
## Boolean Expressions

### Precedence
* Also commonly called order-of-operations

| __Priority__ | __Operation__ |
| :--- | :--- |
| 1 | parens |
| 2 | unary operations |
| 3 | multiplication, division, mod|
| 4 | addition, subtraction, string concatenation |
| 5 | less than, less than or equal to, greater than, greater than or equal to |
| 6 | equal to, not equal to |
| 7 | and |
| 8 | or |

### Relational Operators
* Relational operators allow you to compare two values
* In ruby you can use relational operators on numbers and strings
* The opposite of `>` is `<=` and the opposite of `<` is `>=`

| __Operator__ | __Description__ | __Example__ | __Result__ |
| :--- | :--- | :--- | :--- |
| `==` | equals | `1 + 1 == 2` | `true` |
| `!=` | does not equal | `3.2 != 2.5` | `true` |
| `<` | less than | `10 < 5` | `false` |
| `>` | greater than | `10 > 5` | `true` |
| `<=` | less than or equal to | `126 <= 100` | `false` |
| `>=` | greater than or equal to | `5.0 >= 5.0` | `true` |
 
### Boolean values
* The two possible values of a boolean data type are `true` and `false`
* A non-boolean value that evaluates to true, is called "truthy"
	* Everything in ruby is "truthy" except for `nil` 
* A non-boolean value that evaluates to false, is called "falsey", also sometimes "falsy"
	* `nil` is the only "falsey" value in ruby

#### Examples
```ruby
if 2
	puts "2 is truthy"
end

if 'hello'
	puts "\"hello\" is truthy"
end

if !nil
	puts "nil is falsey"
end
```

### Logical operators
* Logical operators allow you to combine or modify boolean expressions

| __Operator__ | __Description__ | __Example__ | __Result__ |
| :--- | :--- | :--- | :--- |
| `&&` | and | `(2 == 3) && (-1 < 5)` | `false`|
| `||` | or | `(2 == 3) || (-1 < 5)` | `true` |
| `!` | not | `!(2 == 3)` | `true` |

| __p__ | __q__ | __p && q__ | __p &#124;&#124; q__ |
| :--- | :--- | :--- | :--- |
| `true` | `true` | `true` | `true` |
| `true` | `false` | `false` | `true` |
| `false` | `true` | `false` | `true` |
| `false` | `false` | `false` | `false` |

| __p__ | __!p__ |
| :--- | :--- |
| `true` | `false` |
| `false` | `true` |

#### Short Circuit Evaluation
Short Circuit Evaluation describes a semantic rule related to logical operators in boolean expressions. It states that the second argument is only evaluated if the first argument is not enough to determine the overall value of the expression.

Specifically, when the first argument of an `&&` statement evaluates to false, the second argument is not considered since the entire statement will evaluate to false. Conversely, if the first argument of an `||` statement evaluates to true, the second argument is not considered since the entire statement will evaluate to true.

##### Examples

```ruby
x = true
y = false

# no short circuit
# y is evaluated
if x && y
	puts "1"
end

# short circuit
# x is not evaluated
if y && x
	puts "2"
end

# short circuit
# y is not evaluated
if x || y
	puts "3"
end

# no short circuit
# x is evaluated
if y || x
	puts "4"
end
```

#### Syntax
Its important to understand that you combine relational operators with logical operators.

You cannot for example ...

```ruby
x = 1
if x == false || 2 || 48
	puts "x is false, 2, or 48"
end
```

In ruby this code would print 2, and not false as you would expect.

```
x == false || 2 || 48
false || 2 || 48
2 || 48
# and since 2 is truthy, the statement is printed
# not that short circuit evaluation results in the 48 not being considered
```