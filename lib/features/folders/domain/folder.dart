import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'folder.freezed.dart';
part 'folder.g.dart';

@freezed
class Folder with _$Folder {
  const factory Folder({
    required String name,
    String? id,
  }) = _Folder;

  factory Folder.fromJson(Map<String, Object?> json) => _$FolderFromJson(json);
}
