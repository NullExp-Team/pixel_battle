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
    case 'pixel_info_update':
      return PixelInfoAdminResponse.fromJson(json);
    case 'selection_update':
      return SelectionUpdateResponse.fromJson(json);
    case 'online_count_update':
      return OnlineCountUpdateResponse.fromJson(json);
    case 'cooldown_update':
      return CooldownUpdateResponse.fromJson(json);
    case 'users_info_update':
      return UsersInfoUpdateResponse.fromJson(json);
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
  $Res call({int cooldown, List<int> size, FieldStateData data});

  $FieldStateDataCopyWith<$Res> get data;
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
    Object? cooldown = null,
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_$FieldStateResponseImpl(
      cooldown: null == cooldown
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<int>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FieldStateData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldStateDataCopyWith<$Res> get data {
    return $FieldStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldStateResponseImpl implements FieldStateResponse {
  const _$FieldStateResponseImpl(
      {required this.cooldown,
      required final List<int> size,
      required this.data,
      final String? $type})
      : _size = size,
        $type = $type ?? 'field_state';

  factory _$FieldStateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldStateResponseImplFromJson(json);

// In seconds
  @override
  final int cooldown;
  final List<int> _size;
  @override
  List<int> get size {
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_size);
  }

  @override
  final FieldStateData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.fieldState(cooldown: $cooldown, size: $size, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateResponseImpl &&
            (identical(other.cooldown, cooldown) ||
                other.cooldown == cooldown) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cooldown, const DeepCollectionEquality().hash(_size), data);

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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return fieldState(cooldown, size, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return fieldState?.call(cooldown, size, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (fieldState != null) {
      return fieldState(cooldown, size, data);
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
      {required final int cooldown,
      required final List<int> size,
      required final FieldStateData data}) = _$FieldStateResponseImpl;

  factory FieldStateResponse.fromJson(Map<String, dynamic> json) =
      _$FieldStateResponseImpl.fromJson;

// In seconds
  int get cooldown;
  List<int> get size;
  FieldStateData get data;
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
  $Res call({PixelUpdateData data});

  $PixelUpdateDataCopyWith<$Res> get data;
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
              as PixelUpdateData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PixelUpdateDataCopyWith<$Res> get data {
    return $PixelUpdateDataCopyWith<$Res>(_value.data, (value) {
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
  final PixelUpdateData data;

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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
  const factory PixelUpdateResponse(final PixelUpdateData data) =
      _$PixelUpdateResponseImpl;

  factory PixelUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$PixelUpdateResponseImpl.fromJson;

  PixelUpdateData get data;
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
      : $type = $type ?? 'pixel_info_update';

  factory _$PixelInfoAdminResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelInfoAdminResponseImplFromJson(json);

  @override
  final PixelInfoAdmin data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.pixelInfoUpdate(data: $data)';
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return pixelInfoUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return pixelInfoUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (pixelInfoUpdate != null) {
      return pixelInfoUpdate(data);
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return pixelInfoUpdate(this);
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return pixelInfoUpdate?.call(this);
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (pixelInfoUpdate != null) {
      return pixelInfoUpdate(this);
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
abstract class _$$SelectionUpdateResponseImplCopyWith<$Res> {
  factory _$$SelectionUpdateResponseImplCopyWith(
          _$SelectionUpdateResponseImpl value,
          $Res Function(_$SelectionUpdateResponseImpl) then) =
      __$$SelectionUpdateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectionUpdateData data});

  $SelectionUpdateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SelectionUpdateResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$SelectionUpdateResponseImpl>
    implements _$$SelectionUpdateResponseImplCopyWith<$Res> {
  __$$SelectionUpdateResponseImplCopyWithImpl(
      _$SelectionUpdateResponseImpl _value,
      $Res Function(_$SelectionUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SelectionUpdateResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SelectionUpdateData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectionUpdateDataCopyWith<$Res> get data {
    return $SelectionUpdateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectionUpdateResponseImpl implements SelectionUpdateResponse {
  const _$SelectionUpdateResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'selection_update';

  factory _$SelectionUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectionUpdateResponseImplFromJson(json);

  @override
  final SelectionUpdateData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.selectionUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectionUpdateResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectionUpdateResponseImplCopyWith<_$SelectionUpdateResponseImpl>
      get copyWith => __$$SelectionUpdateResponseImplCopyWithImpl<
          _$SelectionUpdateResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return selectionUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return selectionUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (selectionUpdate != null) {
      return selectionUpdate(data);
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return selectionUpdate(this);
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return selectionUpdate?.call(this);
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (selectionUpdate != null) {
      return selectionUpdate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectionUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class SelectionUpdateResponse implements AppResponse {
  const factory SelectionUpdateResponse(final SelectionUpdateData data) =
      _$SelectionUpdateResponseImpl;

  factory SelectionUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$SelectionUpdateResponseImpl.fromJson;

  SelectionUpdateData get data;
  @JsonKey(ignore: true)
  _$$SelectionUpdateResponseImplCopyWith<_$SelectionUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineCountUpdateResponseImplCopyWith<$Res> {
  factory _$$OnlineCountUpdateResponseImplCopyWith(
          _$OnlineCountUpdateResponseImpl value,
          $Res Function(_$OnlineCountUpdateResponseImpl) then) =
      __$$OnlineCountUpdateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OnlineCountData data});

  $OnlineCountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OnlineCountUpdateResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$OnlineCountUpdateResponseImpl>
    implements _$$OnlineCountUpdateResponseImplCopyWith<$Res> {
  __$$OnlineCountUpdateResponseImplCopyWithImpl(
      _$OnlineCountUpdateResponseImpl _value,
      $Res Function(_$OnlineCountUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OnlineCountUpdateResponseImpl(
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
class _$OnlineCountUpdateResponseImpl implements OnlineCountUpdateResponse {
  const _$OnlineCountUpdateResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'online_count_update';

  factory _$OnlineCountUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlineCountUpdateResponseImplFromJson(json);

  @override
  final OnlineCountData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.onlineCountUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineCountUpdateResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineCountUpdateResponseImplCopyWith<_$OnlineCountUpdateResponseImpl>
      get copyWith => __$$OnlineCountUpdateResponseImplCopyWithImpl<
          _$OnlineCountUpdateResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return onlineCountUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return onlineCountUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (onlineCountUpdate != null) {
      return onlineCountUpdate(data);
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return onlineCountUpdate(this);
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return onlineCountUpdate?.call(this);
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (onlineCountUpdate != null) {
      return onlineCountUpdate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineCountUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class OnlineCountUpdateResponse implements AppResponse {
  const factory OnlineCountUpdateResponse(final OnlineCountData data) =
      _$OnlineCountUpdateResponseImpl;

  factory OnlineCountUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$OnlineCountUpdateResponseImpl.fromJson;

  OnlineCountData get data;
  @JsonKey(ignore: true)
  _$$OnlineCountUpdateResponseImplCopyWith<_$OnlineCountUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CooldownUpdateResponseImplCopyWith<$Res> {
  factory _$$CooldownUpdateResponseImplCopyWith(
          _$CooldownUpdateResponseImpl value,
          $Res Function(_$CooldownUpdateResponseImpl) then) =
      __$$CooldownUpdateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$CooldownUpdateResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$CooldownUpdateResponseImpl>
    implements _$$CooldownUpdateResponseImplCopyWith<$Res> {
  __$$CooldownUpdateResponseImplCopyWithImpl(
      _$CooldownUpdateResponseImpl _value,
      $Res Function(_$CooldownUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CooldownUpdateResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CooldownUpdateResponseImpl implements CooldownUpdateResponse {
  const _$CooldownUpdateResponseImpl(this.data, {final String? $type})
      : $type = $type ?? 'cooldown_update';

  factory _$CooldownUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CooldownUpdateResponseImplFromJson(json);

  @override
  final int data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.cooldownUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CooldownUpdateResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CooldownUpdateResponseImplCopyWith<_$CooldownUpdateResponseImpl>
      get copyWith => __$$CooldownUpdateResponseImplCopyWithImpl<
          _$CooldownUpdateResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return cooldownUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return cooldownUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (cooldownUpdate != null) {
      return cooldownUpdate(data);
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return cooldownUpdate(this);
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return cooldownUpdate?.call(this);
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (cooldownUpdate != null) {
      return cooldownUpdate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CooldownUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class CooldownUpdateResponse implements AppResponse {
  const factory CooldownUpdateResponse(final int data) =
      _$CooldownUpdateResponseImpl;

  factory CooldownUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$CooldownUpdateResponseImpl.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$CooldownUpdateResponseImplCopyWith<_$CooldownUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersInfoUpdateResponseImplCopyWith<$Res> {
  factory _$$UsersInfoUpdateResponseImplCopyWith(
          _$UsersInfoUpdateResponseImpl value,
          $Res Function(_$UsersInfoUpdateResponseImpl) then) =
      __$$UsersInfoUpdateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserInfo> data});
}

/// @nodoc
class __$$UsersInfoUpdateResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$UsersInfoUpdateResponseImpl>
    implements _$$UsersInfoUpdateResponseImplCopyWith<$Res> {
  __$$UsersInfoUpdateResponseImplCopyWithImpl(
      _$UsersInfoUpdateResponseImpl _value,
      $Res Function(_$UsersInfoUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UsersInfoUpdateResponseImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersInfoUpdateResponseImpl implements UsersInfoUpdateResponse {
  const _$UsersInfoUpdateResponseImpl(final List<UserInfo> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'users_info_update';

  factory _$UsersInfoUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersInfoUpdateResponseImplFromJson(json);

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
    return 'AppResponse.usersInfoUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersInfoUpdateResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersInfoUpdateResponseImplCopyWith<_$UsersInfoUpdateResponseImpl>
      get copyWith => __$$UsersInfoUpdateResponseImplCopyWithImpl<
          _$UsersInfoUpdateResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() banned,
    required TResult Function(String data) success,
    required TResult Function(String message) error,
    required TResult Function(String data) userId,
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
    required TResult Function() no,
    required TResult Function() unknown,
  }) {
    return usersInfoUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? banned,
    TResult? Function(String data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String data)? userId,
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
    TResult? Function()? no,
    TResult? Function()? unknown,
  }) {
    return usersInfoUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? banned,
    TResult Function(String data)? success,
    TResult Function(String message)? error,
    TResult Function(String data)? userId,
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
    TResult Function()? no,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (usersInfoUpdate != null) {
      return usersInfoUpdate(data);
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
    required TResult Function(NoResponse value) no,
    required TResult Function(UnknownResponse value) unknown,
  }) {
    return usersInfoUpdate(this);
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult? Function(NoResponse value)? no,
    TResult? Function(UnknownResponse value)? unknown,
  }) {
    return usersInfoUpdate?.call(this);
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
    TResult Function(NoResponse value)? no,
    TResult Function(UnknownResponse value)? unknown,
    required TResult orElse(),
  }) {
    if (usersInfoUpdate != null) {
      return usersInfoUpdate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersInfoUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class UsersInfoUpdateResponse implements AppResponse {
  const factory UsersInfoUpdateResponse(final List<UserInfo> data) =
      _$UsersInfoUpdateResponseImpl;

  factory UsersInfoUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$UsersInfoUpdateResponseImpl.fromJson;

  List<UserInfo> get data;
  @JsonKey(ignore: true)
  _$$UsersInfoUpdateResponseImplCopyWith<_$UsersInfoUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    required TResult Function(int cooldown, List<int> size, FieldStateData data)
        fieldState,
    required TResult Function(PixelUpdateData data) pixelUpdate,
    required TResult Function(PixelInfoAdmin data) pixelInfoUpdate,
    required TResult Function(SelectionUpdateData data) selectionUpdate,
    required TResult Function(OnlineCountData data) onlineCountUpdate,
    required TResult Function(int data) cooldownUpdate,
    required TResult Function(List<UserInfo> data) usersInfoUpdate,
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
    TResult? Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult? Function(PixelUpdateData data)? pixelUpdate,
    TResult? Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateData data)? selectionUpdate,
    TResult? Function(OnlineCountData data)? onlineCountUpdate,
    TResult? Function(int data)? cooldownUpdate,
    TResult? Function(List<UserInfo> data)? usersInfoUpdate,
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
    TResult Function(int cooldown, List<int> size, FieldStateData data)?
        fieldState,
    TResult Function(PixelUpdateData data)? pixelUpdate,
    TResult Function(PixelInfoAdmin data)? pixelInfoUpdate,
    TResult Function(SelectionUpdateData data)? selectionUpdate,
    TResult Function(OnlineCountData data)? onlineCountUpdate,
    TResult Function(int data)? cooldownUpdate,
    TResult Function(List<UserInfo> data)? usersInfoUpdate,
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
    required TResult Function(PixelInfoAdminResponse value) pixelInfoUpdate,
    required TResult Function(SelectionUpdateResponse value) selectionUpdate,
    required TResult Function(OnlineCountUpdateResponse value)
        onlineCountUpdate,
    required TResult Function(CooldownUpdateResponse value) cooldownUpdate,
    required TResult Function(UsersInfoUpdateResponse value) usersInfoUpdate,
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
    TResult? Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult? Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult? Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult? Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult? Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
    TResult Function(PixelInfoAdminResponse value)? pixelInfoUpdate,
    TResult Function(SelectionUpdateResponse value)? selectionUpdate,
    TResult Function(OnlineCountUpdateResponse value)? onlineCountUpdate,
    TResult Function(CooldownUpdateResponse value)? cooldownUpdate,
    TResult Function(UsersInfoUpdateResponse value)? usersInfoUpdate,
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
