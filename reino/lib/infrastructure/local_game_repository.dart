import '../domain/interfaces/game_repository.dart';
import '../domain/models/game_state.dart';

class LocalGameRepository implements GameRepository {
  GameState? _cachedState;

  @override
  GameState loadGame() {
    if (_cachedState == null) {
      throw Exception('No saved game found');
    }
    return _cachedState!;
  }

  @override
  void saveGame(GameState state) {
    _cachedState = state;
  }

  @override
  void resetGame() {
    _cachedState = null;
  }
}
