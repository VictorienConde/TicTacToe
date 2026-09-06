import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/game/domain/usecases/check_winner.dart';

void main() {
  final checkWinner = CheckWinner();

  test('detects a winner', () {
    final board = [
      'X', 'X', 'X',
      '', '', '',
      '', '', '',
    ];

    expect(checkWinner(board), 'X');
  });

  test('detects a draw', () {
    final board = [
      'X', 'O', 'X',
      'X', 'O', 'O',
      'O', 'X', 'X',
    ];

    expect(checkWinner(board), 'Draw');
  });

  test('returns null while game is still playing', () {
    final board = [
      'X', 'O', '',
      '', '', '',
      '', '', '',
    ];

    expect(checkWinner(board), isNull);
  });
}