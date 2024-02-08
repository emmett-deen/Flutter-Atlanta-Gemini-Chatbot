// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiMessageImpl _$$GeminiMessageImplFromJson(Map<String, dynamic> json) =>
    _$GeminiMessageImpl(
      prompt: json['prompt'] as String,
      response: json['response'] as String?,
      status: json['status'] == null
          ? null
          : GeminiStatus.fromJson(json['status'] as Map<String, dynamic>),
      createTime: _timeStampFromJson(json['createTime'] as Timestamp?),
    );

Map<String, dynamic> _$$GeminiMessageImplToJson(_$GeminiMessageImpl instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'response': instance.response,
      'status': instance.status,
      'createTime': _timeStampToJson(instance.createTime),
    };
