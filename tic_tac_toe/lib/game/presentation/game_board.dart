import 'package:tic_tac_toe/game/presentation/game_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/game/presentation/controller/game_controller.dart';

class GameBoard extends ConsumerWidget {
    const GameBoard({super.key});
    @override
    Widget build(BuildContext context, WidgetRef ref) {
        final gameState = ref.watch(gameControllerProvider);
        final gameController = ref.read(gameControllerProvider.notifier);
        return Padding (
            padding:EdgeInsetsGeometry.all(24),
            child: AspectRatio(
                aspectRatio: 1,
                child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(
                        gameState.board.length, (index) => GameCell(
                            symbol: gameState.board[index],
                            onTap: (){
                                gameController.playTurn(index);
                            },
                        ),
                    )
                ),
            ),
        );
    }
}