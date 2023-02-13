import 'package:flash_cards/features/folders/domain/dataResponse/folders_data_response.dart';

abstract class FoldersRepository {
  Future<FoldersDataResponse> fetchAllDecks();
}
