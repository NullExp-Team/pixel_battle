// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_update_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectionUpdateData _$SelectionUpdateDataFromJson(Map<String, dynamic> json) {
  return _SelectionUpdateData.fromJson(json);
}

/// @nodoc
mixin _$SelectionUpdateData {
  Position? get position => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectionUpdateDataCopyWith<SelectionUpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionUpdateDataCopyWith<$Res> {
  factory $SelectionUpdateDataCopyWith(
          SelectionUpdateData value, $Res Function(SelectionUpdateData) then) =
      _$SelectionUpdateDataCopyWithImpl<$Res, SelectionUpdateData>;
  @useResult
  $Res call({Position? position, String nickname});

  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class _$SelectionUpdateDataCopyWithImpl<$Res, $Val extends SelectionUpdateData>
    implements $SelectionUpdateDataCopyWith<$Res> {
  _$SelectionUpdateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectionUpdateDataImplCopyWith<$Res>
    implements $SelectionUpdateDataCopyWith<$Res> {
  factory _$$SelectionUpdateDataImplCopyWith(_$SelectionUpdateDataImpl value,
          $Res Function(_$SelectionUpdateDataImpl) then) =
      __$$SelectionUpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position? position, String nickname});

  @override
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class __$$SelectionUpdateDataImplCopyWithImpl<$Res>
    extends _$SelectionUpdateDataCopyWithImpl<$Res, _$SelectionUpdateDataImpl>
    implements _$$SelectionUpdateDataImplCopyWith<$Res> {
  __$$SelectionUpdateDataImplCopyWithImpl(_$SelectionUpdateDataImpl _value,
      $Res Function(_$SelectionUpdateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? nickname = null,
  }) {
    return _then(_$SelectionUpdateDataImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectionUpdateDataImpl implements _SelectionUpdateData {
  _$SelectionUpdateDataImpl({required this.position, required this.nickname});

  factory _$SelectionUpdateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectionUpdateDataImplFromJson(json);

  @override
  final Position? position;
  @override
  final String nickname;

  @override
  String toString() {
    return 'SelectionUpdateData(position: $position, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectionUpdateDataImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectionUpdateDataImplCopyWith<_$SelectionUpdateDataImpl> get copyWith =>
      __$$SelectionUpdateDataImplCopyWithImpl<_$SelectionUpdateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectionUpdateDataImplToJson(
      this,
    );
  }
}

abstract class _SelectionUpdateData implements SelectionUpdateData {
  factory _SelectionUpdateData(
      {required final Position? position,
      required final String nickname}) = _$SelectionUpdateDataImpl;

  factory _SelectionUpdateData.fromJson(Map<String, dynamic> json) =
      _$SelectionUpdateDataImpl.fromJson;

  @override
  Position? get position;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$SelectionUpdateDataImplCopyWith<_$SelectionUpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
