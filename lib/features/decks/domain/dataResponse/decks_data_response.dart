import 'package:flash_cards/features/decks/domain/deck.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'decks_data_response.freezed.dart';
part 'decks_data_response.g.dart';

@freezed
class DecksDataResponse with _$DecksDataResponse {
  const factory DecksDataResponse({
    required List<Deck> decks,
  }) = _DecksDataResponse;

  factory DecksDataResponse.fromJson(Map<String, Object?> json) =>
      _$DecksDataResponseFromJson(json);
}
