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
      return AuthAppRequest.fromJson(json);
    case 'update_pixel':
      return UpdatePixelAppRequest.fromJson(json);
    case 'get_field_state':
      return GetFieldStateAppRequest.fromJson(json);
    case 'disconnect':
      return DisconnectAppRequest.fromJson(json);

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
    required TResult Function(AuthAppRequest value) auth,
    required TResult Function(UpdatePixelAppRequest value) updatePixel,
    required TResult Function(GetFieldStateAppRequest value) getFieldState,
    required TResult Function(DisconnectAppRequest value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAppRequest value)? auth,
    TResult? Function(UpdatePixelAppRequest value)? updatePixel,
    TResult? Function(GetFieldStateAppRequest value)? getFieldState,
    TResult? Function(DisconnectAppRequest value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAppRequest value)? auth,
    TResult Function(UpdatePixelAppRequest value)? updatePixel,
    TResult Function(GetFieldStateAppRequest value)? getFieldState,
    TResult Function(DisconnectAppRequest value)? disconnect,
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
abstract class _$$AuthAppRequestImplCopyWith<$Res> {
  factory _$$AuthAppRequestImplCopyWith(_$AuthAppRequestImpl value,
          $Res Function(_$AuthAppRequestImpl) then) =
      __$$AuthAppRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname, @JsonKey(name: 'user_id') int? userId});
}

