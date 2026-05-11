enum Suit { bastos, oros, copas, espadas }

enum CardType { normal, special, king, joker }

class Card {
  final int number;
  final Suit suit;
  final CardType type;

  const Card({
    required this.number,
    required this.suit,
    required this.type,
  });

  bool get isKing => type == CardType.king;
  bool get isSpecial => type == CardType.special;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Card && number == other.number && suit == other.suit;

  @override
  int get hashCode => Object.hash(number, suit);
}
