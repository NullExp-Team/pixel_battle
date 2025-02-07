// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_pixel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FieldPixel _$FieldPixelFromJson(Map<String, dynamic> json) {
  return _FieldPixel.fromJson(json);
}

/// @nodoc
mixin _$FieldPixel {
  Position get position => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldPixelCopyWith<FieldPixel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldPixelCopyWith<$Res> {
  factory $FieldPixelCopyWith(
          FieldPixel value, $Res Function(FieldPixel) then) =
      _$FieldPixelCopyWithImpl<$Res, FieldPixel>;
  @useResult
  $Res call(
      {Position position, @ColorConverter() Color color, String nickname});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$FieldPixelCopyWithImpl<$Res, $Val extends FieldPixel>
    implements $FieldPixelCopyWith<$Res> {
  _$FieldPixelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? color = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
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

  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldPixelImplCopyWith<$Res>
    implements $FieldPixelCopyWith<$Res> {
  factory _$$FieldPixelImplCopyWith(
          _$FieldPixelImpl value, $Res Function(_$FieldPixelImpl) then) =
      __$$FieldPixelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Position position, @ColorConverter() Color color, String nickname});

  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$FieldPixelImplCopyWithImpl<$Res>
    extends _$FieldPixelCopyWithImpl<$Res, _$FieldPixelImpl>
    implements _$$FieldPixelImplCopyWith<$Res> {
  __$$FieldPixelImplCopyWithImpl(
      _$FieldPixelImpl _value, $Res Function(_$FieldPixelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? color = null,
    Object? nickname = null,
  }) {
    return _then(_$FieldPixelImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
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
class _$FieldPixelImpl implements _FieldPixel {
  _$FieldPixelImpl(
      {required this.position,
      @ColorConverter() required this.color,
      required this.nickname});

  factory _$FieldPixelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldPixelImplFromJson(json);

  @override
  final Position position;
  @override
  @ColorConverter()
  final Color color;
  @override
  final String nickname;

  @override
  String toString() {
    return 'FieldPixel(position: $position, color: $color, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldPixelImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, color, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldPixelImplCopyWith<_$FieldPixelImpl> get copyWith =>
      __$$FieldPixelImplCopyWithImpl<_$FieldPixelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldPixelImplToJson(
      this,
    );
  }
}

abstract class _FieldPixel implements FieldPixel {
  factory _FieldPixel(
      {required final Position position,
      @ColorConverter() required final Color color,
      required final String nickname}) = _$FieldPixelImpl;

  factory _FieldPixel.fromJson(Map<String, dynamic> json) =
      _$FieldPixelImpl.fromJson;

  @override
  Position get position;
  @override
  @ColorConverter()
  Color get color;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$FieldPixelImplCopyWith<_$FieldPixelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
