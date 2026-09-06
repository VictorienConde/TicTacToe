import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game/domain/game_state.dart';

class GameResultCard extends StatelessWidget {
  final GameStatus status;
  final String? winner;
  final VoidCallback onReplay;

  const GameResultCard({
    super.key,
    required this.status,
    required this.winner,
    required this.onReplay,
  });

  @override
  Widget build(BuildContext context) {
    final bool isWin = status == GameStatus.win;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  isWin ? Icons.emoji_events_rounded : Icons.handshake_rounded,
                  size: 72,
                ),

                const SizedBox(height: 20),

                Text(
                  isWin ? 'Victoire !' : 'Match nul',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),

                const SizedBox(height: 12),
                Text(
                  isWin
                      ? 'Le joueur ${winner == 'X' ? '1' : '2'} remporte la partie.'
                      : 'Personne ne remporte cette manche.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

                const SizedBox(height: 32),

                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: onReplay,
                    icon: const Icon(Icons.refresh_rounded),
                    label: const Text('Rejouer'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}