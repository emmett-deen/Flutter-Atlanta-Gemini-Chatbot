import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_status.freezed.dart';
part 'gemini_status.g.dart';

/// A class that represents the status of a Gemini operation.
@freezed
class GeminiStatus with _$GeminiStatus {
  /// Creates a Gemini status.
  ///
  /// The [state], [updateTime], [startTime], and [completeTime] parameters
  /// are optional.

  factory GeminiStatus({
    State? state,
    // ignore: lines_longer_than_80_chars
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
    Timestamp? updateTime,
    // ignore: lines_longer_than_80_chars
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
    Timestamp? startTime,
    // ignore: lines_longer_than_80_chars
    @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
    Timestamp? completeTime,
  }) = _GeminiStatus;

  /// Creates a Gemini status from a map.
  ///
  /// This constructor is used when converting a map into a Gemini status.
  factory GeminiStatus.fromJson(Map<String, dynamic> json) =>
      _$GeminiStatusFromJson(json);
}

/// An enumeration of possible states for a Gemini operation.
enum State {
  /// The operation is currently being processed.
  @JsonValue('PROCESSING')
  processing,

  /// The operation has been completed.
  @JsonValue('COMPLETED')
  completed,

  /// An error occurred during the operation.
  @JsonValue('ERROR')
  error,
}

/// Converts a [Timestamp] to a [Timestamp].
///
/// This function is used when converting a [Timestamp] from a map.
Timestamp? _timeStampFromJson(Timestamp? timestamp) => timestamp;

/// Converts a [Timestamp] to a [Timestamp].
///
/// This function is used when converting a [Timestamp] to a map.
Timestamp? _timeStampToJson(Timestamp? timestamp) => timestamp;
