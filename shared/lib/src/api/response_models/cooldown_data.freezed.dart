// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cooldown_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CooldownData _$CooldownDataFromJson(Map<String, dynamic> json) {
  return _CooldownData.fromJson(json);
}

/// @nodoc
mixin _$CooldownData {
// In seconds
  int get cooldown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CooldownDataCopyWith<CooldownData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CooldownDataCopyWith<$Res> {
  factory $CooldownDataCopyWith(
          CooldownData value, $Res Function(CooldownData) then) =
      _$CooldownDataCopyWithImpl<$Res, CooldownData>;
  @useResult
  $Res call({int cooldown});
}

/// @nodoc
class _$CooldownDataCopyWithImpl<$Res, $Val extends CooldownData>
    implements $CooldownDataCopyWith<$Res> {
  _$CooldownDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cooldown = null,
  }) {
    return _then(_value.copyWith(
      cooldown: null == cooldown
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CooldownDataImplCopyWith<$Res>
    implements $CooldownDataCopyWith<$Res> {
  factory _$$CooldownDataImplCopyWith(
          _$CooldownDataImpl value, $Res Function(_$CooldownDataImpl) then) =
      __$$CooldownDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cooldown});
}

/// @nodoc
class __$$CooldownDataImplCopyWithImpl<$Res>
    extends _$CooldownDataCopyWithImpl<$Res, _$CooldownDataImpl>
    implements _$$CooldownDataImplCopyWith<$Res> {
  __$$CooldownDataImplCopyWithImpl(
      _$CooldownDataImpl _value, $Res Function(_$CooldownDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cooldown = null,
  }) {
    return _then(_$CooldownDataImpl(
      cooldown: null == cooldown
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CooldownDataImpl implements _CooldownData {
  _$CooldownDataImpl({required this.cooldown});

  factory _$CooldownDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CooldownDataImplFromJson(json);

// In seconds
  @override
  final int cooldown;

  @override
  String toString() {
    return 'CooldownData(cooldown: $cooldown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CooldownDataImpl &&
            (identical(other.cooldown, cooldown) ||
                other.cooldown == cooldown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cooldown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CooldownDataImplCopyWith<_$CooldownDataImpl> get copyWith =>
      __$$CooldownDataImplCopyWithImpl<_$CooldownDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CooldownDataImplToJson(
      this,
    );
  }
}

abstract class _CooldownData implements CooldownData {
  factory _CooldownData({required final int cooldown}) = _$CooldownDataImpl;

  factory _CooldownData.fromJson(Map<String, dynamic> json) =
      _$CooldownDataImpl.fromJson;

  @override // In seconds
  int get cooldown;
  @override
  @JsonKey(ignore: true)
  _$$CooldownDataImplCopyWith<_$CooldownDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
