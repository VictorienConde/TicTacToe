import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/game/domain/game_state.dart';

class GameController extends Notifier<GameState> {
  @override
  GameState build() {
    return GameState(
      board: List.filled(9, ''),
      currentPlayer: 1,
    );
  }

  void playTurn(int index) {
    if (state.board[index].isNotEmpty) {
      return;
    }

    final newBoard = [...state.board];

    newBoard[index] =
        state.currentPlayer == 1 ? 'X' : 'O';

    state = GameState(
      board: newBoard,
      currentPlayer:
          state.currentPlayer == 1 ? 2 : 1,
    );
  }
}

final gameControllerProvider =
    NotifierProvider<GameController, GameState>(
  GameController.new,
);