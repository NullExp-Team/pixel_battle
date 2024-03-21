// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixel_update_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PixelUpdateData _$PixelUpdateDataFromJson(Map<String, dynamic> json) {
  return _PixelUpdateData.fromJson(json);
}

/// @nodoc
mixin _$PixelUpdateData {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixelUpdateDataCopyWith<PixelUpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixelUpdateDataCopyWith<$Res> {
  factory $PixelUpdateDataCopyWith(
          PixelUpdateData value, $Res Function(PixelUpdateData) then) =
      _$PixelUpdateDataCopyWithImpl<$Res, PixelUpdateData>;
  @useResult
  $Res call({int x, int y, @ColorConverter() Color color, String nickname});
}

/// @nodoc
class _$PixelUpdateDataCopyWithImpl<$Res, $Val extends PixelUpdateData>
    implements $PixelUpdateDataCopyWith<$Res> {
  _$PixelUpdateDataCopyWithImpl(this._value, this._then);

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
    Object? nickname = null,
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
              as Color,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PixelUpdateDataImplCopyWith<$Res>
    implements $PixelUpdateDataCopyWith<$Res> {
  factory _$$PixelUpdateDataImplCopyWith(_$PixelUpdateDataImpl value,
          $Res Function(_$PixelUpdateDataImpl) then) =
      __$$PixelUpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y, @ColorConverter() Color color, String nickname});
}

/// @nodoc
class __$$PixelUpdateDataImplCopyWithImpl<$Res>
    extends _$PixelUpdateDataCopyWithImpl<$Res, _$PixelUpdateDataImpl>
    implements _$$PixelUpdateDataImplCopyWith<$Res> {
  __$$PixelUpdateDataImplCopyWithImpl(
      _$PixelUpdateDataImpl _value, $Res Function(_$PixelUpdateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? color = null,
    Object? nickname = null,
  }) {
    return _then(_$PixelUpdateDataImpl(
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
              as Color,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PixelUpdateDataImpl implements _PixelUpdateData {
  _$PixelUpdateDataImpl(
      {required this.x,
      required this.y,
      @ColorConverter() required this.color,
      required this.nickname});

  factory _$PixelUpdateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelUpdateDataImplFromJson(json);

  @override
  final int x;
  @override
  final int y;
  @override
  @ColorConverter()
  final Color color;
  @override
  final String nickname;

  @override
  String toString() {
    return 'PixelUpdateData(x: $x, y: $y, color: $color, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixelUpdateDataImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, color, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixelUpdateDataImplCopyWith<_$PixelUpdateDataImpl> get copyWith =>
      __$$PixelUpdateDataImplCopyWithImpl<_$PixelUpdateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PixelUpdateDataImplToJson(
      this,
    );
  }
}

abstract class _PixelUpdateData implements PixelUpdateData {
  factory _PixelUpdateData(
      {required final int x,
      required final int y,
      @ColorConverter() required final Color color,
      required final String nickname}) = _$PixelUpdateDataImpl;

  factory _PixelUpdateData.fromJson(Map<String, dynamic> json) =
      _$PixelUpdateDataImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @ColorConverter()
  Color get color;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$PixelUpdateDataImplCopyWith<_$PixelUpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
