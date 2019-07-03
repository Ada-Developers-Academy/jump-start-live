_JumpStart Live (JSL)_
# Day 3

## Prep Work
* Review your [Election time](https://github.com/Ada-Developers-Academy/jump-start/blob/master/learning-to-code/iterators/assignments/election.md) solution and be prepared to talk with others about your code
* Review the [Iterator notes](https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/iterators) from JumpStart
* Watch [Day 3 Videos](https://adaacademy.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=4bd4003b-ca01-4260-8e3e-86296c909339) (~33 minutes)
* Review [lesson notes for Day 3](#lessons)
* Complete the [exercises](#exercises) and be prepared to discuss them with others in class

## Goals

* Understand and be able to use iterators and loops

## Warm up

* Share what you learned from our last session about conditionals
* Walk your partner though your Election time code focusing on using programming vocabulary (e.g, blocks, loops, iterator, variable assignment, conditional statement)

## Lessons

* [Loops](loops.md)
* [Scope](scope.md)
* [Iterators](iterators.md)

## Exercises
1. Write a program that allows a user to play a guessing number game. Your program should generate a random number between 0 – 1000 (including 0, but not including 1000). Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower". When they guess it correctly print a winning message along with their total number of guesses.

	```
	Guess my number: 10
	HIGHER
	Guess my number: 200
	LOWER
	Guess my number: 150
	HIGHER
	Guess my number: 160
	HIGHER
	Guess my number: 161
	YOU GOT IT IN 5 GUESSES!
	```

1. Write a program that plays duck duck goose. Allow the user to enter the player's number they want to call goose on, and then say "duck" for each player before the "goose", then say "goose" for the chosen player.

	```
	Which player do you want to Goose? 5

	Player 1: Duck
	Player 2: Duck
	Player 3: Duck
	Player 4: Duck
	Player 5: Goose
	```

1. Write a program that allows a user to enter the number of petals on a flower. Then one by one, print “plucking petal #1: they love me!”. Alternate “They love me” and “They love me not” as well as increase the petal number for each petal.

1. You don't trust your users. Modify the program below to require the user to enter the same value twice in order to add that value to the total.

	#### Code

	```ruby
	puts "Hello! We are going to total some numbers!"
	puts "Enter a negative number to quit."

	total = 0
	input = gets.chomp.to_i
	while input > -1
	  total += input
	  input = gets.chomp.to_i
	end

	puts "Result: #{total}"
	```

	#### Example run

	```
	Hello! We are going to total some numbers!
	Enter a negative number to quit.

	3
	3
	2
	2
	-1
	-1

	Result: 5
	```

## Debrief
* What different types of loops and iterators did we learn about today?
* What topics are you still struggling with?
* What did you especially enjoy about today's class?
* What can be improved for future classes?

## Resources
* [Day 3 Videos](https://adaacademy.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=4bd4003b-ca01-4260-8e3e-86296c909339)
* [Iterator notes](https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/iterators) from JumpStart

## Homework
* Revise your code for exercises for the day based on discussions in class, then share the gist with the instructors
* Review the [Iterator notes](https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/iterators) from JumpStart
* Watch [Day 4 Videos](https://adaacademy.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=59509728-df2d-4580-9077-55ad28795a7f) (~8 minutes)
* Review [lesson notes for Day 4](../day4/readme.md#lessons)
* Complete the [Day 4 exercise](../day4/readme.md#exercise) and be prepared to discuss it with others in class
