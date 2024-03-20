// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_contoller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginContollerState {
  String get nickname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginContollerStateCopyWith<LoginContollerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginContollerStateCopyWith<$Res> {
  factory $LoginContollerStateCopyWith(
          LoginContollerState value, $Res Function(LoginContollerState) then) =
      _$LoginContollerStateCopyWithImpl<$Res, LoginContollerState>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class _$LoginContollerStateCopyWithImpl<$Res, $Val extends LoginContollerState>
    implements $LoginContollerStateCopyWith<$Res> {
  _$LoginContollerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginContollerStateImplCopyWith<$Res>
    implements $LoginContollerStateCopyWith<$Res> {
  factory _$$LoginContollerStateImplCopyWith(_$LoginContollerStateImpl value,
          $Res Function(_$LoginContollerStateImpl) then) =
      __$$LoginContollerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$LoginContollerStateImplCopyWithImpl<$Res>
    extends _$LoginContollerStateCopyWithImpl<$Res, _$LoginContollerStateImpl>
    implements _$$LoginContollerStateImplCopyWith<$Res> {
  __$$LoginContollerStateImplCopyWithImpl(_$LoginContollerStateImpl _value,
      $Res Function(_$LoginContollerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$LoginContollerStateImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginContollerStateImpl implements _LoginContollerState {
  _$LoginContollerStateImpl({required this.nickname});

  @override
  final String nickname;

  @override
  String toString() {
    return 'LoginContollerState(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginContollerStateImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginContollerStateImplCopyWith<_$LoginContollerStateImpl> get copyWith =>
      __$$LoginContollerStateImplCopyWithImpl<_$LoginContollerStateImpl>(
          this, _$identity);
}

abstract class _LoginContollerState implements LoginContollerState {
  factory _LoginContollerState({required final String nickname}) =
      _$LoginContollerStateImpl;

  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$LoginContollerStateImplCopyWith<_$LoginContollerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
