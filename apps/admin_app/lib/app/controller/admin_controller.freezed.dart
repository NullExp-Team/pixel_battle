// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminControllerState {
  Offset? get selectedPixelPosition => throw _privateConstructorUsedError;
  List<UserInfo> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminControllerStateCopyWith<AdminControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminControllerStateCopyWith<$Res> {
  factory $AdminControllerStateCopyWith(AdminControllerState value,
          $Res Function(AdminControllerState) then) =
      _$AdminControllerStateCopyWithImpl<$Res, AdminControllerState>;
  @useResult
  $Res call({Offset? selectedPixelPosition, List<UserInfo> users});
}

/// @nodoc
class _$AdminControllerStateCopyWithImpl<$Res,
        $Val extends AdminControllerState>
    implements $AdminControllerStateCopyWith<$Res> {
  _$AdminControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPixelPosition = freezed,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      selectedPixelPosition: freezed == selectedPixelPosition
          ? _value.selectedPixelPosition
          : selectedPixelPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminControllerStateImplCopyWith<$Res>
    implements $AdminControllerStateCopyWith<$Res> {
  factory _$$AdminControllerStateImplCopyWith(_$AdminControllerStateImpl value,
          $Res Function(_$AdminControllerStateImpl) then) =
      __$$AdminControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Offset? selectedPixelPosition, List<UserInfo> users});
}

/// @nodoc
class __$$AdminControllerStateImplCopyWithImpl<$Res>
    extends _$AdminControllerStateCopyWithImpl<$Res, _$AdminControllerStateImpl>
    implements _$$AdminControllerStateImplCopyWith<$Res> {
  __$$AdminControllerStateImplCopyWithImpl(_$AdminControllerStateImpl _value,
      $Res Function(_$AdminControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPixelPosition = freezed,
    Object? users = null,
  }) {
    return _then(_$AdminControllerStateImpl(
      selectedPixelPosition: freezed == selectedPixelPosition
          ? _value.selectedPixelPosition
          : selectedPixelPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInfo>,
    ));
  }
}

/// @nodoc

class _$AdminControllerStateImpl implements _AdminControllerState {
  _$AdminControllerStateImpl(
      {required this.selectedPixelPosition,
      required final List<UserInfo> users})
      : _users = users;

  @override
  final Offset? selectedPixelPosition;
  final List<UserInfo> _users;
  @override
  List<UserInfo> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'AdminControllerState(selectedPixelPosition: $selectedPixelPosition, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminControllerStateImpl &&
            (identical(other.selectedPixelPosition, selectedPixelPosition) ||
                other.selectedPixelPosition == selectedPixelPosition) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPixelPosition,
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminControllerStateImplCopyWith<_$AdminControllerStateImpl>
      get copyWith =>
          __$$AdminControllerStateImplCopyWithImpl<_$AdminControllerStateImpl>(
              this, _$identity);
}

abstract class _AdminControllerState implements AdminControllerState {
  factory _AdminControllerState(
      {required final Offset? selectedPixelPosition,
      required final List<UserInfo> users}) = _$AdminControllerStateImpl;

  @override
  Offset? get selectedPixelPosition;
  @override
  List<UserInfo> get users;
  @override
  @JsonKey(ignore: true)
  _$$AdminControllerStateImplCopyWith<_$AdminControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
