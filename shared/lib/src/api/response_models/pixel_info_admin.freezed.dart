// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixel_info_admin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PixelInfoAdmin _$PixelInfoAdminFromJson(Map<String, dynamic> json) {
  return _PixelInfoAdmin.fromJson(json);
}

/// @nodoc
mixin _$PixelInfoAdmin {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixelInfoAdminCopyWith<PixelInfoAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixelInfoAdminCopyWith<$Res> {
  factory $PixelInfoAdminCopyWith(
          PixelInfoAdmin value, $Res Function(PixelInfoAdmin) then) =
      _$PixelInfoAdminCopyWithImpl<$Res, PixelInfoAdmin>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class _$PixelInfoAdminCopyWithImpl<$Res, $Val extends PixelInfoAdmin>
    implements $PixelInfoAdminCopyWith<$Res> {
  _$PixelInfoAdminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PixelInfoAdminImplCopyWith<$Res>
    implements $PixelInfoAdminCopyWith<$Res> {
  factory _$$PixelInfoAdminImplCopyWith(_$PixelInfoAdminImpl value,
          $Res Function(_$PixelInfoAdminImpl) then) =
      __$$PixelInfoAdminImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class __$$PixelInfoAdminImplCopyWithImpl<$Res>
    extends _$PixelInfoAdminCopyWithImpl<$Res, _$PixelInfoAdminImpl>
    implements _$$PixelInfoAdminImplCopyWith<$Res> {
  __$$PixelInfoAdminImplCopyWithImpl(
      _$PixelInfoAdminImpl _value, $Res Function(_$PixelInfoAdminImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$PixelInfoAdminImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PixelInfoAdminImpl implements _PixelInfoAdmin {
  _$PixelInfoAdminImpl({@JsonKey(name: 'user_id') required this.userId});

  factory _$PixelInfoAdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelInfoAdminImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;

  @override
  String toString() {
    return 'PixelInfoAdmin(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixelInfoAdminImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixelInfoAdminImplCopyWith<_$PixelInfoAdminImpl> get copyWith =>
      __$$PixelInfoAdminImplCopyWithImpl<_$PixelInfoAdminImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PixelInfoAdminImplToJson(
      this,
    );
  }
}

abstract class _PixelInfoAdmin implements PixelInfoAdmin {
  factory _PixelInfoAdmin(
          {@JsonKey(name: 'user_id') required final String? userId}) =
      _$PixelInfoAdminImpl;

  factory _PixelInfoAdmin.fromJson(Map<String, dynamic> json) =
      _$PixelInfoAdminImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$PixelInfoAdminImplCopyWith<_$PixelInfoAdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
