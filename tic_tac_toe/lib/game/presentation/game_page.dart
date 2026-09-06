import 'package:tic_tac_toe/game/presentation/game_board.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Text(title),
            const Spacer(),
            const Text('Joueur 1'),
          ],
        ),
      ),
      body: const Center(
        child: GameBoard(),
      ),
    );
  }
}