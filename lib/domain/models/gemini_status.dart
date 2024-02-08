import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_status.freezed.dart';
part 'gemini_status.g.dart';

@freezed
class GeminiStatus with _$GeminiStatus {
  factory GeminiStatus({
    State? state,
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson) Timestamp? updateTime,
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson) Timestamp? startTime,
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson) Timestamp? completeTime,
  }) = _GeminiStatus;

  factory GeminiStatus.fromJson(Map<String, dynamic> json) =>
      _$GeminiStatusFromJson(json);
}

enum State {
  @JsonValue('PROCESSING')
  processing,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('ERROR')
  error,
}

Timestamp? _timeStampFromJson(Timestamp? timestamp) => timestamp;

Timestamp? _timeStampToJson(Timestamp? timestamp) => timestamp;
