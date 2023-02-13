import 'package:dio/dio.dart';
import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/domain/interactors/folders_interactor.dart';
import 'package:flash_cards/features/folders/infrastructure/folders_repository.dart';

class FoldersIntractorImpl implements FoldersInteractor {
  final FoldersRepository decksRepository;

  FoldersIntractorImpl(this.decksRepository);

  @override
  Future<List<Folder>> fetchDecks() async {
    List<Folder> fetchedDecks;
    try {
      var response = await decksRepository.fetchAllDecks();
      fetchedDecks = response.folders;
    } on DioError {
      fetchedDecks = [];
    }
    return fetchedDecks;
  }
}
