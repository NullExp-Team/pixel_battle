// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppRequest _$AppRequestFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'auth':
      return AuthRequest.fromJson(json);
    case 'update_pixel':
      return UpdatePixelRequest.fromJson(json);
    case 'get_field_state':
      return GetFieldStateRequest.fromJson(json);
    case 'disconnect':
      return DisconnectRequest.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'AppRequest', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$AppRequest {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String nickname, @JsonKey(name: 'user_id') int? userId)
        auth,
    required TResult Function(UpdatePixel data) updatePixel,
    required TResult Function() getFieldState,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult? Function(UpdatePixel data)? updatePixel,
    TResult? Function()? getFieldState,
    TResult? Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult Function(UpdatePixel data)? updatePixel,
    TResult Function()? getFieldState,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) auth,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(DisconnectRequest value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest value)? auth,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? auth,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRequestCopyWith<$Res> {
  factory $AppRequestCopyWith(
          AppRequest value, $Res Function(AppRequest) then) =
      _$AppRequestCopyWithImpl<$Res, AppRequest>;
}

/// @nodoc
class _$AppRequestCopyWithImpl<$Res, $Val extends AppRequest>
    implements $AppRequestCopyWith<$Res> {
  _$AppRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthRequestImplCopyWith<$Res> {
  factory _$$AuthRequestImplCopyWith(
          _$AuthRequestImpl value, $Res Function(_$AuthRequestImpl) then) =
      __$$AuthRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname, @JsonKey(name: 'user_id') int? userId});
}

