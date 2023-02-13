import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/presentation/presenters/folders_presenter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoldersScreen extends ConsumerWidget {
  const FoldersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presenter = ref.watch(foldersPresenterProvider);
    return Scaffold(
      body: presenter.state.when(
        initial: () => const Center(
          child: CircularProgressIndicator(),
        ),
        loading: (folders) => const Center(
          child: CircularProgressIndicator(),
        ),
        success: (folders) => _FoldersListView(folders),
        failure: (error) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}

class _FoldersListView extends ConsumerWidget {
  const _FoldersListView(this.folders);
  final List<Folder> folders;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: ListView.separated(
        itemCount: folders.length,
        padding: const EdgeInsets.all(16.0 + 4.0),
        itemBuilder: (_, index) {
          return ListTile(title: Text(folders[index].name));
        },
        separatorBuilder: (_, __) =>
            SizedBox.fromSize(size: const Size.fromHeight(20)),
      ),
    );
  }
}
