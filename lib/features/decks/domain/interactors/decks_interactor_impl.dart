import 'package:dio/dio.dart';
import 'package:flash_cards/features/decks/domain/deck.dart';
import 'package:flash_cards/features/decks/domain/interactors/decks_interactor.dart';
import 'package:flash_cards/features/decks/infrastructure/decks_repository.dart';

class DecksIntractorImpl implements DecksInteractor {
  final DecksRepository decksRepository;

  DecksIntractorImpl(this.decksRepository);

  @override
  Future<List<Deck>?> fetchDecks() async {
    List<Deck>? fetchedDecks;
    try {
      var response = await decksRepository.fetchAllDecks();
      fetchedDecks = response.decks;
    } on DioError {
      fetchedDecks = [];
    }
    return fetchedDecks;
  }
}
