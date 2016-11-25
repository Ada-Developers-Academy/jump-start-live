# Loop Problems

Instructions:  
Choose a partner with whom you will split these exercises. You will work on one problem and your partner will work through the other. First, try to complete these problems on paper. Then, if you have time, try to do this in code.

1. Write a program that allows a user to play a guessing number game. You should predetermine the secret number (between 0-1000). Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower".

```
Guess my number > ~10~
HIGHER
Guess my number > ~200~
LOWER
Guess my number > ~150~
HIGHER
Guess my number > ~160~
HIGHER
Guess my number > ~161~
YOU GOT IT!
```

2. Write a program that plays duck duck goose. Allow the user to enter the player they want to call goose, and then say "duck" for each player, until the last player where you say "goose".

```
Which player do you want to Goose? > ~5~

Player 1: Duck
Player 2: Duck
Player 3: Duck
Player 4: Duck
Player 5: Goose
```

### Added Fun!
3. Modify Example #2 in [loops](../examples/3_loops.md) with the assumption that we don't trust the user's typing. Modify the program to require the user to enter the same value twice in order to add that value to the total.
```
Hello! We are going to total some numbers!
Enter a negative number to quit.

~3~
~3~
~2~
~2~
~-1~
~-1~

Result: 5
```
