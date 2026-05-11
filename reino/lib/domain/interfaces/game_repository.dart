import '../models/game_state.dart';

abstract class GameRepository {
  GameState loadGame();
  void saveGame(GameState state);
  void resetGame();
}
