# Tic-Tac-Toe Console Application

A simple two-player Tic-Tac-Toe game built using Dart. Players can choose their symbol (X or O), take their turns, and they can replay after each game.

---

## How to Run

1. **Clone or Download the Game File**
    
    Save the game file (`game.dart`) anywhere on your system.
    
2. **Navigate to the File Directory**
    
    `cd path/to/your/file`
    
3. **Run the Game**
	
	 Run the following command in terminal:	 
	```
	dart run game.dart
	```

---

## Game Features

- Players can select their symbol: **X** or **O**
    
- Input validation (prevents invalid or duplicate moves)
    
- **Numbers** in cells means, it is a free position
    
 * Detects winner or tie
    
- Option to replay the game
    

---

## Example Gameplay


`*********************** Tic-Tac-Toe **********************
```
Select Player - X or O ? 
Player1: X 
Player2: O 
|---|---|---|
| 1 | 2 | 3 |
|---|---|---|
| 4 | 5 | 6 | 
|---|---|---| 
| 7 | 8 | 9 | 
|---|---|---| 
Current Player: X 
Choose position from 1 - 9: 5 
|---|---|---|
| 1 | 2 | 3 |
|---|---|---|
| 4 | X | 6 | 
|---|---|---| 
| 7 | 8 | 9 | 
|---|---|---| 
Current Player: O
... 
... 
Congratulations X you WON!
Do you want to play again? (y/n):

```




