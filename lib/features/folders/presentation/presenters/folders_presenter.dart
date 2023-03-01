import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/domain/interactors/folders_interactor.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foldersPresenterProvider =
    AsyncNotifierProvider<FoldersPresenter, List<Folder>>(() {
  return FoldersPresenter(GetIt.instance.get());
});

class FoldersPresenter extends AsyncNotifier<List<Folder>> {
  FoldersPresenter(this.foldersInteractor);

  final FoldersInteractor foldersInteractor;

  @override
  Future<List<Folder>> build() async {
    return await foldersInteractor.fetchFolders();
  }
}
