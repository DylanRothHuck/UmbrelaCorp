import 'card.dart';
import 'player.dart';

enum GamePhase { setup, firstDraw, playing, finished }

class GameState {
  final List<Player> players;
  final List<Card> drawPile;
  final int currentPlayerIndex;
  final GamePhase phase;
  final int targetScore;
  final int turnActionsRemaining;
  final bool hasDrawnThisTurn;

  const GameState({
    required this.players,
    required this.drawPile,
    required this.currentPlayerIndex,
    required this.phase,
    required this.targetScore,
    this.turnActionsRemaining = 2,
    this.hasDrawnThisTurn = false,
  });

  Player get currentPlayer => players[currentPlayerIndex];
}
