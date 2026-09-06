import 'package:tic_tac_toe/game/domain/game_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/game/domain/usecases/check_winner.dart';

class GameController extends Notifier<GameState> {
    @override
    GameState build() {
    return GameState(
        board: List.filled(9, ''),
        currentPlayer: 1,
        status: GameStatus.playing,
        winner: null
    );
    }

    void playTurn(int index) {
    if (state.board[index] != '' ||
        state.status != GameStatus.playing) {
        return;
    }

    final newBoard = [...state.board];
    newBoard[index] = state.currentPlayer == 1 ? 'X' : 'O';

    final result = CheckWinner()(newBoard);

    if (result == 'X' || result == 'O') {
        state = GameState(
        board: newBoard,
        currentPlayer: state.currentPlayer,
        status: GameStatus.win,
        winner: result,
        );
        return;
    }

    if (result == 'Draw') {
        state = GameState(
        board: newBoard,
        currentPlayer: state.currentPlayer,
        status: GameStatus.draw,
        winner: null,
        );
        return;
    }

    state = GameState(
        board: newBoard,
        currentPlayer: state.currentPlayer == 1 ? 2 : 1,
        status: GameStatus.playing,
        winner: null,
    );
    }
    
    void resetGame() {
    state = GameState(
        board: List.filled(9, ''),
        currentPlayer: 1,
        status: GameStatus.playing,
        winner: null
    );
    }
}

final gameControllerProvider =
    NotifierProvider<GameController, GameState>(
GameController.new,
);