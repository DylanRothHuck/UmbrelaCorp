import 'card.dart';

class Player {
  final String id;
  final String name;
  List<Card> hand;
  List<Card> stack;
  List<Card> activated;
  List<Card> prisoners;

  Player({
    required this.id,
    required this.name,
    List<Card>? hand,
    List<Card>? stack,
    List<Card>? activated,
    List<Card>? prisoners,
  })  : hand = hand ?? [],
        stack = stack ?? [],
        activated = activated ?? [],
        prisoners = prisoners ?? [];
}
