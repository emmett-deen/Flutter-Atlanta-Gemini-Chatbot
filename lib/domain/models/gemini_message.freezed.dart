// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeminiMessage _$GeminiMessageFromJson(Map<String, dynamic> json) {
  return _GeminiMessage.fromJson(json);
}

/// @nodoc
mixin _$GeminiMessage {
  String get prompt => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  GeminiStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiMessageCopyWith<GeminiMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiMessageCopyWith<$Res> {
  factory $GeminiMessageCopyWith(
          GeminiMessage value, $Res Function(GeminiMessage) then) =
      _$GeminiMessageCopyWithImpl<$Res, GeminiMessage>;
  @useResult
  $Res call(
      {String prompt,
      String? response,
      GeminiStatus? status,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? createTime});

  $GeminiStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$GeminiMessageCopyWithImpl<$Res, $Val extends GeminiMessage>
    implements $GeminiMessageCopyWith<$Res> {
  _$GeminiMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? response = freezed,
    Object? status = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeminiStatus?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeminiStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $GeminiStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeminiMessageImplCopyWith<$Res>
    implements $GeminiMessageCopyWith<$Res> {
  factory _$$GeminiMessageImplCopyWith(
          _$GeminiMessageImpl value, $Res Function(_$GeminiMessageImpl) then) =
      __$$GeminiMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String prompt,
      String? response,
      GeminiStatus? status,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? createTime});

  @override
  $GeminiStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GeminiMessageImplCopyWithImpl<$Res>
    extends _$GeminiMessageCopyWithImpl<$Res, _$GeminiMessageImpl>
    implements _$$GeminiMessageImplCopyWith<$Res> {
  __$$GeminiMessageImplCopyWithImpl(
      _$GeminiMessageImpl _value, $Res Function(_$GeminiMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? response = freezed,
    Object? status = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_$GeminiMessageImpl(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeminiStatus?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiMessageImpl implements _GeminiMessage {
  _$GeminiMessageImpl(
      {required this.prompt,
      this.response,
      this.status,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      this.createTime});

  factory _$GeminiMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiMessageImplFromJson(json);

  @override
  final String prompt;
  @override
  final String? response;
  @override
  final GeminiStatus? status;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  final Timestamp? createTime;

  @override
  String toString() {
    return 'GeminiMessage(prompt: $prompt, response: $response, status: $status, createTime: $createTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiMessageImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prompt, response, status, createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiMessageImplCopyWith<_$GeminiMessageImpl> get copyWith =>
      __$$GeminiMessageImplCopyWithImpl<_$GeminiMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiMessageImplToJson(
      this,
    );
  }
}

abstract class _GeminiMessage implements GeminiMessage {
  factory _GeminiMessage(
      {required final String prompt,
      final String? response,
      final GeminiStatus? status,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      final Timestamp? createTime}) = _$GeminiMessageImpl;

  factory _GeminiMessage.fromJson(Map<String, dynamic> json) =
      _$GeminiMessageImpl.fromJson;

  @override
  String get prompt;
  @override
  String? get response;
  @override
  GeminiStatus? get status;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get createTime;
  @override
  @JsonKey(ignore: true)
  _$$GeminiMessageImplCopyWith<_$GeminiMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
