// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixel_info_admin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PixelInfoAdminData _$PixelInfoAdminDataFromJson(Map<String, dynamic> json) {
  return _PixelInfoAdminData.fromJson(json);
}

/// @nodoc
mixin _$PixelInfoAdminData {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixelInfoAdminDataCopyWith<PixelInfoAdminData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixelInfoAdminDataCopyWith<$Res> {
  factory $PixelInfoAdminDataCopyWith(
          PixelInfoAdminData value, $Res Function(PixelInfoAdminData) then) =
      _$PixelInfoAdminDataCopyWithImpl<$Res, PixelInfoAdminData>;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$PixelInfoAdminDataCopyWithImpl<$Res, $Val extends PixelInfoAdminData>
    implements $PixelInfoAdminDataCopyWith<$Res> {
  _$PixelInfoAdminDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PixelInfoAdminDataImplCopyWith<$Res>
    implements $PixelInfoAdminDataCopyWith<$Res> {
  factory _$$PixelInfoAdminDataImplCopyWith(_$PixelInfoAdminDataImpl value,
          $Res Function(_$PixelInfoAdminDataImpl) then) =
      __$$PixelInfoAdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$PixelInfoAdminDataImplCopyWithImpl<$Res>
    extends _$PixelInfoAdminDataCopyWithImpl<$Res, _$PixelInfoAdminDataImpl>
    implements _$$PixelInfoAdminDataImplCopyWith<$Res> {
  __$$PixelInfoAdminDataImplCopyWithImpl(_$PixelInfoAdminDataImpl _value,
      $Res Function(_$PixelInfoAdminDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$PixelInfoAdminDataImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PixelInfoAdminDataImpl implements _PixelInfoAdminData {
  _$PixelInfoAdminDataImpl({required this.x, required this.y});

  factory _$PixelInfoAdminDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelInfoAdminDataImplFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'PixelInfoAdminData(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixelInfoAdminDataImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixelInfoAdminDataImplCopyWith<_$PixelInfoAdminDataImpl> get copyWith =>
      __$$PixelInfoAdminDataImplCopyWithImpl<_$PixelInfoAdminDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PixelInfoAdminDataImplToJson(
      this,
    );
  }
}

abstract class _PixelInfoAdminData implements PixelInfoAdminData {
  factory _PixelInfoAdminData({required final int x, required final int y}) =
      _$PixelInfoAdminDataImpl;

  factory _PixelInfoAdminData.fromJson(Map<String, dynamic> json) =
      _$PixelInfoAdminDataImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$PixelInfoAdminDataImplCopyWith<_$PixelInfoAdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
