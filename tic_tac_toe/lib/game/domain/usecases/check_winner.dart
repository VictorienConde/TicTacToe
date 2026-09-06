class CheckWinner {
  String? call(List<String> board) {
    // rows
    for (int i = 0; i < 9; i += 3) {
      if (board[i] != '' &&
          board[i] == board[i + 1] &&
          board[i] == board[i + 2]) {
        return board[i];
      }
    }

    // columns
    for (int i = 0; i < 3; i++) {
      if (board[i] != '' &&
          board[i] == board[i + 3] &&
          board[i] == board[i + 6]) {
        return board[i];
      }
    }

    // diagonals
    if (board[0] != '' &&
        board[0] == board[4] &&
        board[0] == board[8]) {
      return board[0];
    }

    if (board[2] != '' &&
        board[2] == board[4] &&
        board[2] == board[6]) {
      return board[2];
    }

    if (!board.contains('')) {
      return 'Draw';
    }

    return null;
  }
}