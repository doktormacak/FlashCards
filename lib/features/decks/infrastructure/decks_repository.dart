import 'package:flash_cards/features/decks/domain/dataResponse/decks_data_response.dart';

abstract class DecksRepository {
  Future<DecksDataResponse> fetchAllDecks();
}
