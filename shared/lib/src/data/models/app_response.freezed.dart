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
      return BannedResponse.fromJson(json);
    case 'error':
      return BackendErrorResponse.fromJson(json);
    case 'user_id':
      return AuthResponse.fromJson(json);
    case 'field_state':
      return FieldStateAppResponse.fromJson(json);
    case 'online_count':
      return OnlineCountResponse.fromJson(json);

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
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(AuthResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountResponse value) onlineCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(AuthResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountResponse value)? onlineCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(AuthResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountResponse value)? onlineCount,
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
abstract class _$$BannedResponseImplCopyWith<$Res> {
  factory _$$BannedResponseImplCopyWith(_$BannedResponseImpl value,
          $Res Function(_$BannedResponseImpl) then) =
      __$$BannedResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BannedResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$BannedResponseImpl>
    implements _$$BannedResponseImplCopyWith<$Res> {
  __$$BannedResponseImplCopyWithImpl(
      _$BannedResponseImpl _value, $Res Function(_$BannedResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BannedResponseImpl implements BannedResponse {
  const _$BannedResponseImpl({final String? $type}) : $type = $type ?? 'banned';

  factory _$BannedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannedResponseImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.banned()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannedResponseImpl);
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
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(AuthResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountResponse value) onlineCount,
  }) {
    return banned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(AuthResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountResponse value)? onlineCount,
  }) {
    return banned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(AuthResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (banned != null) {
      return banned(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BannedResponseImplToJson(
      this,
    );
  }
}

abstract class BannedResponse implements AppResponse {
  const factory BannedResponse() = _$BannedResponseImpl;

  factory BannedResponse.fromJson(Map<String, dynamic> json) =
      _$BannedResponseImpl.fromJson;
}

/// @nodoc
abstract class _$$BackendErrorResponseImplCopyWith<$Res> {
  factory _$$BackendErrorResponseImplCopyWith(_$BackendErrorResponseImpl value,
          $Res Function(_$BackendErrorResponseImpl) then) =
      __$$BackendErrorResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BackendErrorResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$BackendErrorResponseImpl>
    implements _$$BackendErrorResponseImplCopyWith<$Res> {
  __$$BackendErrorResponseImplCopyWithImpl(_$BackendErrorResponseImpl _value,
      $Res Function(_$BackendErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BackendErrorResponseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackendErrorResponseImpl implements BackendErrorResponse {
  const _$BackendErrorResponseImpl(this.message, {final String? $type})
      : $type = $type ?? 'error';

  factory _$BackendErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackendErrorResponseImplFromJson(json);

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
            other is _$BackendErrorResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackendErrorResponseImplCopyWith<_$BackendErrorResponseImpl>
      get copyWith =>
          __$$BackendErrorResponseImplCopyWithImpl<_$BackendErrorResponseImpl>(
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
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(AuthResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountResponse value) onlineCount,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(AuthResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountResponse value)? onlineCount,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(AuthResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackendErrorResponseImplToJson(
      this,
    );
  }
}

abstract class BackendErrorResponse implements AppResponse {
  const factory BackendErrorResponse(final String message) =
      _$BackendErrorResponseImpl;

  factory BackendErrorResponse.fromJson(Map<String, dynamic> json) =
      _$BackendErrorResponseImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$BackendErrorResponseImplCopyWith<_$BackendErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AuthResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl implements AuthResponse {
  const _$AuthResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'user_id';

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

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
            other is _$AuthResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

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
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(AuthResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountResponse value) onlineCount,
  }) {
    return userId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(AuthResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountResponse value)? onlineCount,
  }) {
    return userId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(AuthResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (userId != null) {
      return userId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class AuthResponse implements AppResponse {
  const factory AuthResponse(final int data) = _$AuthResponseImpl;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
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
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(AuthResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountResponse value) onlineCount,
  }) {
    return fieldState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(AuthResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountResponse value)? onlineCount,
  }) {
    return fieldState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(AuthResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountResponse value)? onlineCount,
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
abstract class _$$OnlineCountResponseImplCopyWith<$Res> {
  factory _$$OnlineCountResponseImplCopyWith(_$OnlineCountResponseImpl value,
          $Res Function(_$OnlineCountResponseImpl) then) =
      __$$OnlineCountResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnlineCountResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$OnlineCountResponseImpl>
    implements _$$OnlineCountResponseImplCopyWith<$Res> {
  __$$OnlineCountResponseImplCopyWithImpl(_$OnlineCountResponseImpl _value,
      $Res Function(_$OnlineCountResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnlineCountResponseImpl implements OnlineCountResponse {
  const _$OnlineCountResponseImpl({final String? $type})
      : $type = $type ?? 'online_count';

  factory _$OnlineCountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlineCountResponseImplFromJson(json);

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
            other is _$OnlineCountResponseImpl);
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
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(AuthResponse value) userId,
    required TResult Function(FieldStateAppResponse value) fieldState,
    required TResult Function(OnlineCountResponse value) onlineCount,
  }) {
    return onlineCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(AuthResponse value)? userId,
    TResult? Function(FieldStateAppResponse value)? fieldState,
    TResult? Function(OnlineCountResponse value)? onlineCount,
  }) {
    return onlineCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(AuthResponse value)? userId,
    TResult Function(FieldStateAppResponse value)? fieldState,
    TResult Function(OnlineCountResponse value)? onlineCount,
    required TResult orElse(),
  }) {
    if (onlineCount != null) {
      return onlineCount(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineCountResponseImplToJson(
      this,
    );
  }
}

abstract class OnlineCountResponse implements AppResponse {
  const factory OnlineCountResponse() = _$OnlineCountResponseImpl;

  factory OnlineCountResponse.fromJson(Map<String, dynamic> json) =
      _$OnlineCountResponseImpl.fromJson;
}
