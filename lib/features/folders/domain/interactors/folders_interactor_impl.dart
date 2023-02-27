import 'package:dio/dio.dart';
import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/domain/interactors/folders_interactor.dart';
import 'package:flash_cards/features/folders/infrastructure/folders_repository.dart';

class FoldersIntractorImpl implements FoldersInteractor {
  final FoldersRepository foldersRepository;

  FoldersIntractorImpl(this.foldersRepository);

  @override
  Future<List<Folder>> fetchFolders() async {
    List<Folder> fetchedFolders;
    try {
      var response = await foldersRepository.fetchAllFolders();
      fetchedFolders = response.data;
    } on DioError {
      fetchedFolders = [];
    }
    return fetchedFolders;
  }
}
