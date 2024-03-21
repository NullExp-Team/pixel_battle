// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FieldStateData _$FieldStateDataFromJson(Map<String, dynamic> json) {
  return _FieldStateData.fromJson(json);
}

/// @nodoc
mixin _$FieldStateData {
  List<FieldPixel> get pixels => throw _privateConstructorUsedError;
  List<SelectionUpdateData> get selections =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldStateDataCopyWith<FieldStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateDataCopyWith<$Res> {
  factory $FieldStateDataCopyWith(
          FieldStateData value, $Res Function(FieldStateData) then) =
      _$FieldStateDataCopyWithImpl<$Res, FieldStateData>;
  @useResult
  $Res call({List<FieldPixel> pixels, List<SelectionUpdateData> selections});
}

/// @nodoc
class _$FieldStateDataCopyWithImpl<$Res, $Val extends FieldStateData>
    implements $FieldStateDataCopyWith<$Res> {
  _$FieldStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixels = null,
    Object? selections = null,
  }) {
    return _then(_value.copyWith(
      pixels: null == pixels
          ? _value.pixels
          : pixels // ignore: cast_nullable_to_non_nullable
              as List<FieldPixel>,
      selections: null == selections
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<SelectionUpdateData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldStateDataImplCopyWith<$Res>
    implements $FieldStateDataCopyWith<$Res> {
  factory _$$FieldStateDataImplCopyWith(_$FieldStateDataImpl value,
          $Res Function(_$FieldStateDataImpl) then) =
      __$$FieldStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FieldPixel> pixels, List<SelectionUpdateData> selections});
}

/// @nodoc
class __$$FieldStateDataImplCopyWithImpl<$Res>
    extends _$FieldStateDataCopyWithImpl<$Res, _$FieldStateDataImpl>
    implements _$$FieldStateDataImplCopyWith<$Res> {
  __$$FieldStateDataImplCopyWithImpl(
      _$FieldStateDataImpl _value, $Res Function(_$FieldStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixels = null,
    Object? selections = null,
  }) {
    return _then(_$FieldStateDataImpl(
      pixels: null == pixels
          ? _value._pixels
          : pixels // ignore: cast_nullable_to_non_nullable
              as List<FieldPixel>,
      selections: null == selections
          ? _value._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<SelectionUpdateData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldStateDataImpl implements _FieldStateData {
  _$FieldStateDataImpl(
      {required final List<FieldPixel> pixels,
      required final List<SelectionUpdateData> selections})
      : _pixels = pixels,
        _selections = selections;

  factory _$FieldStateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldStateDataImplFromJson(json);

  final List<FieldPixel> _pixels;
  @override
  List<FieldPixel> get pixels {
    if (_pixels is EqualUnmodifiableListView) return _pixels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pixels);
  }

  final List<SelectionUpdateData> _selections;
  @override
  List<SelectionUpdateData> get selections {
    if (_selections is EqualUnmodifiableListView) return _selections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selections);
  }

  @override
  String toString() {
    return 'FieldStateData(pixels: $pixels, selections: $selections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateDataImpl &&
            const DeepCollectionEquality().equals(other._pixels, _pixels) &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pixels),
      const DeepCollectionEquality().hash(_selections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldStateDataImplCopyWith<_$FieldStateDataImpl> get copyWith =>
      __$$FieldStateDataImplCopyWithImpl<_$FieldStateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldStateDataImplToJson(
      this,
    );
  }
}

abstract class _FieldStateData implements FieldStateData {
  factory _FieldStateData(
          {required final List<FieldPixel> pixels,
          required final List<SelectionUpdateData> selections}) =
      _$FieldStateDataImpl;

  factory _FieldStateData.fromJson(Map<String, dynamic> json) =
      _$FieldStateDataImpl.fromJson;

  @override
  List<FieldPixel> get pixels;
  @override
  List<SelectionUpdateData> get selections;
  @override
  @JsonKey(ignore: true)
  _$$FieldStateDataImplCopyWith<_$FieldStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
