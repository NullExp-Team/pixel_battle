// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_state_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldStateMap {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  Map<int, Map<int, FieldPixel>> get pixels =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldStateMapCopyWith<FieldStateMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateMapCopyWith<$Res> {
  factory $FieldStateMapCopyWith(
          FieldStateMap value, $Res Function(FieldStateMap) then) =
      _$FieldStateMapCopyWithImpl<$Res, FieldStateMap>;
  @useResult
  $Res call({int width, int height, Map<int, Map<int, FieldPixel>> pixels});
}

/// @nodoc
class _$FieldStateMapCopyWithImpl<$Res, $Val extends FieldStateMap>
    implements $FieldStateMapCopyWith<$Res> {
  _$FieldStateMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? pixels = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      pixels: null == pixels
          ? _value.pixels
          : pixels // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<int, FieldPixel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldStateMapImplCopyWith<$Res>
    implements $FieldStateMapCopyWith<$Res> {
  factory _$$FieldStateMapImplCopyWith(
          _$FieldStateMapImpl value, $Res Function(_$FieldStateMapImpl) then) =
      __$$FieldStateMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, Map<int, Map<int, FieldPixel>> pixels});
}

/// @nodoc
class __$$FieldStateMapImplCopyWithImpl<$Res>
    extends _$FieldStateMapCopyWithImpl<$Res, _$FieldStateMapImpl>
    implements _$$FieldStateMapImplCopyWith<$Res> {
  __$$FieldStateMapImplCopyWithImpl(
      _$FieldStateMapImpl _value, $Res Function(_$FieldStateMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? pixels = null,
  }) {
    return _then(_$FieldStateMapImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      pixels: null == pixels
          ? _value.pixels
          : pixels // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<int, FieldPixel>>,
    ));
  }
}

/// @nodoc

class _$FieldStateMapImpl implements _FieldStateMap {
  _$FieldStateMapImpl(
      {required this.width, required this.height, required this.pixels});

  @override
  final int width;
  @override
  final int height;
  @override
  final Map<int, Map<int, FieldPixel>> pixels;

  @override
  String toString() {
    return 'FieldStateMap(width: $width, height: $height, pixels: $pixels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateMapImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other.pixels, pixels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, width, height, const DeepCollectionEquality().hash(pixels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldStateMapImplCopyWith<_$FieldStateMapImpl> get copyWith =>
      __$$FieldStateMapImplCopyWithImpl<_$FieldStateMapImpl>(this, _$identity);
}

abstract class _FieldStateMap implements FieldStateMap {
  factory _FieldStateMap(
          {required final int width,
          required final int height,
          required final Map<int, Map<int, FieldPixel>> pixels}) =
      _$FieldStateMapImpl;

  @override
  int get width;
  @override
  int get height;
  @override
  Map<int, Map<int, FieldPixel>> get pixels;
  @override
  @JsonKey(ignore: true)
  _$$FieldStateMapImplCopyWith<_$FieldStateMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
