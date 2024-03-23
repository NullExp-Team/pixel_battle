// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserServiceState _$UserServiceStateFromJson(Map<String, dynamic> json) {
  return _UserServiceState.fromJson(json);
}

/// @nodoc
mixin _$UserServiceState {
  String get nickname => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserServiceStateCopyWith<UserServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserServiceStateCopyWith<$Res> {
  factory $UserServiceStateCopyWith(
          UserServiceState value, $Res Function(UserServiceState) then) =
      _$UserServiceStateCopyWithImpl<$Res, UserServiceState>;
  @useResult
  $Res call({String nickname, String userId});
}

/// @nodoc
class _$UserServiceStateCopyWithImpl<$Res, $Val extends UserServiceState>
    implements $UserServiceStateCopyWith<$Res> {
  _$UserServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserServiceStateImplCopyWith<$Res>
    implements $UserServiceStateCopyWith<$Res> {
  factory _$$UserServiceStateImplCopyWith(_$UserServiceStateImpl value,
          $Res Function(_$UserServiceStateImpl) then) =
      __$$UserServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String userId});
}

/// @nodoc
class __$$UserServiceStateImplCopyWithImpl<$Res>
    extends _$UserServiceStateCopyWithImpl<$Res, _$UserServiceStateImpl>
    implements _$$UserServiceStateImplCopyWith<$Res> {
  __$$UserServiceStateImplCopyWithImpl(_$UserServiceStateImpl _value,
      $Res Function(_$UserServiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? userId = null,
  }) {
    return _then(_$UserServiceStateImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserServiceStateImpl implements _UserServiceState {
  _$UserServiceStateImpl({required this.nickname, required this.userId});

  factory _$UserServiceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserServiceStateImplFromJson(json);

  @override
  final String nickname;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserServiceState(nickname: $nickname, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserServiceStateImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserServiceStateImplCopyWith<_$UserServiceStateImpl> get copyWith =>
      __$$UserServiceStateImplCopyWithImpl<_$UserServiceStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserServiceStateImplToJson(
      this,
    );
  }
}

abstract class _UserServiceState implements UserServiceState {
  factory _UserServiceState(
      {required final String nickname,
      required final String userId}) = _$UserServiceStateImpl;

  factory _UserServiceState.fromJson(Map<String, dynamic> json) =
      _$UserServiceStateImpl.fromJson;

  @override
  String get nickname;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$UserServiceStateImplCopyWith<_$UserServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
