_JumpStart Live (JSL)_

# Optional Assessment

## Overview
This is a completely optional assessment for anyone that would like to practice combining the concepts learned in JSL. The point of this optional assessment is to give you practice with concepts you are not yet confident yet, so try and use new concepts as much as possible.

This is an intentionally difficult problem designed to not only give students practice with newly learned concepts but to also give students an opportunity to work on their problem solving skills.

Students are encouraged to work together if they desire, and to reach out to the JumpStart instructors for guidance and feedback as they work through the problem. We estimate this program to take a pair of students ~10 hours to complete fully.

## Specification
Write a Ruby program that allows two users to play a game of _Nim_ together. If you are not familiar with the game start by reading the [Nim Wikipedia article](https://en.wikipedia.org/wiki/Nim).

At the start of the program you should accept each user's name. And allow them to choose the game difficulty (easy = 2 piles, medium = 3 piles, hard = 7 piles). Your game should then randomly decide who will go first.

After the game finishes you should print each player's score for that game (they earn +1 point for being the player that does __not__ remove the last counter) along with a summary of their moves.

Your game should then prompt them to play another game or quit. If they choose to quit you should display total scores for each player across all played games, otherwise you should allow the two player's to play again.

Each user must select at least one item to remove from each pile (they cannot remove 0 items). Make sure that users do not cheat, and that their moves are valid.

## Hints
* There are many ways to solve and code this program
* Try your best to use arrays and hashes to represent information appropriately
* The amount in each pile should be randomly selected at the start of each game
* Break the problem down into small steps, and run your code as you go, don't try and do everything at once
* If this seems way too overwhelming to you, choose to work on a small subset of this problem instead
  * Try a version with only 1 game and no difficulty
  * Try a version with only 1 game and no scores

## Extensions
* Display an [ASCII](https://en.wikipedia.org/wiki/ASCII_art) representation of each pile before each turn
* Build a computer player, that a single person can play against

## Example Output

```
Welcome to Nim!
Player 1 name: susan
Player 2 name: riley

Enter difficulty level (easy, medium, hard): medium

Piles
A: 3		B: 4		C: 5

Susan, choose a pile: A
Susan, how many would you
like to remove from pile A? 2

Piles
A: 1		B: 4		C: 5

Riley, choose a pile: E
There is no pile E Riley!
Riley, choose a pile: C
Riley, how many would you
like to remove from pile C? 3

Piles
A: 1		B: 4		C: 2

Susan, choose a pile: B
Susan, how many would you
like to remove from pile B? 0
Susan, you cannot remove 0 from pile B!
Susan, how many would you
like to remove from pile B? 1

Piles
A: 1		B: 3		C: 2

Riley, choose a pile: B
Riley, how many would you
like to remove from pile B? 1

Piles
A: 1		B: 2		C: 2

Susan, choose a pile: A
Susan, how many would you
like to remove from pile A? 1

Piles
A: 0		B: 2		C: 2

Riley, choose a pile: B
Riley, how many would you
like to remove from pile B? 1

Piles
A: 0		B: 1		C: 2

Susan, choose a pile: C
Susan, how many would you
like to remove from pile C? 2

Piles
A: 0		B: 1		C: 0

Riley, choose a pile: B
Riley, how many would you
like to remove from pile B? 1

Piles
A: 0		B: 0		C: 0

Susan is the winner of this game!
Susan's moves: A-2, B-1, A-1, C-2
Riley's moves: C-3, B-1, B-1, B-1

Do you want to play again (y/n)? y

Enter difficulty level (easy, medium, hard): easy

Piles
A: 4		B: 2

Riley, choose a pile: A
Riley, how many would you
like to remove from pile A? 4

Piles
A: 0		B: 2

Susan, choose a pile: A
Susan, you cannot choose pile A
as it has no items!
Susan, choose a pile: B
Susan, how many would you
like to remove from pile B? 1

Piles
A: 0		B: 1

Riley, choose a pile: B
Riley, how many would you
like to remove from pile B? 1

Susan is the winner of this game!
Riley's moves: A-4, B-1
Susan's moves: B-1

Do you want to play again (y/n)? n

Susan's total score: 2
Riley's total score: 0

Susan is the winner, congratulations!
```
