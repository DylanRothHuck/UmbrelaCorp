import 'dart:math';
import '../domain/models/card.dart';
import '../domain/models/game_state.dart';
import '../domain/models/player.dart';

class GameEngine {
  static List<Card> createDeck({int deckCount = 1}) {
    final suits = Suit.values;
    final deck = <Card>[];
    for (var d = 0; d < deckCount; d++) {
      for (final suit in suits) {
        for (var num = 1; num <= 12; num++) {
          if (num == 8 || num == 9) continue;
          deck.add(Card(
            number: num,
            suit: suit,
            type: _cardType(num),
          ));
        }
      }
    }
    return deck;
  }

  static CardType _cardType(int number) {
    if (number >= 10 && number <= 12) return CardType.king;
    if (number >= 1 && number <= 9) return CardType.special;
    return CardType.normal;
  }

  static List<Card> shuffle(List<Card> deck) {
    final shuffled = List<Card>.from(deck);
    shuffled.shuffle(Random());
    return shuffled;
  }

  static GameState initGame(List<String> playerNames, {int targetScore = 50}) {
    var deck = createDeck();
    deck = shuffle(deck);

    final players = playerNames.map((name) {
      final hand = [deck.removeLast(), deck.removeLast(), deck.removeLast()];
      return Player(
        id: name.toLowerCase(),
        name: name,
        hand: hand,
      );
    }).toList();

    return GameState(
      players: players,
      drawPile: deck,
      currentPlayerIndex: 0,
      phase: GamePhase.firstDraw,
      targetScore: targetScore,
    );
  }
}
