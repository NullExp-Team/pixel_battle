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
  Position get position => throw _privateConstructorUsedError;

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
  $Res call({Position position});

  $PositionCopyWith<$Res> get position;
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
abstract class _$$PixelInfoAdminDataImplCopyWith<$Res>
    implements $PixelInfoAdminDataCopyWith<$Res> {
  factory _$$PixelInfoAdminDataImplCopyWith(_$PixelInfoAdminDataImpl value,
          $Res Function(_$PixelInfoAdminDataImpl) then) =
      __$$PixelInfoAdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position position});

  @override
  $PositionCopyWith<$Res> get position;
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
    Object? position = null,
  }) {
    return _then(_$PixelInfoAdminDataImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PixelInfoAdminDataImpl implements _PixelInfoAdminData {
  _$PixelInfoAdminDataImpl({required this.position});

  factory _$PixelInfoAdminDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelInfoAdminDataImplFromJson(json);

  @override
  final Position position;

  @override
  String toString() {
    return 'PixelInfoAdminData(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixelInfoAdminDataImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position);

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
  factory _PixelInfoAdminData({required final Position position}) =
      _$PixelInfoAdminDataImpl;

  factory _PixelInfoAdminData.fromJson(Map<String, dynamic> json) =
      _$PixelInfoAdminDataImpl.fromJson;

  @override
  Position get position;
  @override
  @JsonKey(ignore: true)
  _$$PixelInfoAdminDataImplCopyWith<_$PixelInfoAdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
