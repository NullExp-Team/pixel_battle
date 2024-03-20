// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_login_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminLoginData _$AdminLoginDataFromJson(Map<String, dynamic> json) {
  return _AdminLoginData.fromJson(json);
}

/// @nodoc
mixin _$AdminLoginData {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminLoginDataCopyWith<AdminLoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminLoginDataCopyWith<$Res> {
  factory $AdminLoginDataCopyWith(
          AdminLoginData value, $Res Function(AdminLoginData) then) =
      _$AdminLoginDataCopyWithImpl<$Res, AdminLoginData>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$AdminLoginDataCopyWithImpl<$Res, $Val extends AdminLoginData>
    implements $AdminLoginDataCopyWith<$Res> {
  _$AdminLoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminLoginDataImplCopyWith<$Res>
    implements $AdminLoginDataCopyWith<$Res> {
  factory _$$AdminLoginDataImplCopyWith(_$AdminLoginDataImpl value,
          $Res Function(_$AdminLoginDataImpl) then) =
      __$$AdminLoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$AdminLoginDataImplCopyWithImpl<$Res>
    extends _$AdminLoginDataCopyWithImpl<$Res, _$AdminLoginDataImpl>
    implements _$$AdminLoginDataImplCopyWith<$Res> {
  __$$AdminLoginDataImplCopyWithImpl(
      _$AdminLoginDataImpl _value, $Res Function(_$AdminLoginDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$AdminLoginDataImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminLoginDataImpl implements _AdminLoginData {
  _$AdminLoginDataImpl({required this.username, required this.password});

  factory _$AdminLoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminLoginDataImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AdminLoginData(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLoginDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminLoginDataImplCopyWith<_$AdminLoginDataImpl> get copyWith =>
      __$$AdminLoginDataImplCopyWithImpl<_$AdminLoginDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminLoginDataImplToJson(
      this,
    );
  }
}

abstract class _AdminLoginData implements AdminLoginData {
  factory _AdminLoginData(
      {required final String username,
      required final String password}) = _$AdminLoginDataImpl;

  factory _AdminLoginData.fromJson(Map<String, dynamic> json) =
      _$AdminLoginDataImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AdminLoginDataImplCopyWith<_$AdminLoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
