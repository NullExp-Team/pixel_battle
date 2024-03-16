// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeControllerState {
  Color get selectedColor => throw _privateConstructorUsedError;
  Offset? get selectedPixelPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeControllerStateCopyWith<HomeControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeControllerStateCopyWith<$Res> {
  factory $HomeControllerStateCopyWith(
          HomeControllerState value, $Res Function(HomeControllerState) then) =
      _$HomeControllerStateCopyWithImpl<$Res, HomeControllerState>;
  @useResult
  $Res call({Color selectedColor, Offset? selectedPixelPosition});
}

/// @nodoc
class _$HomeControllerStateCopyWithImpl<$Res, $Val extends HomeControllerState>
    implements $HomeControllerStateCopyWith<$Res> {
  _$HomeControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedColor = null,
    Object? selectedPixelPosition = freezed,
  }) {
    return _then(_value.copyWith(
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color,
      selectedPixelPosition: freezed == selectedPixelPosition
          ? _value.selectedPixelPosition
          : selectedPixelPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeControllerStateImplCopyWith<$Res>
    implements $HomeControllerStateCopyWith<$Res> {
  factory _$$HomeControllerStateImplCopyWith(_$HomeControllerStateImpl value,
          $Res Function(_$HomeControllerStateImpl) then) =
      __$$HomeControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color selectedColor, Offset? selectedPixelPosition});
}

/// @nodoc
class __$$HomeControllerStateImplCopyWithImpl<$Res>
    extends _$HomeControllerStateCopyWithImpl<$Res, _$HomeControllerStateImpl>
    implements _$$HomeControllerStateImplCopyWith<$Res> {
  __$$HomeControllerStateImplCopyWithImpl(_$HomeControllerStateImpl _value,
      $Res Function(_$HomeControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedColor = null,
    Object? selectedPixelPosition = freezed,
  }) {
    return _then(_$HomeControllerStateImpl(
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color,
      selectedPixelPosition: freezed == selectedPixelPosition
          ? _value.selectedPixelPosition
          : selectedPixelPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }
}

/// @nodoc

class _$HomeControllerStateImpl implements _HomeControllerState {
  _$HomeControllerStateImpl(
      {required this.selectedColor, required this.selectedPixelPosition});

  @override
  final Color selectedColor;
  @override
  final Offset? selectedPixelPosition;

  @override
  String toString() {
    return 'HomeControllerState(selectedColor: $selectedColor, selectedPixelPosition: $selectedPixelPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeControllerStateImpl &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            (identical(other.selectedPixelPosition, selectedPixelPosition) ||
                other.selectedPixelPosition == selectedPixelPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedColor, selectedPixelPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeControllerStateImplCopyWith<_$HomeControllerStateImpl> get copyWith =>
      __$$HomeControllerStateImplCopyWithImpl<_$HomeControllerStateImpl>(
          this, _$identity);
}

abstract class _HomeControllerState implements HomeControllerState {
  factory _HomeControllerState(
          {required final Color selectedColor,
          required final Offset? selectedPixelPosition}) =
      _$HomeControllerStateImpl;

  @override
  Color get selectedColor;
  @override
  Offset? get selectedPixelPosition;
  @override
  @JsonKey(ignore: true)
  _$$HomeControllerStateImplCopyWith<_$HomeControllerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
