// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppResponse _$AppResponseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'banned':
      return BannedAppResponse.fromJson(json);
    case 'error':
      return ErrorAppResponse.fromJson(json);
    case 'user_id':
      return UserIdAppResponse.fromJson(json);
    case 'field_state':
      return FieldStateAppResponse.fromJson(json);
    case 'online_count':
      return OnlineCountAppResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'AppResponse', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$AppResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(int data) userId,
    required TResult Function(List<FieldPixel> data) fieldState,
    required TResult Function() onlineCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(int data)? userId,
    TResult? Function(List<FieldPixel> data)? fieldState,
    TResult? Function()? onlineCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(int data)? userId,
    TResult Function(List<FieldPixel> data)? fieldState,
    TResult Function()? onlineCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedAppResponse value) banned,
    required TResult Function(ErrorAppResponse value) error,
    required TResult Function(UserIdAppResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountAppResponse value) onlineCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedAppResponse value)? banned,
    TResult? Function(ErrorAppResponse value)? error,
    TResult? Function(UserIdAppResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountAppResponse value)? onlineCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedAppResponse value)? banned,
    TResult Function(ErrorAppResponse value)? error,
    TResult Function(UserIdAppResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountAppResponse value)? onlineCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponseCopyWith<$Res> {
  factory $AppResponseCopyWith(
          AppResponse value, $Res Function(AppResponse) then) =
      _$AppResponseCopyWithImpl<$Res, AppResponse>;
}

