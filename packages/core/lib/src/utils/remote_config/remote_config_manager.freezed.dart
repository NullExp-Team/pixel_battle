// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteConfigManagerState {
  String get baseUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigManagerStateCopyWith<RemoteConfigManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigManagerStateCopyWith<$Res> {
  factory $RemoteConfigManagerStateCopyWith(RemoteConfigManagerState value,
          $Res Function(RemoteConfigManagerState) then) =
      _$RemoteConfigManagerStateCopyWithImpl<$Res, RemoteConfigManagerState>;
  @useResult
  $Res call({String baseUrl});
}

/// @nodoc
class _$RemoteConfigManagerStateCopyWithImpl<$Res,
        $Val extends RemoteConfigManagerState>
    implements $RemoteConfigManagerStateCopyWith<$Res> {
  _$RemoteConfigManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteConfigManagerStateImplCopyWith<$Res>
    implements $RemoteConfigManagerStateCopyWith<$Res> {
  factory _$$RemoteConfigManagerStateImplCopyWith(
          _$RemoteConfigManagerStateImpl value,
          $Res Function(_$RemoteConfigManagerStateImpl) then) =
      __$$RemoteConfigManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String baseUrl});
}

/// @nodoc
class __$$RemoteConfigManagerStateImplCopyWithImpl<$Res>
    extends _$RemoteConfigManagerStateCopyWithImpl<$Res,
        _$RemoteConfigManagerStateImpl>
    implements _$$RemoteConfigManagerStateImplCopyWith<$Res> {
  __$$RemoteConfigManagerStateImplCopyWithImpl(
      _$RemoteConfigManagerStateImpl _value,
      $Res Function(_$RemoteConfigManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
  }) {
    return _then(_$RemoteConfigManagerStateImpl(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteConfigManagerStateImpl implements _RemoteConfigManagerState {
  const _$RemoteConfigManagerStateImpl({required this.baseUrl});

  @override
  final String baseUrl;

  @override
  String toString() {
    return 'RemoteConfigManagerState(baseUrl: $baseUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteConfigManagerStateImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteConfigManagerStateImplCopyWith<_$RemoteConfigManagerStateImpl>
      get copyWith => __$$RemoteConfigManagerStateImplCopyWithImpl<
          _$RemoteConfigManagerStateImpl>(this, _$identity);
}

abstract class _RemoteConfigManagerState implements RemoteConfigManagerState {
  const factory _RemoteConfigManagerState({required final String baseUrl}) =
      _$RemoteConfigManagerStateImpl;

  @override
  String get baseUrl;
  @override
  @JsonKey(ignore: true)
  _$$RemoteConfigManagerStateImplCopyWith<_$RemoteConfigManagerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
