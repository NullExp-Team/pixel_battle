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
    case 'success':
      return BackendSuccessResponse.fromJson(json);
    case 'error':
      return BackendErrorResponse.fromJson(json);
    case 'user_id':
      return UserIdResponse.fromJson(json);
    case 'field_state':
      return FieldStateResponse.fromJson(json);
    case 'pixel_update':
      return PixelUpdateResponse.fromJson(json);
    case 'pixel_info':
      return PixelInfoAdminResponse.fromJson(json);
    case 'online_count':
      return OnlineCountResponse.fromJson(json);
    case 'users_online':
      return UsersOnlineResponse.fromJson(json);
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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return banned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return banned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
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
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return banned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return banned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
abstract class _$$BackendSuccessResponseImplCopyWith<$Res> {
  factory _$$BackendSuccessResponseImplCopyWith(
          _$BackendSuccessResponseImpl value,
          $Res Function(_$BackendSuccessResponseImpl) then) =
      __$$BackendSuccessResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$BackendSuccessResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$BackendSuccessResponseImpl>
    implements _$$BackendSuccessResponseImplCopyWith<$Res> {
  __$$BackendSuccessResponseImplCopyWithImpl(
      _$BackendSuccessResponseImpl _value,
      $Res Function(_$BackendSuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$BackendSuccessResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackendSuccessResponseImpl implements BackendSuccessResponse {
  const _$BackendSuccessResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'success';

  factory _$BackendSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackendSuccessResponseImplFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackendSuccessResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackendSuccessResponseImplCopyWith<_$BackendSuccessResponseImpl>
      get copyWith => __$$BackendSuccessResponseImplCopyWithImpl<
          _$BackendSuccessResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackendSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class BackendSuccessResponse implements AppResponse {
  const factory BackendSuccessResponse(final String data) =
      _$BackendSuccessResponseImpl;

  factory BackendSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$BackendSuccessResponseImpl.fromJson;

  String get data;
  @JsonKey(ignore: true)
  _$$BackendSuccessResponseImplCopyWith<_$BackendSuccessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
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
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return userId(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return userId?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
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
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return userId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return userId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
  $Res call({List<int> size, List<FieldPixel> data});
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
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_$FieldStateResponseImpl(
      size: null == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
      {required final List<int> size,
      required final List<FieldPixel> data,
      final String? $type})
      : _size = size,
        _data = data,
        $type = $type ?? 'field_state';

  factory _$FieldStateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldStateResponseImplFromJson(json);

  final List<int> _size;
  @override
  List<int> get size {
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_size);
  }

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
    return 'AppResponse.fieldState(size: $size, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateResponseImpl &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_size),
      const DeepCollectionEquality().hash(_data));

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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return fieldState(size, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return fieldState?.call(size, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (fieldState != null) {
      return fieldState(size, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return fieldState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return fieldState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
      {required final List<int> size,
      required final List<FieldPixel> data}) = _$FieldStateResponseImpl;

  factory FieldStateResponse.fromJson(Map<String, dynamic> json) =
      _$FieldStateResponseImpl.fromJson;

  List<int> get size;
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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return pixelUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return pixelUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
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
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return pixelUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return pixelUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
abstract class _$$PixelInfoAdminResponseImplCopyWith<$Res> {
  factory _$$PixelInfoAdminResponseImplCopyWith(
          _$PixelInfoAdminResponseImpl value,
          $Res Function(_$PixelInfoAdminResponseImpl) then) =
      __$$PixelInfoAdminResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PixelInfoAdmin data});

  $PixelInfoAdminCopyWith<$Res> get data;
}

/// @nodoc
class __$$PixelInfoAdminResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$PixelInfoAdminResponseImpl>
    implements _$$PixelInfoAdminResponseImplCopyWith<$Res> {
  __$$PixelInfoAdminResponseImplCopyWithImpl(
      _$PixelInfoAdminResponseImpl _value,
      $Res Function(_$PixelInfoAdminResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PixelInfoAdminResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PixelInfoAdmin,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PixelInfoAdminCopyWith<$Res> get data {
    return $PixelInfoAdminCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PixelInfoAdminResponseImpl implements PixelInfoAdminResponse {
  const _$PixelInfoAdminResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'pixel_info';

  factory _$PixelInfoAdminResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelInfoAdminResponseImplFromJson(json);

  @override
  final PixelInfoAdmin data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.pixelInfo(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixelInfoAdminResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixelInfoAdminResponseImplCopyWith<_$PixelInfoAdminResponseImpl>
      get copyWith => __$$PixelInfoAdminResponseImplCopyWithImpl<
          _$PixelInfoAdminResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return pixelInfo(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return pixelInfo?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (pixelInfo != null) {
      return pixelInfo(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return pixelInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return pixelInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (pixelInfo != null) {
      return pixelInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PixelInfoAdminResponseImplToJson(
      this,
    );
  }
}

abstract class PixelInfoAdminResponse implements AppResponse {
  const factory PixelInfoAdminResponse(final PixelInfoAdmin data) =
      _$PixelInfoAdminResponseImpl;

  factory PixelInfoAdminResponse.fromJson(Map<String, dynamic> json) =
      _$PixelInfoAdminResponseImpl.fromJson;

  PixelInfoAdmin get data;
  @JsonKey(ignore: true)
  _$$PixelInfoAdminResponseImplCopyWith<_$PixelInfoAdminResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineCountResponseImplCopyWith<$Res> {
  factory _$$OnlineCountResponseImplCopyWith(_$OnlineCountResponseImpl value,
          $Res Function(_$OnlineCountResponseImpl) then) =
      __$$OnlineCountResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OnlineCountData data});

  $OnlineCountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OnlineCountResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$OnlineCountResponseImpl>
    implements _$$OnlineCountResponseImplCopyWith<$Res> {
  __$$OnlineCountResponseImplCopyWithImpl(_$OnlineCountResponseImpl _value,
      $Res Function(_$OnlineCountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OnlineCountResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OnlineCountData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OnlineCountDataCopyWith<$Res> get data {
    return $OnlineCountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlineCountResponseImpl implements OnlineCountResponse {
  const _$OnlineCountResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'online_count';

  factory _$OnlineCountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlineCountResponseImplFromJson(json);

  @override
  final OnlineCountData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.onlineCount(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineCountResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineCountResponseImplCopyWith<_$OnlineCountResponseImpl> get copyWith =>
      __$$OnlineCountResponseImplCopyWithImpl<_$OnlineCountResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return onlineCount(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return onlineCount?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (onlineCount != null) {
      return onlineCount(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return onlineCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return onlineCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
  const factory OnlineCountResponse(final OnlineCountData data) =
      _$OnlineCountResponseImpl;

  factory OnlineCountResponse.fromJson(Map<String, dynamic> json) =
      _$OnlineCountResponseImpl.fromJson;

  OnlineCountData get data;
  @JsonKey(ignore: true)
  _$$OnlineCountResponseImplCopyWith<_$OnlineCountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersOnlineResponseImplCopyWith<$Res> {
  factory _$$UsersOnlineResponseImplCopyWith(_$UsersOnlineResponseImpl value,
          $Res Function(_$UsersOnlineResponseImpl) then) =
      __$$UsersOnlineResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserInfo> data});
}

/// @nodoc
class __$$UsersOnlineResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$UsersOnlineResponseImpl>
    implements _$$UsersOnlineResponseImplCopyWith<$Res> {
  __$$UsersOnlineResponseImplCopyWithImpl(_$UsersOnlineResponseImpl _value,
      $Res Function(_$UsersOnlineResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UsersOnlineResponseImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersOnlineResponseImpl implements UsersOnlineResponse {
  const _$UsersOnlineResponseImpl(final List<UserInfo> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'users_online';

  factory _$UsersOnlineResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersOnlineResponseImplFromJson(json);

  final List<UserInfo> _data;
  @override
  List<UserInfo> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.usersOnline(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOnlineResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersOnlineResponseImplCopyWith<_$UsersOnlineResponseImpl> get copyWith =>
      __$$UsersOnlineResponseImplCopyWithImpl<_$UsersOnlineResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return usersOnline(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return usersOnline?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (usersOnline != null) {
      return usersOnline(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannedResponse value) banned,
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return usersOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return usersOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (usersOnline != null) {
      return usersOnline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersOnlineResponseImplToJson(
      this,
    );
  }
}

abstract class UsersOnlineResponse implements AppResponse {
  const factory UsersOnlineResponse(final List<UserInfo> data) =
      _$UsersOnlineResponseImpl;

  factory UsersOnlineResponse.fromJson(Map<String, dynamic> json) =
      _$UsersOnlineResponseImpl.fromJson;

  List<UserInfo> get data;
  @JsonKey(ignore: true)
  _$$UsersOnlineResponseImplCopyWith<_$UsersOnlineResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return no();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return no?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
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
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return no?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(List<int> size, List<FieldPixel> data) fieldState,
    required TResult Function(FieldPixel data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfo,
    required TResult Function(OnlineCountData data) onlineCount,
    required TResult Function(List<UserInfo> data) usersOnline,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult? Function(FieldPixel data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfo,
    TResult? Function(OnlineCountData data)? onlineCount,
    TResult? Function(List<UserInfo> data)? usersOnline,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(List<int> size, List<FieldPixel> data)? fieldState,
    TResult Function(FieldPixel data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfo,
    TResult Function(OnlineCountData data)? onlineCount,
    TResult Function(List<UserInfo> data)? usersOnline,
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
    required TResult Function(BackendSuccessResponse value) success,
    required TResult Function(BackendErrorResponse value) error,
    required TResult Function(UserIdResponse value) userId,
    required TResult Function(FieldStateResponse value) fieldState,
    required TResult Function(PixelUpdateResponse value) pixelUpdate,
    required TResult Function(PixelInfoAdminResponse value) pixelInfo,
    required TResult Function(OnlineCountResponse value) onlineCount,
    required TResult Function(UsersOnlineResponse value) usersOnline,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannedResponse value)? banned,
    TResult? Function(BackendSuccessResponse value)? success,
    TResult? Function(BackendErrorResponse value)? error,
    TResult? Function(UserIdResponse value)? userId,
    TResult? Function(FieldStateResponse value)? fieldState,
    TResult? Function(PixelUpdateResponse value)? pixelUpdate,
    TResult? Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult? Function(OnlineCountResponse value)? onlineCount,
    TResult? Function(UsersOnlineResponse value)? usersOnline,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannedResponse value)? banned,
    TResult Function(BackendSuccessResponse value)? success,
    TResult Function(BackendErrorResponse value)? error,
    TResult Function(UserIdResponse value)? userId,
    TResult Function(FieldStateResponse value)? fieldState,
    TResult Function(PixelUpdateResponse value)? pixelUpdate,
    TResult Function(PixelInfoAdminResponse value)? pixelInfo,
    TResult Function(OnlineCountResponse value)? onlineCount,
    TResult Function(UsersOnlineResponse value)? usersOnline,
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
