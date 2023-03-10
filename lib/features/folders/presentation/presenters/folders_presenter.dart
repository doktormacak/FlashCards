import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/domain/interactors/folders_interactor_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'folders_presenter.g.dart';

@riverpod
class FoldersPresenter extends _$FoldersPresenter {
  @override
  Future<List<Folder>> build() async {
    final foldersInteractor = ref.read(foldersIntractorImplProvider.notifier);
    return await foldersInteractor.fetchFolders();
  }
}