/// @nodoc
class _$AppResponseCopyWithImpl<$Res, $Val extends AppResponse>
    implements $AppResponseCopyWith<$Res> {
  _$AppResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BannedAppResponseImplCopyWith<$Res> {
  factory _$$BannedAppResponseImplCopyWith(_$BannedAppResponseImpl value,
          $Res Function(_$BannedAppResponseImpl) then) =
      __$$BannedAppResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BannedAppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$BannedAppResponseImpl>
    implements _$$BannedAppResponseImplCopyWith<$Res> {
  __$$BannedAppResponseImplCopyWithImpl(_$BannedAppResponseImpl _value,
      $Res Function(_$BannedAppResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BannedAppResponseImpl implements BannedAppResponse {
  const _$BannedAppResponseImpl({final String? $type})
      : $type = $type ?? 'banned';

  factory _$BannedAppResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannedAppResponseImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.banned()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannedAppResponseImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(int data) userId,
    required TResult Function(List<FieldPixel> data) fieldState,
    required TResult Function() onlineCount,
  }) {
    return banned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(int data)? userId,
    TResult? Function(List<FieldPixel> data)? fieldState,
    TResult? Function()? onlineCount,
  }) {
    return banned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(int data)? userId,
    TResult Function(List<FieldPixel> data)? fieldState,
    TResult Function()? onlineCount,
    required TResult orElse(),
  }) {
    if (banned != null) {
      return banned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedAppResponse value) banned,
    required TResult Function(ErrorAppResponse value) error,
    required TResult Function(UserIdAppResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountAppResponse value) onlineCount,
  }) {
    return banned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedAppResponse value)? banned,
    TResult? Function(ErrorAppResponse value)? error,
    TResult? Function(UserIdAppResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountAppResponse value)? onlineCount,
  }) {
    return banned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedAppResponse value)? banned,
    TResult Function(ErrorAppResponse value)? error,
    TResult Function(UserIdAppResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountAppResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (banned != null) {
      return banned(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BannedAppResponseImplToJson(
      this,
    );
  }
}

abstract class BannedAppResponse implements AppResponse {
  const factory BannedAppResponse() = _$BannedAppResponseImpl;

  factory BannedAppResponse.fromJson(Map<String, dynamic> json) =
      _$BannedAppResponseImpl.fromJson;
}

/// @nodoc
abstract class _$$ErrorAppResponseImplCopyWith<$Res> {
  factory _$$ErrorAppResponseImplCopyWith(_$ErrorAppResponseImpl value,
          $Res Function(_$ErrorAppResponseImpl) then) =
      __$$ErrorAppResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorAppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$ErrorAppResponseImpl>
    implements _$$ErrorAppResponseImplCopyWith<$Res> {
  __$$ErrorAppResponseImplCopyWithImpl(_$ErrorAppResponseImpl _value,
      $Res Function(_$ErrorAppResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorAppResponseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorAppResponseImpl implements ErrorAppResponse {
  const _$ErrorAppResponseImpl(this.message, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorAppResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorAppResponseImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAppResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAppResponseImplCopyWith<_$ErrorAppResponseImpl> get copyWith =>
      __$$ErrorAppResponseImplCopyWithImpl<_$ErrorAppResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(int data) userId,
    required TResult Function(List<FieldPixel> data) fieldState,
    required TResult Function() onlineCount,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(int data)? userId,
    TResult? Function(List<FieldPixel> data)? fieldState,
    TResult? Function()? onlineCount,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(int data)? userId,
    TResult Function(List<FieldPixel> data)? fieldState,
    TResult Function()? onlineCount,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedAppResponse value) banned,
    required TResult Function(ErrorAppResponse value) error,
    required TResult Function(UserIdAppResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountAppResponse value) onlineCount,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedAppResponse value)? banned,
    TResult? Function(ErrorAppResponse value)? error,
    TResult? Function(UserIdAppResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountAppResponse value)? onlineCount,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedAppResponse value)? banned,
    TResult Function(ErrorAppResponse value)? error,
    TResult Function(UserIdAppResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountAppResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorAppResponseImplToJson(
      this,
    );
  }
}

abstract class ErrorAppResponse implements AppResponse {
  const factory ErrorAppResponse(final String message) = _$ErrorAppResponseImpl;

  factory ErrorAppResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorAppResponseImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorAppResponseImplCopyWith<_$ErrorAppResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserIdAppResponseImplCopyWith<$Res> {
  factory _$$UserIdAppResponseImplCopyWith(_$UserIdAppResponseImpl value,
          $Res Function(_$UserIdAppResponseImpl) then) =
      __$$UserIdAppResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$UserIdAppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$UserIdAppResponseImpl>
    implements _$$UserIdAppResponseImplCopyWith<$Res> {
  __$$UserIdAppResponseImplCopyWithImpl(_$UserIdAppResponseImpl _value,
      $Res Function(_$UserIdAppResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserIdAppResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdAppResponseImpl implements UserIdAppResponse {
  const _$UserIdAppResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'user_id';

  factory _$UserIdAppResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdAppResponseImplFromJson(json);

  @override
  final int data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.userId(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdAppResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdAppResponseImplCopyWith<_$UserIdAppResponseImpl> get copyWith =>
      __$$UserIdAppResponseImplCopyWithImpl<_$UserIdAppResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(int data) userId,
    required TResult Function(List<FieldPixel> data) fieldState,
    required TResult Function() onlineCount,
  }) {
    return userId(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(int data)? userId,
    TResult? Function(List<FieldPixel> data)? fieldState,
    TResult? Function()? onlineCount,
  }) {
    return userId?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(int data)? userId,
    TResult Function(List<FieldPixel> data)? fieldState,
    TResult Function()? onlineCount,
    required TResult orElse(),
  }) {
    if (userId != null) {
      return userId(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedAppResponse value) banned,
    required TResult Function(ErrorAppResponse value) error,
    required TResult Function(UserIdAppResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountAppResponse value) onlineCount,
  }) {
    return userId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedAppResponse value)? banned,
    TResult? Function(ErrorAppResponse value)? error,
    TResult? Function(UserIdAppResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountAppResponse value)? onlineCount,
  }) {
    return userId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedAppResponse value)? banned,
    TResult Function(ErrorAppResponse value)? error,
    TResult Function(UserIdAppResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountAppResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (userId != null) {
      return userId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdAppResponseImplToJson(
      this,
    );
  }
}

abstract class UserIdAppResponse implements AppResponse {
  const factory UserIdAppResponse(final int data) = _$UserIdAppResponseImpl;

  factory UserIdAppResponse.fromJson(Map<String, dynamic> json) =
      _$UserIdAppResponseImpl.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$UserIdAppResponseImplCopyWith<_$UserIdAppResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldStateAppResponseImplCopyWith<$Res> {
  factory _$$FieldStateAppResponseImplCopyWith(
          _$FieldStateAppResponseImpl value,
          $Res Function(_$FieldStateAppResponseImpl) then) =
      __$$FieldStateAppResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FieldPixel> data});
}

/// @nodoc
class __$$FieldStateAppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$FieldStateAppResponseImpl>
    implements _$$FieldStateAppResponseImplCopyWith<$Res> {
  __$$FieldStateAppResponseImplCopyWithImpl(_$FieldStateAppResponseImpl _value,
      $Res Function(_$FieldStateAppResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FieldStateAppResponseImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FieldPixel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldStateAppResponseImpl implements FieldStateAppResponse {
  const _$FieldStateAppResponseImpl(final List<FieldPixel> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'field_state';

  factory _$FieldStateAppResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldStateAppResponseImplFromJson(json);

  final List<FieldPixel> _data;
  @override
  List<FieldPixel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.fieldState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateAppResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldStateAppResponseImplCopyWith<_$FieldStateAppResponseImpl>
      get copyWith => __$$FieldStateAppResponseImplCopyWithImpl<
          _$FieldStateAppResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(int data) userId,
    required TResult Function(List<FieldPixel> data) fieldState,
    required TResult Function() onlineCount,
  }) {
    return fieldState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(int data)? userId,
    TResult? Function(List<FieldPixel> data)? fieldState,
    TResult? Function()? onlineCount,
  }) {
    return fieldState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(int data)? userId,
    TResult Function(List<FieldPixel> data)? fieldState,
    TResult Function()? onlineCount,
    required TResult orElse(),
  }) {
    if (fieldState != null) {
      return fieldState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedAppResponse value) banned,
    required TResult Function(ErrorAppResponse value) error,
    required TResult Function(UserIdAppResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountAppResponse value) onlineCount,
  }) {
    return fieldState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedAppResponse value)? banned,
    TResult? Function(ErrorAppResponse value)? error,
    TResult? Function(UserIdAppResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountAppResponse value)? onlineCount,
  }) {
    return fieldState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedAppResponse value)? banned,
    TResult Function(ErrorAppResponse value)? error,
    TResult Function(UserIdAppResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountAppResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (fieldState != null) {
      return fieldState(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldStateAppResponseImplToJson(
      this,
    );
  }
}

abstract class FieldStateAppResponse implements AppResponse {
  const factory FieldStateAppResponse(final List<FieldPixel> data) =
      _$FieldStateAppResponseImpl;

  factory FieldStateAppResponse.fromJson(Map<String, dynamic> json) =
      _$FieldStateAppResponseImpl.fromJson;

  List<FieldPixel> get data;
  @JsonKey(ignore: true)
  _$$FieldStateAppResponseImplCopyWith<_$FieldStateAppResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineCountAppResponseImplCopyWith<$Res> {
  factory _$$OnlineCountAppResponseImplCopyWith(
          _$OnlineCountAppResponseImpl value,
          $Res Function(_$OnlineCountAppResponseImpl) then) =
      __$$OnlineCountAppResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnlineCountAppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$OnlineCountAppResponseImpl>
    implements _$$OnlineCountAppResponseImplCopyWith<$Res> {
  __$$OnlineCountAppResponseImplCopyWithImpl(
      _$OnlineCountAppResponseImpl _value,
      $Res Function(_$OnlineCountAppResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnlineCountAppResponseImpl implements OnlineCountAppResponse {
  const _$OnlineCountAppResponseImpl({final String? $type})
      : $type = $type ?? 'online_count';

  factory _$OnlineCountAppResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlineCountAppResponseImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.onlineCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineCountAppResponseImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(int data) userId,
    required TResult Function(List<FieldPixel> data) fieldState,
    required TResult Function() onlineCount,
  }) {
    return onlineCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(int data)? userId,
    TResult? Function(List<FieldPixel> data)? fieldState,
    TResult? Function()? onlineCount,
  }) {
    return onlineCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(int data)? userId,
    TResult Function(List<FieldPixel> data)? fieldState,
    TResult Function()? onlineCount,
    required TResult orElse(),
  }) {
    if (onlineCount != null) {
      return onlineCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedAppResponse value) banned,
    required TResult Function(ErrorAppResponse value) error,
    required TResult Function(UserIdAppResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountAppResponse value) onlineCount,
  }) {
    return onlineCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedAppResponse value)? banned,
    TResult? Function(ErrorAppResponse value)? error,
    TResult? Function(UserIdAppResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountAppResponse value)? onlineCount,
  }) {
    return onlineCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedAppResponse value)? banned,
    TResult Function(ErrorAppResponse value)? error,
    TResult Function(UserIdAppResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountAppResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (onlineCount != null) {
      return onlineCount(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineCountAppResponseImplToJson(
      this,
    );
  }
}

abstract class OnlineCountAppResponse implements AppResponse {
  const factory OnlineCountAppResponse() = _$OnlineCountAppResponseImpl;

  factory OnlineCountAppResponse.fromJson(Map<String, dynamic> json) =
      _$OnlineCountAppResponseImpl.fromJson;
}
