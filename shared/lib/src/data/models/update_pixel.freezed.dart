// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_pixel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePixel _$UpdatePixelFromJson(Map<String, dynamic> json) {
  return _UpdatePixel.fromJson(json);
}

/// @nodoc
mixin _$UpdatePixel {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_time')
  DateTime get actionTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePixelCopyWith<UpdatePixel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePixelCopyWith<$Res> {
  factory $UpdatePixelCopyWith(
          UpdatePixel value, $Res Function(UpdatePixel) then) =
      _$UpdatePixelCopyWithImpl<$Res, UpdatePixel>;
  @useResult
  $Res call(
      {int x,
      int y,
      String color,
      @JsonKey(name: 'action_time') DateTime actionTime});
}

/// @nodoc
class _$UpdatePixelCopyWithImpl<$Res, $Val extends UpdatePixel>
    implements $UpdatePixelCopyWith<$Res> {
  _$UpdatePixelCopyWithImpl(this._value, this._then);

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
    Object? actionTime = null,
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
              as String,
      actionTime: null == actionTime
          ? _value.actionTime
          : actionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePixelImplCopyWith<$Res>
    implements $UpdatePixelCopyWith<$Res> {
  factory _$$UpdatePixelImplCopyWith(
          _$UpdatePixelImpl value, $Res Function(_$UpdatePixelImpl) then) =
      __$$UpdatePixelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int x,
      int y,
      String color,
      @JsonKey(name: 'action_time') DateTime actionTime});
}

/// @nodoc
class __$$UpdatePixelImplCopyWithImpl<$Res>
    extends _$UpdatePixelCopyWithImpl<$Res, _$UpdatePixelImpl>
    implements _$$UpdatePixelImplCopyWith<$Res> {
  __$$UpdatePixelImplCopyWithImpl(
      _$UpdatePixelImpl _value, $Res Function(_$UpdatePixelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? color = null,
    Object? actionTime = null,
  }) {
    return _then(_$UpdatePixelImpl(
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
              as String,
      actionTime: null == actionTime
          ? _value.actionTime
          : actionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePixelImpl implements _UpdatePixel {
  _$UpdatePixelImpl(
      {required this.x,
      required this.y,
      required this.color,
      @JsonKey(name: 'action_time') required this.actionTime});

  factory _$UpdatePixelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePixelImplFromJson(json);

  @override
  final int x;
  @override
  final int y;
  @override
  final String color;
  @override
  @JsonKey(name: 'action_time')
  final DateTime actionTime;

  @override
  String toString() {
    return 'UpdatePixel(x: $x, y: $y, color: $color, actionTime: $actionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePixelImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.actionTime, actionTime) ||
                other.actionTime == actionTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, color, actionTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePixelImplCopyWith<_$UpdatePixelImpl> get copyWith =>
      __$$UpdatePixelImplCopyWithImpl<_$UpdatePixelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePixelImplToJson(
      this,
    );
  }
}

abstract class _UpdatePixel implements UpdatePixel {
  factory _UpdatePixel(
          {required final int x,
          required final int y,
          required final String color,
          @JsonKey(name: 'action_time') required final DateTime actionTime}) =
      _$UpdatePixelImpl;

  factory _UpdatePixel.fromJson(Map<String, dynamic> json) =
      _$UpdatePixelImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  String get color;
  @override
  @JsonKey(name: 'action_time')
  DateTime get actionTime;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePixelImplCopyWith<_$UpdatePixelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
