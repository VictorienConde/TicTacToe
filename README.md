# Tic Tac Toe - Flutter

A simple Tic-Tac-Toe application built with **Flutter** and **Riverpod 3**.

The project follows a clean and modular architecture, with a clear separation between the UI, state management, and game logic.

## Features

- 3x3 Tic-Tac-Toe board
- Two-player local game
- Player turn management
- X / O symbol display
- Winner detection
- Draw detection
- End-game screen
- Replay button
- State management with Riverpod 3
- Material 3 UI
- Clean project structure
- Basic automated tests

## Tech Stack

- Flutter
- Dart
- Riverpod 3
- Material 3
- Flutter Test

## Architecture

The project is organized by feature:

```text
lib/
├── main.dart
└── game/
    ├── domain/
    │   ├── game_state.dart
    │   └── usecases/
    │       └── check_winner.dart
    │
    └── presentation/
        ├── controller/
        │   └── game_controller.dart
        ├── game_page.dart
        ├── game_board.dart
        ├── game_cell.dart
        └── game_result_card.dart
