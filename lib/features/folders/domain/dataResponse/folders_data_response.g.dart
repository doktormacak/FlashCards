// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folders_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoldersDataResponse _$$_FoldersDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FoldersDataResponse(
      folders: (json['folders'] as List<dynamic>)
          .map((e) => Folder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FoldersDataResponseToJson(
        _$_FoldersDataResponse instance) =>
    <String, dynamic>{
      'folders': instance.folders,
    };
