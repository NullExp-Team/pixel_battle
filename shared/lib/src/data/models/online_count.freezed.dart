// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnlineCount _$OnlineCountFromJson(Map<String, dynamic> json) {
  return _OnlineCount.fromJson(json);
}

/// @nodoc
mixin _$OnlineCount {
  int get online => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlineCountCopyWith<OnlineCount> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineCountCopyWith<$Res> {
  factory $OnlineCountCopyWith(OnlineCount value, $Res Function(OnlineCount) then) = _$OnlineCountCopyWithImpl<$Res, OnlineCount>;
  @useResult
  $Res call({int online});
}

/// @nodoc
class _$OnlineCountCopyWithImpl<$Res, $Val extends OnlineCount> implements $OnlineCountCopyWith<$Res> {
  _$OnlineCountCopyWithImpl(this._value, this._then);

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
abstract class _$$OnlineCountImplCopyWith<$Res> implements $OnlineCountCopyWith<$Res> {
  factory _$$OnlineCountImplCopyWith(_$OnlineCountImpl value, $Res Function(_$OnlineCountImpl) then) = __$$OnlineCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int online});
}

/// @nodoc
class __$$OnlineCountImplCopyWithImpl<$Res> extends _$OnlineCountCopyWithImpl<$Res, _$OnlineCountImpl> implements _$$OnlineCountImplCopyWith<$Res> {
  __$$OnlineCountImplCopyWithImpl(_$OnlineCountImpl _value, $Res Function(_$OnlineCountImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = null,
  }) {
    return _then(_$OnlineCountImpl(
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlineCountImpl implements _OnlineCount {
  _$OnlineCountImpl({required this.online});

  factory _$OnlineCountImpl.fromJson(Map<String, dynamic> json) => _$$OnlineCountImplFromJson(json);

  @override
  final int online;

  @override
  String toString() {
    return 'OnlineCount(online: $online)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnlineCountImpl && (identical(other.online, online) || other.online == online));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, online);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineCountImplCopyWith<_$OnlineCountImpl> get copyWith => __$$OnlineCountImplCopyWithImpl<_$OnlineCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineCountImplToJson(
      this,
    );
  }
}

abstract class _OnlineCount implements OnlineCount {
  factory _OnlineCount({required final int online}) = _$OnlineCountImpl;

  factory _OnlineCount.fromJson(Map<String, dynamic> json) = _$OnlineCountImpl.fromJson;

  @override
  int get online;
  @override
  @JsonKey(ignore: true)
  _$$OnlineCountImplCopyWith<_$OnlineCountImpl> get copyWith => throw _privateConstructorUsedError;
}
