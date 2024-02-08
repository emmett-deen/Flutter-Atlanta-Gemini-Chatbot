// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeminiStatus _$GeminiStatusFromJson(Map<String, dynamic> json) {
  return _GeminiStatus.fromJson(json);
}

/// @nodoc
mixin _$GeminiStatus {
  State? get state => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get updateTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get startTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get completeTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiStatusCopyWith<GeminiStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiStatusCopyWith<$Res> {
  factory $GeminiStatusCopyWith(
          GeminiStatus value, $Res Function(GeminiStatus) then) =
      _$GeminiStatusCopyWithImpl<$Res, GeminiStatus>;
  @useResult
  $Res call(
      {State? state,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? updateTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? startTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? completeTime});
}

/// @nodoc
class _$GeminiStatusCopyWithImpl<$Res, $Val extends GeminiStatus>
    implements $GeminiStatusCopyWith<$Res> {
  _$GeminiStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? updateTime = freezed,
    Object? startTime = freezed,
    Object? completeTime = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      completeTime: freezed == completeTime
          ? _value.completeTime
          : completeTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiStatusImplCopyWith<$Res>
    implements $GeminiStatusCopyWith<$Res> {
  factory _$$GeminiStatusImplCopyWith(
          _$GeminiStatusImpl value, $Res Function(_$GeminiStatusImpl) then) =
      __$$GeminiStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {State? state,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? updateTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? startTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      Timestamp? completeTime});
}

/// @nodoc
class __$$GeminiStatusImplCopyWithImpl<$Res>
    extends _$GeminiStatusCopyWithImpl<$Res, _$GeminiStatusImpl>
    implements _$$GeminiStatusImplCopyWith<$Res> {
  __$$GeminiStatusImplCopyWithImpl(
      _$GeminiStatusImpl _value, $Res Function(_$GeminiStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? updateTime = freezed,
    Object? startTime = freezed,
    Object? completeTime = freezed,
  }) {
    return _then(_$GeminiStatusImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      completeTime: freezed == completeTime
          ? _value.completeTime
          : completeTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiStatusImpl implements _GeminiStatus {
  _$GeminiStatusImpl(
      {this.state,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      this.updateTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      this.startTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      this.completeTime});

  factory _$GeminiStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiStatusImplFromJson(json);

  @override
  final State? state;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  final Timestamp? updateTime;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  final Timestamp? startTime;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  final Timestamp? completeTime;

  @override
  String toString() {
    return 'GeminiStatus(state: $state, updateTime: $updateTime, startTime: $startTime, completeTime: $completeTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiStatusImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.completeTime, completeTime) ||
                other.completeTime == completeTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, state, updateTime, startTime, completeTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiStatusImplCopyWith<_$GeminiStatusImpl> get copyWith =>
      __$$GeminiStatusImplCopyWithImpl<_$GeminiStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiStatusImplToJson(
      this,
    );
  }
}

abstract class _GeminiStatus implements GeminiStatus {
  factory _GeminiStatus(
      {final State? state,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      final Timestamp? updateTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      final Timestamp? startTime,
      @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
      final Timestamp? completeTime}) = _$GeminiStatusImpl;

  factory _GeminiStatus.fromJson(Map<String, dynamic> json) =
      _$GeminiStatusImpl.fromJson;

  @override
  State? get state;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get updateTime;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get startTime;
  @override
  @JsonKey(fromJson: _timeStampFromJson, toJson: _timeStampToJson)
  Timestamp? get completeTime;
  @override
  @JsonKey(ignore: true)
  _$$GeminiStatusImplCopyWith<_$GeminiStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
