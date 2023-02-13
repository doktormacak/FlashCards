import 'package:flash_cards/features/folders/domain/folder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'folders_data_response.freezed.dart';
part 'folders_data_response.g.dart';

@freezed
class FoldersDataResponse with _$FoldersDataResponse {
  const factory FoldersDataResponse({
    required List<Folder> folders,
  }) = _FoldersDataResponse;

  factory FoldersDataResponse.fromJson(Map<String, Object?> json) =>
      _$FoldersDataResponseFromJson(json);
}
