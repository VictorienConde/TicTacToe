class GameState {
  final List<String> board;
  final int currentPlayer;

  const GameState({
    required this.board,
    required this.currentPlayer,
  });
}