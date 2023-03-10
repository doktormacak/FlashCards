import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/features/folders/domain/dataResponse/folders_data_response.dart';
import 'package:flash_cards/features/folders/infrastructure/folders_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'folders_repository_impl.g.dart';

@riverpod
class FoldersRepositoryImpl extends _$FoldersRepositoryImpl
    implements FoldersRepository {
  @override
  Future<FoldersDataResponse> fetchAllFolders() async {
    final apiClient = ref.read(apiClientProvider);
    // final path = ref.watch(apiConfigProvider);
    return FoldersDataResponse.fromJson(
        (await apiClient.value!.get(ApiConfig.folders)).data);
  }

  @override
  build() {
    return FoldersRepositoryImpl();
  }
}
