// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_pixel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePixelData _$UpdatePixelDataFromJson(Map<String, dynamic> json) {
  return _UpdatePixelData.fromJson(json);
}

/// @nodoc
mixin _$UpdatePixelData {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePixelDataCopyWith<UpdatePixelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePixelDataCopyWith<$Res> {
  factory $UpdatePixelDataCopyWith(
          UpdatePixelData value, $Res Function(UpdatePixelData) then) =
      _$UpdatePixelDataCopyWithImpl<$Res, UpdatePixelData>;
  @useResult
  $Res call({int x, int y, int color});
}

/// @nodoc
class _$UpdatePixelDataCopyWithImpl<$Res, $Val extends UpdatePixelData>
    implements $UpdatePixelDataCopyWith<$Res> {
  _$UpdatePixelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? color = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePixelDataImplCopyWith<$Res>
    implements $UpdatePixelDataCopyWith<$Res> {
  factory _$$UpdatePixelDataImplCopyWith(_$UpdatePixelDataImpl value,
          $Res Function(_$UpdatePixelDataImpl) then) =
      __$$UpdatePixelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y, int color});
}

/// @nodoc
class __$$UpdatePixelDataImplCopyWithImpl<$Res>
    extends _$UpdatePixelDataCopyWithImpl<$Res, _$UpdatePixelDataImpl>
    implements _$$UpdatePixelDataImplCopyWith<$Res> {
  __$$UpdatePixelDataImplCopyWithImpl(
      _$UpdatePixelDataImpl _value, $Res Function(_$UpdatePixelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? color = null,
  }) {
    return _then(_$UpdatePixelDataImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePixelDataImpl implements _UpdatePixelData {
  _$UpdatePixelDataImpl(
      {required this.x, required this.y, required this.color});

  factory _$UpdatePixelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePixelDataImplFromJson(json);

  @override
  final int x;
  @override
  final int y;
  @override
  final int color;

  @override
  String toString() {
    return 'UpdatePixelData(x: $x, y: $y, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePixelDataImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePixelDataImplCopyWith<_$UpdatePixelDataImpl> get copyWith =>
      __$$UpdatePixelDataImplCopyWithImpl<_$UpdatePixelDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePixelDataImplToJson(
      this,
    );
  }
}

abstract class _UpdatePixelData implements UpdatePixelData {
  factory _UpdatePixelData(
      {required final int x,
      required final int y,
      required final int color}) = _$UpdatePixelDataImpl;

  factory _UpdatePixelData.fromJson(Map<String, dynamic> json) =
      _$UpdatePixelDataImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  int get color;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePixelDataImplCopyWith<_$UpdatePixelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
