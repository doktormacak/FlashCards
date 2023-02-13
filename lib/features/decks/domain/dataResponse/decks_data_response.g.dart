// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decks_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DecksDataResponse _$$_DecksDataResponseFromJson(Map<String, dynamic> json) =>
    _$_DecksDataResponse(
      decks: (json['decks'] as List<dynamic>)
          .map((e) => Deck.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DecksDataResponseToJson(
        _$_DecksDataResponse instance) =>
    <String, dynamic>{
      'decks': instance.decks,
    };
