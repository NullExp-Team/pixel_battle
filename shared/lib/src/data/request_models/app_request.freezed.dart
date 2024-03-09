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
    case 'get_field_state':
      return GetFieldStateRequest.fromJson(json);
    case 'update_pixel':
      return UpdatePixelRequest.fromJson(json);
    case 'update_pixel_admin':
      return UpdatePixelAdminRequest.fromJson(json);
    case 'pixel_info_admin':
      return PixelInfoAdminRequest.fromJson(json);
    case 'ban_user_admin':
      return BanUserAdminRequest.fromJson(json);
    case 'reset_game_admin':
      return ResetGameAdminRequest.fromJson(json);
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
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
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
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) {
    return getFieldState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) {
    return getFieldState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
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
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return getFieldState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return getFieldState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
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
abstract class _$$UpdatePixelRequestImplCopyWith<$Res> {
  factory _$$UpdatePixelRequestImplCopyWith(_$UpdatePixelRequestImpl value,
          $Res Function(_$UpdatePixelRequestImpl) then) =
      __$$UpdatePixelRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdatePixelData data});

  $UpdatePixelDataCopyWith<$Res> get data;
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
              as UpdatePixelData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdatePixelDataCopyWith<$Res> get data {
    return $UpdatePixelDataCopyWith<$Res>(_value.data, (value) {
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
  final UpdatePixelData data;

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
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) {
    return updatePixel(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) {
    return updatePixel?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
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
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return updatePixel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return updatePixel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
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
  factory UpdatePixelRequest(final UpdatePixelData data) =
      _$UpdatePixelRequestImpl;

  factory UpdatePixelRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePixelRequestImpl.fromJson;

  UpdatePixelData get data;
  @JsonKey(ignore: true)
  _$$UpdatePixelRequestImplCopyWith<_$UpdatePixelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePixelAdminRequestImplCopyWith<$Res> {
  factory _$$UpdatePixelAdminRequestImplCopyWith(
          _$UpdatePixelAdminRequestImpl value,
          $Res Function(_$UpdatePixelAdminRequestImpl) then) =
      __$$UpdatePixelAdminRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdatePixelData data});

  $UpdatePixelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdatePixelAdminRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$UpdatePixelAdminRequestImpl>
    implements _$$UpdatePixelAdminRequestImplCopyWith<$Res> {
  __$$UpdatePixelAdminRequestImplCopyWithImpl(
      _$UpdatePixelAdminRequestImpl _value,
      $Res Function(_$UpdatePixelAdminRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdatePixelAdminRequestImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdatePixelData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdatePixelDataCopyWith<$Res> get data {
    return $UpdatePixelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePixelAdminRequestImpl implements UpdatePixelAdminRequest {
  _$UpdatePixelAdminRequestImpl(this.data, {final String? $type})
      : $type = $type ?? 'update_pixel_admin';

  factory _$UpdatePixelAdminRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePixelAdminRequestImplFromJson(json);

  @override
  final UpdatePixelData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.updatePixelAdmin(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePixelAdminRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePixelAdminRequestImplCopyWith<_$UpdatePixelAdminRequestImpl>
      get copyWith => __$$UpdatePixelAdminRequestImplCopyWithImpl<
          _$UpdatePixelAdminRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) {
    return updatePixelAdmin(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) {
    return updatePixelAdmin?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (updatePixelAdmin != null) {
      return updatePixelAdmin(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return updatePixelAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return updatePixelAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (updatePixelAdmin != null) {
      return updatePixelAdmin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePixelAdminRequestImplToJson(
      this,
    );
  }
}

abstract class UpdatePixelAdminRequest implements AppRequest {
  factory UpdatePixelAdminRequest(final UpdatePixelData data) =
      _$UpdatePixelAdminRequestImpl;

  factory UpdatePixelAdminRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePixelAdminRequestImpl.fromJson;

  UpdatePixelData get data;
  @JsonKey(ignore: true)
  _$$UpdatePixelAdminRequestImplCopyWith<_$UpdatePixelAdminRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PixelInfoAdminRequestImplCopyWith<$Res> {
  factory _$$PixelInfoAdminRequestImplCopyWith(
          _$PixelInfoAdminRequestImpl value,
          $Res Function(_$PixelInfoAdminRequestImpl) then) =
      __$$PixelInfoAdminRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PixelInfoAdminData data});

  $PixelInfoAdminDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PixelInfoAdminRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$PixelInfoAdminRequestImpl>
    implements _$$PixelInfoAdminRequestImplCopyWith<$Res> {
  __$$PixelInfoAdminRequestImplCopyWithImpl(_$PixelInfoAdminRequestImpl _value,
      $Res Function(_$PixelInfoAdminRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PixelInfoAdminRequestImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PixelInfoAdminData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PixelInfoAdminDataCopyWith<$Res> get data {
    return $PixelInfoAdminDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PixelInfoAdminRequestImpl implements PixelInfoAdminRequest {
  _$PixelInfoAdminRequestImpl(this.data, {final String? $type})
      : $type = $type ?? 'pixel_info_admin';

  factory _$PixelInfoAdminRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixelInfoAdminRequestImplFromJson(json);

  @override
  final PixelInfoAdminData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.pixelInfoAdmin(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixelInfoAdminRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixelInfoAdminRequestImplCopyWith<_$PixelInfoAdminRequestImpl>
      get copyWith => __$$PixelInfoAdminRequestImplCopyWithImpl<
          _$PixelInfoAdminRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) {
    return pixelInfoAdmin(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) {
    return pixelInfoAdmin?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (pixelInfoAdmin != null) {
      return pixelInfoAdmin(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return pixelInfoAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return pixelInfoAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (pixelInfoAdmin != null) {
      return pixelInfoAdmin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PixelInfoAdminRequestImplToJson(
      this,
    );
  }
}

abstract class PixelInfoAdminRequest implements AppRequest {
  factory PixelInfoAdminRequest(final PixelInfoAdminData data) =
      _$PixelInfoAdminRequestImpl;

  factory PixelInfoAdminRequest.fromJson(Map<String, dynamic> json) =
      _$PixelInfoAdminRequestImpl.fromJson;

  PixelInfoAdminData get data;
  @JsonKey(ignore: true)
  _$$PixelInfoAdminRequestImplCopyWith<_$PixelInfoAdminRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BanUserAdminRequestImplCopyWith<$Res> {
  factory _$$BanUserAdminRequestImplCopyWith(_$BanUserAdminRequestImpl value,
          $Res Function(_$BanUserAdminRequestImpl) then) =
      __$$BanUserAdminRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BanUserAdminRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$BanUserAdminRequestImpl>
    implements _$$BanUserAdminRequestImplCopyWith<$Res> {
  __$$BanUserAdminRequestImplCopyWithImpl(_$BanUserAdminRequestImpl _value,
      $Res Function(_$BanUserAdminRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BanUserAdminRequestImpl implements BanUserAdminRequest {
  _$BanUserAdminRequestImpl({final String? $type})
      : $type = $type ?? 'ban_user_admin';

  factory _$BanUserAdminRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BanUserAdminRequestImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.banUserAdmin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanUserAdminRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) {
    return banUserAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) {
    return banUserAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (banUserAdmin != null) {
      return banUserAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return banUserAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return banUserAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (banUserAdmin != null) {
      return banUserAdmin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BanUserAdminRequestImplToJson(
      this,
    );
  }
}

abstract class BanUserAdminRequest implements AppRequest {
  factory BanUserAdminRequest() = _$BanUserAdminRequestImpl;

  factory BanUserAdminRequest.fromJson(Map<String, dynamic> json) =
      _$BanUserAdminRequestImpl.fromJson;
}

/// @nodoc
abstract class _$$ResetGameAdminRequestImplCopyWith<$Res> {
  factory _$$ResetGameAdminRequestImplCopyWith(
          _$ResetGameAdminRequestImpl value,
          $Res Function(_$ResetGameAdminRequestImpl) then) =
      __$$ResetGameAdminRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetGameAdminRequestImplCopyWithImpl<$Res>
    extends _$AppRequestCopyWithImpl<$Res, _$ResetGameAdminRequestImpl>
    implements _$$ResetGameAdminRequestImplCopyWith<$Res> {
  __$$ResetGameAdminRequestImplCopyWithImpl(_$ResetGameAdminRequestImpl _value,
      $Res Function(_$ResetGameAdminRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ResetGameAdminRequestImpl implements ResetGameAdminRequest {
  _$ResetGameAdminRequestImpl({final String? $type})
      : $type = $type ?? 'reset_game_admin';

  factory _$ResetGameAdminRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetGameAdminRequestImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AppRequest.resetGameAdmin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetGameAdminRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) {
    return resetGameAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) {
    return resetGameAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (resetGameAdmin != null) {
      return resetGameAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return resetGameAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return resetGameAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult Function(DisconnectRequest value)? disconnect,
    required TResult orElse(),
  }) {
    if (resetGameAdmin != null) {
      return resetGameAdmin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetGameAdminRequestImplToJson(
      this,
    );
  }
}

abstract class ResetGameAdminRequest implements AppRequest {
  factory ResetGameAdminRequest() = _$ResetGameAdminRequestImpl;

  factory ResetGameAdminRequest.fromJson(Map<String, dynamic> json) =
      _$ResetGameAdminRequestImpl.fromJson;
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
    required TResult Function() getFieldState,
    required TResult Function(UpdatePixelData data) updatePixel,
    required TResult Function(UpdatePixelData data) updatePixelAdmin,
    required TResult Function(PixelInfoAdminData data) pixelInfoAdmin,
    required TResult Function() banUserAdmin,
    required TResult Function() resetGameAdmin,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFieldState,
    TResult? Function(UpdatePixelData data)? updatePixel,
    TResult? Function(UpdatePixelData data)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult? Function()? banUserAdmin,
    TResult? Function()? resetGameAdmin,
    TResult? Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFieldState,
    TResult Function(UpdatePixelData data)? updatePixel,
    TResult Function(UpdatePixelData data)? updatePixelAdmin,
    TResult Function(PixelInfoAdminData data)? pixelInfoAdmin,
    TResult Function()? banUserAdmin,
    TResult Function()? resetGameAdmin,
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
    required TResult Function(GetFieldStateRequest value) getFieldState,
    required TResult Function(UpdatePixelRequest value) updatePixel,
    required TResult Function(UpdatePixelAdminRequest value) updatePixelAdmin,
    required TResult Function(PixelInfoAdminRequest value) pixelInfoAdmin,
    required TResult Function(BanUserAdminRequest value) banUserAdmin,
    required TResult Function(ResetGameAdminRequest value) resetGameAdmin,
    required TResult Function(DisconnectRequest value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldStateRequest value)? getFieldState,
    TResult? Function(UpdatePixelRequest value)? updatePixel,
    TResult? Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult? Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult? Function(BanUserAdminRequest value)? banUserAdmin,
    TResult? Function(ResetGameAdminRequest value)? resetGameAdmin,
    TResult? Function(DisconnectRequest value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldStateRequest value)? getFieldState,
    TResult Function(UpdatePixelRequest value)? updatePixel,
    TResult Function(UpdatePixelAdminRequest value)? updatePixelAdmin,
    TResult Function(PixelInfoAdminRequest value)? pixelInfoAdmin,
    TResult Function(BanUserAdminRequest value)? banUserAdmin,
    TResult Function(ResetGameAdminRequest value)? resetGameAdmin,
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
