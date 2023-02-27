import 'package:flash_cards/features/folders/domain/folder.dart';

abstract class FoldersInteractor {
  Future<List<Folder>> fetchFolders();
}
