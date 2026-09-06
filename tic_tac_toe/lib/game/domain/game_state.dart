enum GameStatus {
  playing,
  win,
  draw,
}

class GameState {
  final List<String> board;
  final int currentPlayer;
  final GameStatus status;
  final String? winner;

  const GameState({
    required this.board,
    required this.currentPlayer,
    required this.status,
    this.winner,
  });
}