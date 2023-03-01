import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:flash_cards/features/folders/presentation/presenters/folders_presenter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoldersScreen extends ConsumerWidget {
  const FoldersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: _FoldersView(),
      ),
    );
  }
}

class _FoldersView extends ConsumerWidget {
  const _FoldersView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presenter = ref.watch(foldersPresenterProvider);
    return Container(
      child: presenter.state.when(
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
    return ListView.separated(
      itemCount: folders.length,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(folders[index].name),
          subtitle: Text(folders[index].id.toString()),
        );
      },
      separatorBuilder: (_, __) =>
          SizedBox.fromSize(size: const Size.fromHeight(10)),
    );
  }
}