/// @nodoc
class __$$AuthRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$AuthRequestImpl>
    implements _$$AuthRequestImplCopyWith<$Res> {
  __$$AuthRequestImplCopyWithImpl(
      _$AuthRequestImpl _value, $Res Function(_$AuthRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? userId = freezed,
  }) {
    return _then(_$AuthRequestImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRequestImpl implements AuthRequest {
  _$AuthRequestImpl(
      {required this.nickname,
      @JsonKey(name: 'user_id') this.userId,
      final String? $type})
      : $type = $type ?? 'auth';

  factory _$AuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRequestImplFromJson(json);

  @override
  final String nickname;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.auth(nickname: $nickname, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRequestImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRequestImplCopyWith<_$AuthRequestImpl> get copyWith =>
      __$$AuthRequestImplCopyWithImpl<_$AuthRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String nickname, @JsonKey(name: 'user_id') int? userId)
        auth,
    required TResult Function(UpdatePixel data) updatePixel,
    required TResult Function() getFieldState,
    required TResult Function() disconnect,
  }) {
    return auth(nickname, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult? Function(UpdatePixel data)? updatePixel,
    TResult? Function()? getFieldState,
    TResult? Function()? disconnect,
  }) {
    return auth?.call(nickname, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult Function(UpdatePixel data)? updatePixel,
    TResult Function()? getFieldState,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(nickname, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) auth,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest value)? auth,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? auth,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRequestImplToJson(
      this,
    );
  }
}

abstract class AuthRequest implements AppRequest {
  factory AuthRequest(
      {required final String nickname,
      @JsonKey(name: 'user_id') final int? userId}) = _$AuthRequestImpl;

  factory AuthRequest.fromJson(Map<String, dynamic> json) =
      _$AuthRequestImpl.fromJson;

  String get nickname;
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(ignore: true)
  _$$AuthRequestImplCopyWith<_$AuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePixelRequestImplCopyWith<$Res> {
  factory _$$UpdatePixelRequestImplCopyWith(_$UpdatePixelRequestImpl value,
          $Res Function(_$UpdatePixelRequestImpl) then) =
      __$$UpdatePixelRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdatePixel data});

  $UpdatePixelCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdatePixelRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$UpdatePixelRequestImpl>
    implements _$$UpdatePixelRequestImplCopyWith<$Res> {
  __$$UpdatePixelRequestImplCopyWithImpl(_$UpdatePixelRequestImpl _value,
      $Res Function(_$UpdatePixelRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdatePixelRequestImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdatePixel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdatePixelCopyWith<$Res> get data {
    return $UpdatePixelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePixelRequestImpl implements UpdatePixelRequest {
  _$UpdatePixelRequestImpl(this.data, {final String? $type})
      : $type = $type ?? 'update_pixel';

  factory _$UpdatePixelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePixelRequestImplFromJson(json);

  @override
  final UpdatePixel data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.updatePixel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePixelRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePixelRequestImplCopyWith<_$UpdatePixelRequestImpl> get copyWith =>
      __$$UpdatePixelRequestImplCopyWithImpl<_$UpdatePixelRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String nickname, @JsonKey(name: 'user_id') int? userId)
        auth,
    required TResult Function(UpdatePixel data) updatePixel,
    required TResult Function() getFieldState,
    required TResult Function() disconnect,
  }) {
    return updatePixel(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult? Function(UpdatePixel data)? updatePixel,
    TResult? Function()? getFieldState,
    TResult? Function()? disconnect,
  }) {
    return updatePixel?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult Function(UpdatePixel data)? updatePixel,
    TResult Function()? getFieldState,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (updatePixel != null) {
      return updatePixel(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) auth,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return updatePixel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest value)? auth,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return updatePixel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? auth,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (updatePixel != null) {
      return updatePixel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePixelRequestImplToJson(
      this,
    );
  }
}

abstract class UpdatePixelRequest implements AppRequest {
  factory UpdatePixelRequest(final UpdatePixel data) = _$UpdatePixelRequestImpl;

  factory UpdatePixelRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePixelRequestImpl.fromJson;

  UpdatePixel get data;
  @JsonKey(ignore: true)
  _$$UpdatePixelRequestImplCopyWith<_$UpdatePixelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFieldStateRequestImplCopyWith<$Res> {
  factory _$$GetFieldStateRequestImplCopyWith(_$GetFieldStateRequestImpl value,
          $Res Function(_$GetFieldStateRequestImpl) then) =
      __$$GetFieldStateRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFieldStateRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$GetFieldStateRequestImpl>
    implements _$$GetFieldStateRequestImplCopyWith<$Res> {
  __$$GetFieldStateRequestImplCopyWithImpl(_$GetFieldStateRequestImpl _value,
      $Res Function(_$GetFieldStateRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$GetFieldStateRequestImpl implements GetFieldStateRequest {
  _$GetFieldStateRequestImpl({final String? $type})
      : $type = $type ?? 'get_field_state';

  factory _$GetFieldStateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFieldStateRequestImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.getFieldState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFieldStateRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String nickname, @JsonKey(name: 'user_id') int? userId)
        auth,
    required TResult Function(UpdatePixel data) updatePixel,
    required TResult Function() getFieldState,
    required TResult Function() disconnect,
  }) {
    return getFieldState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult? Function(UpdatePixel data)? updatePixel,
    TResult? Function()? getFieldState,
    TResult? Function()? disconnect,
  }) {
    return getFieldState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult Function(UpdatePixel data)? updatePixel,
    TResult Function()? getFieldState,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (getFieldState != null) {
      return getFieldState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) auth,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return getFieldState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest value)? auth,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return getFieldState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? auth,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (getFieldState != null) {
      return getFieldState(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFieldStateRequestImplToJson(
      this,
    );
  }
}

abstract class GetFieldStateRequest implements AppRequest {
  factory GetFieldStateRequest() = _$GetFieldStateRequestImpl;

  factory GetFieldStateRequest.fromJson(Map<String, dynamic> json) =
      _$GetFieldStateRequestImpl.fromJson;
}

/// @nodoc
abstract class _$$DisconnectRequestImplCopyWith<$Res> {
  factory _$$DisconnectRequestImplCopyWith(_$DisconnectRequestImpl value,
          $Res Function(_$DisconnectRequestImpl) then) =
      __$$DisconnectRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$DisconnectRequestImpl>
    implements _$$DisconnectRequestImplCopyWith<$Res> {
  __$$DisconnectRequestImplCopyWithImpl(_$DisconnectRequestImpl _value,
      $Res Function(_$DisconnectRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DisconnectRequestImpl implements DisconnectRequest {
  _$DisconnectRequestImpl({final String? $type})
      : $type = $type ?? 'disconnect';

  factory _$DisconnectRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisconnectRequestImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String nickname, @JsonKey(name: 'user_id') int? userId)
        auth,
    required TResult Function(UpdatePixel data) updatePixel,
    required TResult Function() getFieldState,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult? Function(UpdatePixel data)? updatePixel,
    TResult? Function()? getFieldState,
    TResult? Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, @JsonKey(name: 'user_id') int? userId)?
        auth,
    TResult Function(UpdatePixel data)? updatePixel,
    TResult Function()? getFieldState,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) auth,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest value)? auth,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? auth,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DisconnectRequestImplToJson(
      this,
    );
  }
}

abstract class DisconnectRequest implements AppRequest {
  factory DisconnectRequest() = _$DisconnectRequestImpl;

  factory DisconnectRequest.fromJson(Map<String, dynamic> json) =
      _$DisconnectRequestImpl.fromJson;
}
