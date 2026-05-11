# Project Structure — Reino

```
reino/
├── android/                  # Android platform config
├── assets/                   # Game assets (images, etc.)
│   └── background.jpg
├── ios/                      # iOS platform config
├── lib/                      # Dart source code (4-layer architecture)
│   ├── main.dart             # App entry point
│   ├── domain/               # Layer 1: Enterprise business rules
│   │   ├── models/           # Core entities
│   │   │   ├── card.dart     # Card entity (number, suit, type)
│   │   │   ├── player.dart   # Player entity (hand, stack, activated, prisoners)
│   │   │   └── game_state.dart  # Game state (phase, turn, players, pile)
│   │   └── interfaces/       # Contracts/abstract interfaces
│   │       └── game_repository.dart  # Game persistence contract
│   ├── application/          # Layer 2: Application business rules
│   │   ├── game_engine.dart  # Deck creation, shuffle, game init
│   │   └── score_calculator.dart  # Scoring logic per card type/location
│   ├── infrastructure/       # Layer 3: External adapters
│   │   └── local_game_repository.dart  # In-memory game persistence impl
│   └── presentation/         # Layer 4: UI
│       ├── screens/
│       │   └── home_screen.dart   # Main menu screen
│       ├── widgets/
│       │   └── menu_button.dart   # Reusable menu button component
│       └── providers/        # State management (TBD)
├── linux/                    # Linux platform config
├── macos/                    # macOS platform config
├── test/                     # Tests
├── web/                      # Web platform config
├── windows/                  # Windows platform config
├── RULES.md                  # Game rules (English)
├── RULES-ES.md               # Game rules (Spanish)
├── STRUCTURE.md              # This file
└── pubspec.yaml              # Flutter project config
```

## Layer Architecture

| Layer | Responsibility | Depends On |
|-------|---------------|------------|
| **Domain** | Entities + Interfaces | Nothing (pure Dart) |
| **Application** | Game logic, use cases | Domain |
| **Infrastructure** | Repositories, external APIs | Domain (interfaces) |
| **Presentation** | Screens, widgets, state | Application + Domain |

### Layer Rules
- **Domain** has zero dependencies — no Flutter, no packages.
- **Application** depends only on Domain.
- **Infrastructure** implements Domain interfaces.
- **Presentation** depends on Application and Domain (never directly on Infrastructure).
