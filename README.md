## Description

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Example prompt
```sh
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!
```

## Tasks
### Task 1: 
**Extract Nouns for Classes**

```sh
Question, Player, Game
```

### Task 2: 
**Write their roles**


```sh
Question: 'When called generates a question based on two random numbers from 1 to 15'

Player: 'Creates a player, initializes it with 3 lives, and keep track of lives'

Game: 'Responsible the actual game play, track player turns, ask questions & check answers 
      (using question class), decrements lives in case of incorrect answer (using player class)'
```
