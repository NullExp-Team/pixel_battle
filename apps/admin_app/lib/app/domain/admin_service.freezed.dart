// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminServiceState _$AdminServiceStateFromJson(Map<String, dynamic> json) {
  return _AdminServiceState.fromJson(json);
}

/// @nodoc
mixin _$AdminServiceState {
  String get token => throw _privateConstructorUsedError;
  List<UserInfo> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminServiceStateCopyWith<AdminServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminServiceStateCopyWith<$Res> {
  factory $AdminServiceStateCopyWith(
          AdminServiceState value, $Res Function(AdminServiceState) then) =
      _$AdminServiceStateCopyWithImpl<$Res, AdminServiceState>;
  @useResult
  $Res call({String token, List<UserInfo> users});
}

/// @nodoc
class _$AdminServiceStateCopyWithImpl<$Res, $Val extends AdminServiceState>
    implements $AdminServiceStateCopyWith<$Res> {
  _$AdminServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminServiceStateImplCopyWith<$Res>
    implements $AdminServiceStateCopyWith<$Res> {
  factory _$$AdminServiceStateImplCopyWith(_$AdminServiceStateImpl value,
          $Res Function(_$AdminServiceStateImpl) then) =
      __$$AdminServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, List<UserInfo> users});
}

/// @nodoc
class __$$AdminServiceStateImplCopyWithImpl<$Res>
    extends _$AdminServiceStateCopyWithImpl<$Res, _$AdminServiceStateImpl>
    implements _$$AdminServiceStateImplCopyWith<$Res> {
  __$$AdminServiceStateImplCopyWithImpl(_$AdminServiceStateImpl _value,
      $Res Function(_$AdminServiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? users = null,
  }) {
    return _then(_$AdminServiceStateImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminServiceStateImpl implements _AdminServiceState {
  _$AdminServiceStateImpl(
      {required this.token, required final List<UserInfo> users})
      : _users = users;

  factory _$AdminServiceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminServiceStateImplFromJson(json);

  @override
  final String token;
  final List<UserInfo> _users;
  @override
  List<UserInfo> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'AdminServiceState(token: $token, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminServiceStateImpl &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, token, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminServiceStateImplCopyWith<_$AdminServiceStateImpl> get copyWith =>
      __$$AdminServiceStateImplCopyWithImpl<_$AdminServiceStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminServiceStateImplToJson(
      this,
    );
  }
}

abstract class _AdminServiceState implements AdminServiceState {
  factory _AdminServiceState(
      {required final String token,
      required final List<UserInfo> users}) = _$AdminServiceStateImpl;

  factory _AdminServiceState.fromJson(Map<String, dynamic> json) =
      _$AdminServiceStateImpl.fromJson;

  @override
  String get token;
  @override
  List<UserInfo> get users;
  @override
  @JsonKey(ignore: true)
  _$$AdminServiceStateImplCopyWith<_$AdminServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
