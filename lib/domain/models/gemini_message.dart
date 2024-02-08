import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fatl_gemini_chatbot/domain/models/gemini_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_message.freezed.dart';
part 'gemini_message.g.dart';

@freezed
class GeminiMessage with _$GeminiMessage {
  factory GeminiMessage({
    required String prompt,
    String? response,
    GeminiStatus? status,
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson) Timestamp? createTime,
  }) = _GeminiMessage;

  factory GeminiMessage.fromJson(Map<String, dynamic> json) =>
      _$GeminiMessageFromJson(json);
}

Timestamp? _timeStampFromJson(Timestamp? timestamp) => timestamp;

Timestamp? _timeStampToJson(Timestamp? timestamp) => timestamp;

