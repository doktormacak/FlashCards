import 'package:dio/dio.dart';
import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/domain/interactors/folders_interactor.dart';
import 'package:flash_cards/features/folders/infrastructure/folders_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'folders_interactor_impl.g.dart';

@riverpod
class FoldersIntractorImpl extends _$FoldersIntractorImpl
    implements FoldersInteractor {
  @override
  Future<List<Folder>> fetchFolders() async {
    final foldersRepository = ref.watch(foldersRepositoryImplProvider.notifier);
    List<Folder> fetchedFolders;
    try {
      var response = await foldersRepository.fetchAllFolders();
      fetchedFolders = response.data;
    } on DioError {
      fetchedFolders = [];
    }
    return fetchedFolders;
  }

  @override
  build() {
    return FoldersIntractorImpl();
  }
}