/// @nodoc
class __$$AuthAppRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$AuthAppRequestImpl>
    implements _$$AuthAppRequestImplCopyWith<$Res> {
  __$$AuthAppRequestImplCopyWithImpl(
      _$AuthAppRequestImpl _value, $Res Function(_$AuthAppRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? userId = freezed,
  }) {
    return _then(_$AuthAppRequestImpl(
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
class _$AuthAppRequestImpl implements AuthAppRequest {
  _$AuthAppRequestImpl(
      {required this.nickname,
      @JsonKey(name: 'user_id') this.userId,
      final String? $type})
      : $type = $type ?? 'auth';

  factory _$AuthAppRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthAppRequestImplFromJson(json);

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
            other is _$AuthAppRequestImpl &&
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
  _$$AuthAppRequestImplCopyWith<_$AuthAppRequestImpl> get copyWith =>
      __$$AuthAppRequestImplCopyWithImpl<_$AuthAppRequestImpl>(
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
    required TResult Function(AuthAppRequest value) auth,
    required TResult Function(UpdatePixelAppRequest value) updatePixel,
    required TResult Function(GetFieldStateAppRequest value) getFieldState,
    required TResult Function(DisconnectAppRequest value) disconnect,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAppRequest value)? auth,
    TResult? Function(UpdatePixelAppRequest value)? updatePixel,
    TResult? Function(GetFieldStateAppRequest value)? getFieldState,
    TResult? Function(DisconnectAppRequest value)? disconnect,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAppRequest value)? auth,
    TResult Function(UpdatePixelAppRequest value)? updatePixel,
    TResult Function(GetFieldStateAppRequest value)? getFieldState,
    TResult Function(DisconnectAppRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthAppRequestImplToJson(
      this,
    );
  }
}

abstract class AuthAppRequest implements AppRequest {
  factory AuthAppRequest(
      {required final String nickname,
      @JsonKey(name: 'user_id') final int? userId}) = _$AuthAppRequestImpl;

  factory AuthAppRequest.fromJson(Map<String, dynamic> json) =
      _$AuthAppRequestImpl.fromJson;

  String get nickname;
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(ignore: true)
  _$$AuthAppRequestImplCopyWith<_$AuthAppRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePixelAppRequestImplCopyWith<$Res> {
  factory _$$UpdatePixelAppRequestImplCopyWith(
          _$UpdatePixelAppRequestImpl value,
          $Res Function(_$UpdatePixelAppRequestImpl) then) =
      __$$UpdatePixelAppRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdatePixel data});

  $UpdatePixelCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdatePixelAppRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$UpdatePixelAppRequestImpl>
    implements _$$UpdatePixelAppRequestImplCopyWith<$Res> {
  __$$UpdatePixelAppRequestImplCopyWithImpl(_$UpdatePixelAppRequestImpl _value,
      $Res Function(_$UpdatePixelAppRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdatePixelAppRequestImpl(
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
class _$UpdatePixelAppRequestImpl implements UpdatePixelAppRequest {
  _$UpdatePixelAppRequestImpl(this.data, {final String? $type})
      : $type = $type ?? 'update_pixel';

  factory _$UpdatePixelAppRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePixelAppRequestImplFromJson(json);

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
            other is _$UpdatePixelAppRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePixelAppRequestImplCopyWith<_$UpdatePixelAppRequestImpl>
      get copyWith => __$$UpdatePixelAppRequestImplCopyWithImpl<
          _$UpdatePixelAppRequestImpl>(this, _$identity);

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
    required TResult Function(AuthAppRequest value) auth,
    required TResult Function(UpdatePixelAppRequest value) updatePixel,
    required TResult Function(GetFieldStateAppRequest value) getFieldState,
    required TResult Function(DisconnectAppRequest value) disconnect,
  }) {
    return updatePixel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAppRequest value)? auth,
    TResult? Function(UpdatePixelAppRequest value)? updatePixel,
    TResult? Function(GetFieldStateAppRequest value)? getFieldState,
    TResult? Function(DisconnectAppRequest value)? disconnect,
  }) {
    return updatePixel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAppRequest value)? auth,
    TResult Function(UpdatePixelAppRequest value)? updatePixel,
    TResult Function(GetFieldStateAppRequest value)? getFieldState,
    TResult Function(DisconnectAppRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (updatePixel != null) {
      return updatePixel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePixelAppRequestImplToJson(
      this,
    );
  }
}

abstract class UpdatePixelAppRequest implements AppRequest {
  factory UpdatePixelAppRequest(final UpdatePixel data) =
      _$UpdatePixelAppRequestImpl;

  factory UpdatePixelAppRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePixelAppRequestImpl.fromJson;

  UpdatePixel get data;
  @JsonKey(ignore: true)
  _$$UpdatePixelAppRequestImplCopyWith<_$UpdatePixelAppRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFieldStateAppRequestImplCopyWith<$Res> {
  factory _$$GetFieldStateAppRequestImplCopyWith(
          _$GetFieldStateAppRequestImpl value,
          $Res Function(_$GetFieldStateAppRequestImpl) then) =
      __$$GetFieldStateAppRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFieldStateAppRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$GetFieldStateAppRequestImpl>
    implements _$$GetFieldStateAppRequestImplCopyWith<$Res> {
  __$$GetFieldStateAppRequestImplCopyWithImpl(
      _$GetFieldStateAppRequestImpl _value,
      $Res Function(_$GetFieldStateAppRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$GetFieldStateAppRequestImpl implements GetFieldStateAppRequest {
  _$GetFieldStateAppRequestImpl({final String? $type})
      : $type = $type ?? 'get_field_state';

  factory _$GetFieldStateAppRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFieldStateAppRequestImplFromJson(json);

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
            other is _$GetFieldStateAppRequestImpl);
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
    required TResult Function(AuthAppRequest value) auth,
    required TResult Function(UpdatePixelAppRequest value) updatePixel,
    required TResult Function(GetFieldStateAppRequest value) getFieldState,
    required TResult Function(DisconnectAppRequest value) disconnect,
  }) {
    return getFieldState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAppRequest value)? auth,
    TResult? Function(UpdatePixelAppRequest value)? updatePixel,
    TResult? Function(GetFieldStateAppRequest value)? getFieldState,
    TResult? Function(DisconnectAppRequest value)? disconnect,
  }) {
    return getFieldState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAppRequest value)? auth,
    TResult Function(UpdatePixelAppRequest value)? updatePixel,
    TResult Function(GetFieldStateAppRequest value)? getFieldState,
    TResult Function(DisconnectAppRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (getFieldState != null) {
      return getFieldState(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFieldStateAppRequestImplToJson(
      this,
    );
  }
}

abstract class GetFieldStateAppRequest implements AppRequest {
  factory GetFieldStateAppRequest() = _$GetFieldStateAppRequestImpl;

  factory GetFieldStateAppRequest.fromJson(Map<String, dynamic> json) =
      _$GetFieldStateAppRequestImpl.fromJson;
}

/// @nodoc
abstract class _$$DisconnectAppRequestImplCopyWith<$Res> {
  factory _$$DisconnectAppRequestImplCopyWith(_$DisconnectAppRequestImpl value,
          $Res Function(_$DisconnectAppRequestImpl) then) =
      __$$DisconnectAppRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectAppRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$DisconnectAppRequestImpl>
    implements _$$DisconnectAppRequestImplCopyWith<$Res> {
  __$$DisconnectAppRequestImplCopyWithImpl(_$DisconnectAppRequestImpl _value,
      $Res Function(_$DisconnectAppRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DisconnectAppRequestImpl implements DisconnectAppRequest {
  _$DisconnectAppRequestImpl({final String? $type})
      : $type = $type ?? 'disconnect';

  factory _$DisconnectAppRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisconnectAppRequestImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisconnectAppRequestImpl);
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
    required TResult Function(AuthAppRequest value) auth,
    required TResult Function(UpdatePixelAppRequest value) updatePixel,
    required TResult Function(GetFieldStateAppRequest value) getFieldState,
    required TResult Function(DisconnectAppRequest value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAppRequest value)? auth,
    TResult? Function(UpdatePixelAppRequest value)? updatePixel,
    TResult? Function(GetFieldStateAppRequest value)? getFieldState,
    TResult? Function(DisconnectAppRequest value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAppRequest value)? auth,
    TResult Function(UpdatePixelAppRequest value)? updatePixel,
    TResult Function(GetFieldStateAppRequest value)? getFieldState,
    TResult Function(DisconnectAppRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DisconnectAppRequestImplToJson(
      this,
    );
  }
}

abstract class DisconnectAppRequest implements AppRequest {
  factory DisconnectAppRequest() = _$DisconnectAppRequestImpl;

  factory DisconnectAppRequest.fromJson(Map<String, dynamic> json) =
      _$DisconnectAppRequestImpl.fromJson;
}
