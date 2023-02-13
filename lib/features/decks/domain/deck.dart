import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'deck.freezed.dart';
part 'deck.g.dart';

@freezed
class Deck with _$Deck {
  const factory Deck({
    required String name,
    String? id,
  }) = _Deck;

  factory Deck.fromJson(Map<String, Object?> json) => _$DeckFromJson(json);
}
