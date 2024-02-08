import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fatl_gemini_chatbot/domain/models/gemini_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_message.freezed.dart';
part 'gemini_message.g.dart';

/// A class that represents a Gemini message.
@freezed
class GeminiMessage with _$GeminiMessage {
  /// Creates a Gemini message.
  ///
  /// The [prompt] parameter is required.
  /// The [response], [status], and [createTime] parameters are optional.
  factory GeminiMessage({
    required String prompt,
    String? response,
    GeminiStatus? status,
    // ignore: lines_longer_than_80_chars
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
    Timestamp? createTime,
  }) = _GeminiMessage;

  /// Creates a Gemini message from a map.
  ///
  /// This constructor is used when converting a map into a Gemini message.
  factory GeminiMessage.fromJson(Map<String, dynamic> json) =>
      _$GeminiMessageFromJson(json);
}

/// Converts a [Timestamp] to a [Timestamp].
///
/// This function is used when converting a [Timestamp] from a map.
Timestamp? _timeStampFromJson(Timestamp? timestamp) => timestamp;

/// Converts a [Timestamp] to a [Timestamp].
///
/// This function is used when converting a [Timestamp] to a map.
Timestamp? _timeStampToJson(Timestamp? timestamp) => timestamp;
