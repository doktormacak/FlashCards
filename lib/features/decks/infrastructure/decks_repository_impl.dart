import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/features/decks/domain/dataResponse/decks_data_response.dart';
import 'package:flash_cards/features/decks/infrastructure/decks_repository.dart';

class DecksRepositoryImpl implements DecksRepository {
  final ApiClient _apiClient;

  DecksRepositoryImpl(this._apiClient);

  @override
  Future<DecksDataResponse> fetchAllDecks() async {
    return DecksDataResponse.fromJson(
        (await _apiClient.get(ApiConfig.folders)).data);
  }
}
