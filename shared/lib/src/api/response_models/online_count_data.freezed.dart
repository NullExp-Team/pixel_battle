// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_count_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnlineCountData _$OnlineCountDataFromJson(Map<String, dynamic> json) {
  return _OnlineCountData.fromJson(json);
}

/// @nodoc
mixin _$OnlineCountData {
  int get online => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlineCountDataCopyWith<OnlineCountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineCountDataCopyWith<$Res> {
  factory $OnlineCountDataCopyWith(
          OnlineCountData value, $Res Function(OnlineCountData) then) =
      _$OnlineCountDataCopyWithImpl<$Res, OnlineCountData>;
  @useResult
  $Res call({int online});
}

/// @nodoc
class _$OnlineCountDataCopyWithImpl<$Res, $Val extends OnlineCountData>
    implements $OnlineCountDataCopyWith<$Res> {
  _$OnlineCountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = null,
  }) {
    return _then(_value.copyWith(
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnlineCountDataImplCopyWith<$Res>
    implements $OnlineCountDataCopyWith<$Res> {
  factory _$$OnlineCountDataImplCopyWith(_$OnlineCountDataImpl value,
          $Res Function(_$OnlineCountDataImpl) then) =
      __$$OnlineCountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int online});
}

/// @nodoc
class __$$OnlineCountDataImplCopyWithImpl<$Res>
    extends _$OnlineCountDataCopyWithImpl<$Res, _$OnlineCountDataImpl>
    implements _$$OnlineCountDataImplCopyWith<$Res> {
  __$$OnlineCountDataImplCopyWithImpl(
      _$OnlineCountDataImpl _value, $Res Function(_$OnlineCountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = null,
  }) {
    return _then(_$OnlineCountDataImpl(
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlineCountDataImpl implements _OnlineCountData {
  _$OnlineCountDataImpl({required this.online});

  factory _$OnlineCountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlineCountDataImplFromJson(json);

  @override
  final int online;

  @override
  String toString() {
    return 'OnlineCountData(online: $online)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineCountDataImpl &&
            (identical(other.online, online) || other.online == online));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, online);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineCountDataImplCopyWith<_$OnlineCountDataImpl> get copyWith =>
      __$$OnlineCountDataImplCopyWithImpl<_$OnlineCountDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineCountDataImplToJson(
      this,
    );
  }
}

abstract class _OnlineCountData implements OnlineCountData {
  factory _OnlineCountData({required final int online}) = _$OnlineCountDataImpl;

  factory _OnlineCountData.fromJson(Map<String, dynamic> json) =
      _$OnlineCountDataImpl.fromJson;

  @override
  int get online;
  @override
  @JsonKey(ignore: true)
  _$$OnlineCountDataImplCopyWith<_$OnlineCountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
