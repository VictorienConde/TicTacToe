import 'package:flutter/material.dart';

class GameCell extends StatelessWidget {
  final String symbol;
  final VoidCallback onTap;

  const GameCell({
    super.key,
    required this.symbol,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Center(
          child: Text(
            symbol,
            style: const TextStyle(
              fontSize: 48,
            ),
          ),
        ),
      ),
    );
  }
}