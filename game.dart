import 'dart:io';

List<String> board = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
String currentPlayer = 'X';

void printBoard() {
  for (int i = 0; i < 9; i += 3) {
    print('|---|---|---|');
    print('| ${board[i]} | ${board[i + 1]} | ${board[i + 2]} |');
  }
  print('|---|---|---|');
}

void switchPlayer() {
  currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
}

void selectPlayer() {
  String? p1;
  do {
    print("Select Player - X or O ?");
    stdout.write("Player1: ");
    p1 = stdin.readLineSync();

    if (p1 == null || !(p1.toUpperCase() == "X" || p1.toUpperCase() == "O")) {
      print("Invalid input. Please type 'X' or 'O'.");
    }
  } while (p1 == null || !(p1.toUpperCase() == "X" || p1.toUpperCase() == "O"));

  String p2 = p1.toUpperCase() == 'X' ? 'O' : 'X';
  print("Player2: $p2");

  currentPlayer = p1.toUpperCase();
}

void playerPosition() {
  print("Current Player: $currentPlayer");
  stdout.write("Choose position from 1 - 9: ");
  String? input = stdin.readLineSync();

  bool valid = false;

  while (!valid) {
    while (input == null ||
        !["1", "2", "3", "4", "5", "6", "7", "8", "9"].contains(input)) {
      print("Invalid input. Please enter a number from 1 to 9.");
      stdout.write("Choose position from 1 - 9: ");

      input = stdin.readLineSync();
    }

    int position = int.parse(input) - 1;

    if (board[position] != "X" && board[position] != "O") {
      valid = true;
      board[position] = currentPlayer;
      switchPlayer();
    } else {
      print("Position already selected, choose another position!");
      stdout.write("Choose position from 1 - 9: ");
      input = stdin.readLineSync();
    }
  }

  printBoard();
}

bool isGameRunning = true;
void checkWinner() {
  if (board[0] == board[1] && board[1] == board[2]) {
    isGameRunning = false;
    print("Congratulations ${board[0]} you WON!");
  } else if (board[3] == board[4] && board[4] == board[5]) {
    isGameRunning = false;
    print("Congratulations ${board[3]} you WON!");
  } else if (board[6] == board[7] && board[7] == board[8]) {
    isGameRunning = false;
    print("Congratulations ${board[6]} you WON!");
  } else if (board[0] == board[3] && board[3] == board[6]) {
    isGameRunning = false;
    print("Congratulations ${board[0]} you WON!");
  } else if (board[1] == board[4] && board[4] == board[7]) {
    isGameRunning = false;
    print("Congratulations ${board[1]} you WON!");
  } else if (board[2] == board[5] && board[5] == board[8]) {
    isGameRunning = false;
    print("Congratulations ${board[2]} you WON!");
  } else if (board[0] == board[4] && board[4] == board[8]) {
    isGameRunning = false;
    print("Congratulations ${board[0]} you WON!");
  } else if (board[2] == board[4] && board[4] == board[6]) {
    isGameRunning = false;
    print("Congratulations ${board[2]} you WON!");
  } else if (board.every((cell) => cell == "X" || cell == "O")) {
    isGameRunning = false;
    print("(: Tie :)");
  }
}

void resetValues() {
  isGameRunning = true;
  board = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  currentPlayer = 'X';
}

void runApp() {
  print('********************* Tic-Tac-Toe *********************');
  selectPlayer();
  printBoard();
  while (isGameRunning) {
    playerPosition();
    checkWinner();
  }
}

void main() {
  do {
    runApp();
    stdout.write('Do you want to play again? (y/n): ');
    String? input = stdin.readLineSync();
    if (input?.toLowerCase() == 'y') {
      resetValues();
    } else {
      print('Thanks for playing!');
      break;
    }
  } while (isGameRunning);
}
