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