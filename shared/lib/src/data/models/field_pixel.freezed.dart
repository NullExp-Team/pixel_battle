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
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldPixelCopyWith<FieldPixel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldPixelCopyWith<$Res> {
  factory $FieldPixelCopyWith(FieldPixel value, $Res Function(FieldPixel) then) = _$FieldPixelCopyWithImpl<$Res, FieldPixel>;
  @useResult
  $Res call({int x, int y, int color, @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$FieldPixelCopyWithImpl<$Res, $Val extends FieldPixel> implements $FieldPixelCopyWith<$Res> {
  _$FieldPixelCopyWithImpl(this._value, this._then);

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
    Object? userId = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldPixelImplCopyWith<$Res> implements $FieldPixelCopyWith<$Res> {
  factory _$$FieldPixelImplCopyWith(_$FieldPixelImpl value, $Res Function(_$FieldPixelImpl) then) = __$$FieldPixelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y, int color, @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$FieldPixelImplCopyWithImpl<$Res> extends _$FieldPixelCopyWithImpl<$Res, _$FieldPixelImpl> implements _$$FieldPixelImplCopyWith<$Res> {
  __$$FieldPixelImplCopyWithImpl(_$FieldPixelImpl _value, $Res Function(_$FieldPixelImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? color = null,
    Object? userId = null,
  }) {
    return _then(_$FieldPixelImpl(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldPixelImpl implements _FieldPixel {
  _$FieldPixelImpl({required this.x, required this.y, required this.color, @JsonKey(name: 'user_id') required this.userId});

  factory _$FieldPixelImpl.fromJson(Map<String, dynamic> json) => _$$FieldPixelImplFromJson(json);

  @override
  final int x;
  @override
  final int y;
  @override
  final int color;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'FieldPixel(x: $x, y: $y, color: $color, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldPixelImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, color, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldPixelImplCopyWith<_$FieldPixelImpl> get copyWith => __$$FieldPixelImplCopyWithImpl<_$FieldPixelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldPixelImplToJson(
      this,
    );
  }
}

abstract class _FieldPixel implements FieldPixel {
  factory _FieldPixel(
      {required final int x,
      required final int y,
      required final int color,
      @JsonKey(name: 'user_id') required final String userId}) = _$FieldPixelImpl;

  factory _FieldPixel.fromJson(Map<String, dynamic> json) = _$FieldPixelImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  int get color;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$FieldPixelImplCopyWith<_$FieldPixelImpl> get copyWith => throw _privateConstructorUsedError;
}
