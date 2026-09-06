import 'package:flutter/material.dart';

class GameCell extends StatelessWidget {
  final String symbol;

  const GameCell({
    super.key,
    required this.symbol,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}