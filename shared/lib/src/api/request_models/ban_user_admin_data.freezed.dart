// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ban_user_admin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BanUserAdminData _$BanUserAdminDataFromJson(Map<String, dynamic> json) {
  return _BanUserAdminData.fromJson(json);
}

/// @nodoc
mixin _$BanUserAdminData {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BanUserAdminDataCopyWith<BanUserAdminData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanUserAdminDataCopyWith<$Res> {
  factory $BanUserAdminDataCopyWith(
          BanUserAdminData value, $Res Function(BanUserAdminData) then) =
      _$BanUserAdminDataCopyWithImpl<$Res, BanUserAdminData>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$BanUserAdminDataCopyWithImpl<$Res, $Val extends BanUserAdminData>
    implements $BanUserAdminDataCopyWith<$Res> {
  _$BanUserAdminDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BanUserAdminDataImplCopyWith<$Res>
    implements $BanUserAdminDataCopyWith<$Res> {
  factory _$$BanUserAdminDataImplCopyWith(_$BanUserAdminDataImpl value,
          $Res Function(_$BanUserAdminDataImpl) then) =
      __$$BanUserAdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$BanUserAdminDataImplCopyWithImpl<$Res>
    extends _$BanUserAdminDataCopyWithImpl<$Res, _$BanUserAdminDataImpl>
    implements _$$BanUserAdminDataImplCopyWith<$Res> {
  __$$BanUserAdminDataImplCopyWithImpl(_$BanUserAdminDataImpl _value,
      $Res Function(_$BanUserAdminDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$BanUserAdminDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BanUserAdminDataImpl implements _BanUserAdminData {
  _$BanUserAdminDataImpl({@JsonKey(name: 'user_id') required this.userId});

  factory _$BanUserAdminDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BanUserAdminDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'BanUserAdminData(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanUserAdminDataImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BanUserAdminDataImplCopyWith<_$BanUserAdminDataImpl> get copyWith =>
      __$$BanUserAdminDataImplCopyWithImpl<_$BanUserAdminDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BanUserAdminDataImplToJson(
      this,
    );
  }
}

abstract class _BanUserAdminData implements BanUserAdminData {
  factory _BanUserAdminData(
          {@JsonKey(name: 'user_id') required final String userId}) =
      _$BanUserAdminDataImpl;

  factory _BanUserAdminData.fromJson(Map<String, dynamic> json) =
      _$BanUserAdminDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$BanUserAdminDataImplCopyWith<_$BanUserAdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
