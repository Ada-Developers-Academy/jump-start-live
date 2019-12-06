_JumpStart Live (JSL)_

# Day 6

## Nested Hashes

### Learning Goals

By the end of this lesson students will be able to:

- Build a nested data structure involving hashes and arrays
- Access element in a nested data structure
- Navigate a nested data structure using a loop

### An Array of Hashes

If Ada was building a student database application we might want to keep track of a student"s ID number, email address, classroom & name.  We could store them in 3 parallel arrays like this:

```ruby
student_names = ["Alice Jones", "Ada Lovelace", "Brook Zoolander"]
student_emails = ["Alice@adadev.org", "Ada@adadevlorg", "brook@adadev.org"]
student_ids = [111, 112, 113]

student_names.length.times do |index|
  puts "ID: #{student_ids[index]}: #{student_names[index]} - #{student_emails[index]}"
end
```

However as this application grows it could become tedious to keep each student's name, email address and id number on the same index.  Instead we could create 1 array with each element being a hash containing the fields for the same student.

```ruby
students = [
  {
    name: "Alice Jones",
    id: 111,
    email: "Alice@adadev.org",
  },
  {
    name: "Ada Lovelace",
    id: 112,
    email: "ada@adadev.org",
  },
  {
    name: "Brook Zoolander",
    id: 113,
    email: "brook@adadev.org",
  }
]

students.each do |student|
  puts "ID: #{student[:id]}: #{student[:name]} - #{student[:email]}"
end
```

By using one array of hashes we contain each student's data in one element of the array.  We can also use a `.each` loop to iterate through the array without using an index.


**Question** How can you, without looping print

- Ada's student email?
- Brook's ID number?
- Alice's full name?

<details>
<summary>Solution</summary>

```ruby
# Ada's student email
puts students[1][:email]

# Brook's ID number
puts students[-1][:id]

# Alice's Full name
puts students.first[:name]
```

</details>

### A Hash of Arrays

What about if Ada wanted to store their student lists by cohort name.  In other words they wanted to look up students by cohort name and get a list of student names?


```ruby
classes = {
  clusters: [
    "Ada Lovelace", "Amahle Elna", "Lucia Santos"
  ],
  containers: [
    "Dee del Rosario", "Devin Helmgren", "Becca Elenzil"
  ],
}
```

**Question** How would you loop through and print out all the `containers`?

<details>
<summary>Solution</summary>

```ruby
classes[:containers].each do |student|
  puts student
end
```
</details>


**Question** How could you add, "Christine Martin" to the `clusters`?

<details>
<summary>Solution</summary>

```ruby
classes[:clusters] << "Christine Martin"
```
</details>

### Design Exercise

Your instructor, Ada, is running a short-term rental property and wants to keep track of their guests.  Each guest has a name, id number, check-in date and check-out date (strings).  Ada has two rental properties a condo and a townhouse.

How would you organize the data below in Ruby:

**ID**|**Property**|**Guest Name**|**Check-in**|**Check-out**
:-----:|:-----:|:-----:|:-----:|:-----:
1|Condo|Marie D'Ancanto|2014-08-14|2014-08-16
2|Townhouse|Barbara Wilson|2014-09-20|2014-09-21
3|Condo|Kitty Pryde|2015-12-14|2015-12-27
4|Condo|Patience Phillips|2016-01-02|2016-01-03
5|Townhouse|Wanda Maximoff|2016-01-06|2016-01-14



### Resources

- [Learn.co Nested Hashes](https://learn.co/lessons/nested-hashes-intro)
- [Ruby Hash Documentation](https://ruby-doc.org/core/Hash.html)
