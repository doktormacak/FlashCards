import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/features/folders/domain/dataResponse/folders_data_response.dart';
import 'package:flash_cards/features/folders/infrastructure/folders_repository.dart';

class FoldersRepositoryImpl implements FoldersRepository {
  final ApiClient _apiClient;

  FoldersRepositoryImpl(this._apiClient);

  @override
  Future<FoldersDataResponse> fetchAllDecks() async {
    return FoldersDataResponse.fromJson(
        (await _apiClient.get(ApiConfig.folders)).data);
  }
}
