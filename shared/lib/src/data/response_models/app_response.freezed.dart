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
      return UserIdResponse.fromJson(json);
    case 'field_state':
      return FieldStateResponse.fromJson(json);
    case 'pixel_update':
      return PixelUpdateResponse.fromJson(json);
    case 'online_count':
      return OnlineCountResponse.fromJson(json);
    case 'no':
      return NoResponse.fromJson(json);

    default:
      return UnknownResponse.fromJson(json);
  }
}

/// @nodoc
mixin _$AppResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
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
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return banned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return banned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
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
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return banned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return banned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
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
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
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
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
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

abstract class BackendErrorResponse implements AppResponse, Exception {
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
abstract class _$$UserIdResponseImplCopyWith<$Res> {
  factory _$$UserIdResponseImplCopyWith(_$UserIdResponseImpl value,
          $Res Function(_$UserIdResponseImpl) then) =
      __$$UserIdResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$UserIdResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$UserIdResponseImpl>
    implements _$$UserIdResponseImplCopyWith<$Res> {
  __$$UserIdResponseImplCopyWithImpl(
      _$UserIdResponseImpl _value, $Res Function(_$UserIdResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserIdResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdResponseImpl implements UserIdResponse {
  const _$UserIdResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'user_id';

  factory _$UserIdResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdResponseImplFromJson(json);

  @override
  final String data;

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
            other is _$UserIdResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdResponseImplCopyWith<_$UserIdResponseImpl> get copyWith =>
      __$$UserIdResponseImplCopyWithImpl<_$UserIdResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return userId(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return userId?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
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
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return userId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return userId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (userId != null) {
      return userId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdResponseImplToJson(
      this,
    );
  }
}

abstract class UserIdResponse implements AppResponse {
  const factory UserIdResponse(final String data) = _$UserIdResponseImpl;

  factory UserIdResponse.fromJson(Map<String, dynamic> json) =
      _$UserIdResponseImpl.fromJson;

  String get data;
  @JsonKey(ignore: true)
  _$$UserIdResponseImplCopyWith<_$UserIdResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldStateResponseImplCopyWith<$Res> {
  factory _$$FieldStateResponseImplCopyWith(_$FieldStateResponseImpl value,
          $Res Function(_$FieldStateResponseImpl) then) =
      __$$FieldStateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int width, int height, List<FieldPixel> data});
}

/// @nodoc
class __$$FieldStateResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$FieldStateResponseImpl>
    implements _$$FieldStateResponseImplCopyWith<$Res> {
  __$$FieldStateResponseImplCopyWithImpl(_$FieldStateResponseImpl _value,
      $Res Function(_$FieldStateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? data = null,
  }) {
    return _then(_$FieldStateResponseImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FieldPixel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldStateResponseImpl implements FieldStateResponse {
  const _$FieldStateResponseImpl(
      {required this.width,
      required this.height,
      required final List<FieldPixel> data,
      final String? $type})
      : _data = data,
        $type = $type ?? 'field_state';

  factory _$FieldStateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldStateResponseImplFromJson(json);

  @override
  final int width;
  @override
  final int height;
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
    return 'AppResponse.fieldState(width: $width, height: $height, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateResponseImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, width, height, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldStateResponseImplCopyWith<_$FieldStateResponseImpl> get copyWith =>
      __$$FieldStateResponseImplCopyWithImpl<_$FieldStateResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return fieldState(width, height, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return fieldState?.call(width, height, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (fieldState != null) {
      return fieldState(width, height, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return fieldState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return fieldState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (fieldState != null) {
      return fieldState(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldStateResponseImplToJson(
      this,
    );
  }
}

abstract class FieldStateResponse implements AppResponse {
  const factory FieldStateResponse(
      {required final int width,
      required final int height,
      required final List<FieldPixel> data}) = _$FieldStateResponseImpl;

  factory FieldStateResponse.fromJson(Map<String, dynamic> json) =
      _$FieldStateResponseImpl.fromJson;

  int get width;
  int get height;
  List<FieldPixel> get data;
  @JsonKey(ignore: true)
  _$$FieldStateResponseImplCopyWith<_$FieldStateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PixelUpdateResponseImplCopyWith<$Res> {
  factory _$$PixelUpdateResponseImplCopyWith(_$PixelUpdateResponseImpl value,
          $Res Function(_$PixelUpdateResponseImpl) then) =
      __$$PixelUpdateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FieldPixel data});

  $FieldPixelCopyWith<$Res> get data;
}

/// @nodoc
class __$$PixelUpdateResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$PixelUpdateResponseImpl>
    implements _$$PixelUpdateResponseImplCopyWith<$Res> {
  __$$PixelUpdateResponseImplCopyWithImpl(_$PixelUpdateResponseImpl _value,
      $Res Function(_$PixelUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PixelUpdateResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FieldPixel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldPixelCopyWith<$Res> get data {
    return $FieldPixelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PixelUpdateResponseImpl implements PixelUpdateResponse {
  const _$PixelUpdateResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'pixel_update';

  factory _$PixelUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelUpdateResponseImplFromJson(json);

  @override
  final FieldPixel data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.pixelUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixelUpdateResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixelUpdateResponseImplCopyWith<_$PixelUpdateResponseImpl> get copyWith =>
      __$$PixelUpdateResponseImplCopyWithImpl<_$PixelUpdateResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return pixelUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return pixelUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (pixelUpdate != null) {
      return pixelUpdate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return pixelUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return pixelUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (pixelUpdate != null) {
      return pixelUpdate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PixelUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class PixelUpdateResponse implements AppResponse {
  const factory PixelUpdateResponse(final FieldPixel data) =
      _$PixelUpdateResponseImpl;

  factory PixelUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$PixelUpdateResponseImpl.fromJson;

  FieldPixel get data;
  @JsonKey(ignore: true)
  _$$PixelUpdateResponseImplCopyWith<_$PixelUpdateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return onlineCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return onlineCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
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
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return onlineCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return onlineCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
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

/// @nodoc
abstract class _$$NoResponseImplCopyWith<$Res> {
  factory _$$NoResponseImplCopyWith(
          _$NoResponseImpl value, $Res Function(_$NoResponseImpl) then) =
      __$$NoResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$NoResponseImpl>
    implements _$$NoResponseImplCopyWith<$Res> {
  __$$NoResponseImplCopyWithImpl(
      _$NoResponseImpl _value, $Res Function(_$NoResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NoResponseImpl implements NoResponse {
  const _$NoResponseImpl({final String? $type}) : $type = $type ?? 'no';

  factory _$NoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoResponseImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.no()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoResponseImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return no();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return no?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return no?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoResponseImplToJson(
      this,
    );
  }
}

abstract class NoResponse implements AppResponse {
  const factory NoResponse() = _$NoResponseImpl;

  factory NoResponse.fromJson(Map<String, dynamic> json) =
      _$NoResponseImpl.fromJson;
}

/// @nodoc
abstract class _$$UnknownResponseImplCopyWith<$Res> {
  factory _$$UnknownResponseImplCopyWith(_$UnknownResponseImpl value,
          $Res Function(_$UnknownResponseImpl) then) =
      __$$UnknownResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$UnknownResponseImpl>
    implements _$$UnknownResponseImplCopyWith<$Res> {
  __$$UnknownResponseImplCopyWithImpl(
      _$UnknownResponseImpl _value, $Res Function(_$UnknownResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnknownResponseImpl implements UnknownResponse {
  const _$UnknownResponseImpl({final String? $type})
      : $type = $type ?? 'unknown';

  factory _$UnknownResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownResponseImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownResponseImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int width, int height, List<FieldPixel> data)
        fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function() onlineCount,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function()? onlineCount,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int width, int height, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function()? onlineCount,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownResponseImplToJson(
      this,
    );
  }
}

abstract class UnknownResponse implements AppResponse {
  const factory UnknownResponse() = _$UnknownResponseImpl;

  factory UnknownResponse.fromJson(Map<String, dynamic> json) =
      _$UnknownResponseImpl.fromJson;
}
