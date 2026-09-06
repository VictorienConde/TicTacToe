import 'package:tic_tac_toe/game/presentation/game_cell.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: AspectRatio(
        aspectRatio: 1,
        child: GridView.count(
          crossAxisCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            GameCell(symbol: ''),
            GameCell(symbol: ''),
            GameCell(symbol: ''),
            GameCell(symbol: ''),
            GameCell(symbol: ''),
            GameCell(symbol: ''),
            GameCell(symbol: ''),
            GameCell(symbol: ''),
            GameCell(symbol: ''),
          ],
        ),
      ),
    );
  }
}