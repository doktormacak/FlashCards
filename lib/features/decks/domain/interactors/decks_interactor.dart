import 'package:flash_cards/features/decks/domain/deck.dart';

abstract class DecksInteractor {
  Future<List<Deck>?> fetchDecks();
}
