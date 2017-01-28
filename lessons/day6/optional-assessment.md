_Jumpstart Live (JSL)_

# Optional Assessment

## Overview
This is a completely optional assessment for anyone that would like to practice combining the concepts learned in JSL. This is an intentionally difficult problem designed to not only give students practice with newly learned concepts but to also give students an opportunity to work on their problem solving skills. Students are encouraged to work together if they desire, and to reach out the to the Jumpstart instructors for guidance and feedback as they work through the problem. We estimate this program to take a pair of students ~10 hours to complete fully.

## Specification
Write a Ruby program that allows two users to play a game of _Hangman_ together. If you are not familiar with the game start by reading the [Hangman Wikipedia article](https://en.wikipedia.org/wiki/Hangman_(game)). Note, you should come up with a better name for your version!

At the start of the program you should accept each user's name.

At the start of each game you should prompt the users for difficulty level (easy = 10 wrong guesses ends the game, medium = 7 wrong guesses ends the game, hard = 5 wrong guesses ends the game). And randomly decide who guesses first.

After the game finishes you should print each players score for that game (they earn +1 point for a correct letter guess times the number of times that letter appears in the word, and -1 point for each incorrectly guessed letter, but only if the correct word is guessed at the end of the game) along with the letters they successfully contributed.

Your game should then prompt them to play another game or quit. If they choose to quit you should display total scores for each player across all played games.

## Hints
* There are many ways to solve and code this program
* Try your best to use arrays and hashes to represent information appropriately
* Create an array of words that will be used in the game, and randomly select a word from it for each new game
* Break the problem down into small steps, and run your code as you go, don't try and do everything at once
* If this seems way too overwhelming to you, choose to work on a small subset of this problem instead
  * Write a letter guessing game instead; where useres have to try and guess a single letter
  * Try a version with only 1 player and no difficulty
  * Try a version with only 1 game and no scores

## Extensions
* Display an [ASCII](https://en.wikipedia.org/wiki/ASCII) representation to indicate how many guesses the players have left
* Give players the opportunity to guess the entire word

## Example Output

```
Welcome to Hangman!
Player 1 name: susan
Player 2 name: riley

Enter difficulty level (easy, medium, hard): easy

Puzzle
_ _ _ _ _

Riley's guess: a

Puzzle
a _ _ _ _

Susan's guess: b

Puzzle
a _ _ _ _

Riley's guess: e

Puzzle
a _ _ _ e

Susan's guess: p

Puzzle
a p p _ e

Riley's guess: l

Puzzle
a p p l e

You solved the puzzle, great job!
Riley is winning!
Riley's score: 3
Riley's contributions: a, e, l
Susan's score: 1
Susan's contributions: p

Do you want to play again (y/n)? y

Enter difficulty level (easy, medium, hard): hard

Puzzle
_ _ _ _ _ _ _ _ _

Susan's guess: r

Puzzle
_ _ _ _ _ _ _ _ _

Riley's guess: m

Puzzle
_ _ _ _ _ _ _ _ _

Susan's guess: i

Puzzle
_ i _ _ _ _ _ _ _

Riley's guess: o

Puzzle
_ i _ _ _ _ _ _ _

Susan's guess: u

Puzzle
_ i _ _ _ _ _ _ _

Riley's guess: h

Puzzle
_ i _ _ _ _ _ _ _

You both lose!
The word was pineapple.

Do you want to play again (y/n)? n

Susan's total score: 1
Riley's total score: 3

Riley is the winner, congratulations!
```
