// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiStatusImpl _$$GeminiStatusImplFromJson(Map<String, dynamic> json) =>
    _$GeminiStatusImpl(
      state: $enumDecodeNullable(_$StateEnumMap, json['state']),
      updateTime: _timeStampFromJson(json['updateTime'] as Timestamp?),
      startTime: _timeStampFromJson(json['startTime'] as Timestamp?),
      completeTime: _timeStampFromJson(json['completeTime'] as Timestamp?),
    );

Map<String, dynamic> _$$GeminiStatusImplToJson(_$GeminiStatusImpl instance) =>
    <String, dynamic>{
      'state': _$StateEnumMap[instance.state],
      'updateTime': _timeStampToJson(instance.updateTime),
      'startTime': _timeStampToJson(instance.startTime),
      'completeTime': _timeStampToJson(instance.completeTime),
    };

const _$StateEnumMap = {
  State.processing: 'PROCESSING',
  State.completed: 'COMPLETED',
  State.error: 'ERROR',
};
