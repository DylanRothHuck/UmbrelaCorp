import '../domain/models/card.dart';
import '../domain/models/player.dart';

class ScoreCalculator {
  static int calculatePlayerScore(Player player) {
    var score = 0;

    for (final card in player.hand) {
      score += _handValue(card);
    }
    for (final card in player.stack) {
      score += _stackValue(card);
    }
    for (final card in player.activated) {
      score += _activatedValue(card);
    }
    for (final card in player.prisoners) {
      score += _prisonerValue(card);
    }

    return score;
  }

  static bool hasReino(Player player) {
    final kings = player.hand.where((c) => c.isKing).toList();
    if (kings.length != 3) return false;
    return kings.every((k) => k.suit == kings.first.suit);
  }

  static int _handValue(Card card) {
    if (card.isKing) return 10;
    if (card.isSpecial) return -5;
    return -5;
  }

  static int _stackValue(Card card) {
    if (card.isKing) return -10;
    if (card.isSpecial) return 2;
    return 1;
  }

  static int _activatedValue(Card card) {
    if (card.isSpecial) return 5;
    return 0;
  }

  static int _prisonerValue(Card card) {
    if (card.isKing) return 10;
    if (card.isSpecial) return 5;
    return 1;
  }
}
