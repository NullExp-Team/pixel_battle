// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_selection_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateSelectionData _$UpdateSelectionDataFromJson(Map<String, dynamic> json) {
  return _UpdateSelectionData.fromJson(json);
}

/// @nodoc
mixin _$UpdateSelectionData {
  Position get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSelectionDataCopyWith<UpdateSelectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSelectionDataCopyWith<$Res> {
  factory $UpdateSelectionDataCopyWith(
          UpdateSelectionData value, $Res Function(UpdateSelectionData) then) =
      _$UpdateSelectionDataCopyWithImpl<$Res, UpdateSelectionData>;
  @useResult
  $Res call({Position position});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$UpdateSelectionDataCopyWithImpl<$Res, $Val extends UpdateSelectionData>
    implements $UpdateSelectionDataCopyWith<$Res> {
  _$UpdateSelectionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
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
abstract class _$$UpdateSelectionDataImplCopyWith<$Res>
    implements $UpdateSelectionDataCopyWith<$Res> {
  factory _$$UpdateSelectionDataImplCopyWith(_$UpdateSelectionDataImpl value,
          $Res Function(_$UpdateSelectionDataImpl) then) =
      __$$UpdateSelectionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position position});

  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$UpdateSelectionDataImplCopyWithImpl<$Res>
    extends _$UpdateSelectionDataCopyWithImpl<$Res, _$UpdateSelectionDataImpl>
    implements _$$UpdateSelectionDataImplCopyWith<$Res> {
  __$$UpdateSelectionDataImplCopyWithImpl(_$UpdateSelectionDataImpl _value,
      $Res Function(_$UpdateSelectionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$UpdateSelectionDataImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSelectionDataImpl implements _UpdateSelectionData {
  _$UpdateSelectionDataImpl({required this.position});

  factory _$UpdateSelectionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSelectionDataImplFromJson(json);

  @override
  final Position position;

  @override
  String toString() {
    return 'UpdateSelectionData(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectionDataImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectionDataImplCopyWith<_$UpdateSelectionDataImpl> get copyWith =>
      __$$UpdateSelectionDataImplCopyWithImpl<_$UpdateSelectionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSelectionDataImplToJson(
      this,
    );
  }
}

abstract class _UpdateSelectionData implements UpdateSelectionData {
  factory _UpdateSelectionData({required final Position position}) =
      _$UpdateSelectionDataImpl;

  factory _UpdateSelectionData.fromJson(Map<String, dynamic> json) =
      _$UpdateSelectionDataImpl.fromJson;

  @override
  Position get position;
  @override
  @JsonKey(ignore: true)
  _$$UpdateSelectionDataImplCopyWith<_$UpdateSelectionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
