import 'package:flash_cards/common/request_provider/request_provider.dart';
import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/domain/interactors/folders_interactor.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foldersPresenterProvider =
    ChangeNotifierProvider.autoDispose<FoldersPresenter>((ref) {
  return FoldersPresenter(ref, GetIt.instance.get());
});

class FoldersPresenter extends RequestProvider<List<Folder>> {
  final Ref ref;
  final FoldersInteractor foldersInteractor;

  FoldersPresenter(this.ref, this.foldersInteractor) {
    loadFolders();
  }

  Future<void> loadFolders() async {
    return executeRequest(
      requestBuilder: () async {
        List<Folder> allFolders = await foldersInteractor.fetchFolders();
        return allFolders;
      },
    );
  }
}
