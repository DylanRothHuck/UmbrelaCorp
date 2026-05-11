# Reino — Agent Guide

## Project Overview
Card game "Reino" built with Flutter. Spanish deck, 2-4 players, collect 3 kings of same suit to win. Full rules in `RULES.md` (EN) / `RULES-ES.md` (ES).

## Architecture — 4 Layers

```
lib/
├── main.dart                 # Entry point
├── domain/                   # Entities + interfaces (pure Dart, no Flutter)
│   ├── models/               # card.dart, player.dart, game_state.dart
│   └── interfaces/           # game_repository.dart
├── application/              # Game logic
│   ├── game_engine.dart      # Deck creation, shuffle, init
│   └── score_calculator.dart # Scoring per card type/location
├── infrastructure/           # External adapters
│   └── local_game_repository.dart
└── presentation/             # UI (Flutter widgets)
    ├── screens/              # home_screen.dart
    ├── widgets/              # menu_button.dart
    └── providers/            # State management (TBD)
```

### Dependency Rules
- Domain → nothing
- Application → Domain only
- Infrastructure → Domain (implements interfaces)
- Presentation → Application + Domain (never Infrastructure directly)

## How to Run
```sh
flutter pub get
flutter run
```

## Key Conventions
- **No comments** in code unless the task explicitly requires them.
- Follow existing patterns (e.g., `MenuButton` widget style).
- All game logic in `application/`, never in `presentation/`.
- Domain models use `const` constructors where possible.
- State management goes in `presentation/providers/` (TBD which approach).

## Testing
```sh
flutter test
```
Tests in `test/`. Mirror `lib/` structure.

## Game Rules Quick Reference
- **Goal**: 3 kings (10, 11, 12) same suit in hand → declare "Reino"
- **Setup**: 3 cards each, rest in draw pile
- **Turn**: up to 2 actions (swap/activate) → draw 1 card
- **8 (Curse)**: 4th card in hand, blocks Reino, −5pts. Remove via 1/3/7
- **Prisoners**: duplicate kings go face-up in prisoner pile
- **Scoring**: kings +10/−10, specials +5/+2/−5, normals +1/−5

See `RULES.md` for full detail.

## Status
- Home screen done (title + Play/Settings buttons, background image).
- Architecture scaffolded.
- No game flow implemented yet (play screen, turns, card rendering, etc.).
