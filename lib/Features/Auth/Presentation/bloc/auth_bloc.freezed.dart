// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.LoadingEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.LoadingEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) {
    return LoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) {
    return LoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) {
    if (LoadingEvent != null) {
      return LoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) {
    return LoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) {
    return LoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) {
    if (LoadingEvent != null) {
      return LoadingEvent(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthEvent {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthErrorEventImplCopyWith<$Res> {
  factory _$$AuthErrorEventImplCopyWith(_$AuthErrorEventImpl value,
          $Res Function(_$AuthErrorEventImpl) then) =
      __$$AuthErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthErrorEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthErrorEventImpl>
    implements _$$AuthErrorEventImplCopyWith<$Res> {
  __$$AuthErrorEventImplCopyWithImpl(
      _$AuthErrorEventImpl _value, $Res Function(_$AuthErrorEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthErrorEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorEventImpl
    with DiagnosticableTreeMixin
    implements AuthErrorEvent {
  const _$AuthErrorEventImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.AuthErrorEvent(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.AuthErrorEvent'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorEventImplCopyWith<_$AuthErrorEventImpl> get copyWith =>
      __$$AuthErrorEventImplCopyWithImpl<_$AuthErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) {
    return AuthErrorEvent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) {
    return AuthErrorEvent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) {
    if (AuthErrorEvent != null) {
      return AuthErrorEvent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) {
    return AuthErrorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) {
    return AuthErrorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) {
    if (AuthErrorEvent != null) {
      return AuthErrorEvent(this);
    }
    return orElse();
  }
}

abstract class AuthErrorEvent implements AuthEvent {
  const factory AuthErrorEvent(final String message) = _$AuthErrorEventImpl;

  String get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthErrorEventImplCopyWith<_$AuthErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninImplCopyWith<$Res> {
  factory _$$SigninImplCopyWith(
          _$SigninImpl value, $Res Function(_$SigninImpl) then) =
      __$$SigninImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String Email, String Password});
}

/// @nodoc
class __$$SigninImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SigninImpl>
    implements _$$SigninImplCopyWith<$Res> {
  __$$SigninImplCopyWithImpl(
      _$SigninImpl _value, $Res Function(_$SigninImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Email = null,
    Object? Password = null,
  }) {
    return _then(_$SigninImpl(
      null == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String,
      null == Password
          ? _value.Password
          : Password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SigninImpl with DiagnosticableTreeMixin implements Signin {
  const _$SigninImpl(this.Email, this.Password);

  @override
  final String Email;
  @override
  final String Password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.SignInEvent(Email: $Email, Password: $Password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.SignInEvent'))
      ..add(DiagnosticsProperty('Email', Email))
      ..add(DiagnosticsProperty('Password', Password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninImpl &&
            (identical(other.Email, Email) || other.Email == Email) &&
            (identical(other.Password, Password) ||
                other.Password == Password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Email, Password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninImplCopyWith<_$SigninImpl> get copyWith =>
      __$$SigninImplCopyWithImpl<_$SigninImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) {
    return SignInEvent(Email, Password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) {
    return SignInEvent?.call(Email, Password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) {
    if (SignInEvent != null) {
      return SignInEvent(Email, Password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) {
    return SignInEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) {
    return SignInEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) {
    if (SignInEvent != null) {
      return SignInEvent(this);
    }
    return orElse();
  }
}

abstract class Signin implements AuthEvent {
  const factory Signin(final String Email, final String Password) =
      _$SigninImpl;

  String get Email;
  String get Password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninImplCopyWith<_$SigninImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String Email, String Password});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Email = null,
    Object? Password = null,
  }) {
    return _then(_$SignUpImpl(
      null == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String,
      null == Password
          ? _value.Password
          : Password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl with DiagnosticableTreeMixin implements SignUp {
  const _$SignUpImpl(this.Email, this.Password);

  @override
  final String Email;
  @override
  final String Password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.SignUpEvent(Email: $Email, Password: $Password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.SignUpEvent'))
      ..add(DiagnosticsProperty('Email', Email))
      ..add(DiagnosticsProperty('Password', Password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.Email, Email) || other.Email == Email) &&
            (identical(other.Password, Password) ||
                other.Password == Password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Email, Password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) {
    return SignUpEvent(Email, Password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) {
    return SignUpEvent?.call(Email, Password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) {
    if (SignUpEvent != null) {
      return SignUpEvent(Email, Password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) {
    return SignUpEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) {
    return SignUpEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) {
    if (SignUpEvent != null) {
      return SignUpEvent(this);
    }
    return orElse();
  }
}

abstract class SignUp implements AuthEvent {
  const factory SignUp(final String Email, final String Password) =
      _$SignUpImpl;

  String get Email;
  String get Password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckAuthStatusImplCopyWith<$Res> {
  factory _$$CheckAuthStatusImplCopyWith(_$CheckAuthStatusImpl value,
          $Res Function(_$CheckAuthStatusImpl) then) =
      __$$CheckAuthStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthStatusImpl>
    implements _$$CheckAuthStatusImplCopyWith<$Res> {
  __$$CheckAuthStatusImplCopyWithImpl(
      _$CheckAuthStatusImpl _value, $Res Function(_$CheckAuthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthStatusImpl
    with DiagnosticableTreeMixin
    implements CheckAuthStatus {
  const _$CheckAuthStatusImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.CheckAuthStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.CheckAuthStatus'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) {
    return CheckAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) {
    return CheckAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) {
    if (CheckAuthStatus != null) {
      return CheckAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) {
    return CheckAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) {
    return CheckAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) {
    if (CheckAuthStatus != null) {
      return CheckAuthStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthStatus implements AuthEvent {
  const factory CheckAuthStatus() = _$CheckAuthStatusImpl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutImpl with DiagnosticableTreeMixin implements LogOut {
  const _$LogOutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.LogoutEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.LogoutEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() LoadingEvent,
    required TResult Function(String message) AuthErrorEvent,
    required TResult Function(String Email, String Password) SignInEvent,
    required TResult Function(String Email, String Password) SignUpEvent,
    required TResult Function() CheckAuthStatus,
    required TResult Function() LogoutEvent,
  }) {
    return LogoutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? LoadingEvent,
    TResult? Function(String message)? AuthErrorEvent,
    TResult? Function(String Email, String Password)? SignInEvent,
    TResult? Function(String Email, String Password)? SignUpEvent,
    TResult? Function()? CheckAuthStatus,
    TResult? Function()? LogoutEvent,
  }) {
    return LogoutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? LoadingEvent,
    TResult Function(String message)? AuthErrorEvent,
    TResult Function(String Email, String Password)? SignInEvent,
    TResult Function(String Email, String Password)? SignUpEvent,
    TResult Function()? CheckAuthStatus,
    TResult Function()? LogoutEvent,
    required TResult orElse(),
  }) {
    if (LogoutEvent != null) {
      return LogoutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Loading value) LoadingEvent,
    required TResult Function(AuthErrorEvent value) AuthErrorEvent,
    required TResult Function(Signin value) SignInEvent,
    required TResult Function(SignUp value) SignUpEvent,
    required TResult Function(CheckAuthStatus value) CheckAuthStatus,
    required TResult Function(LogOut value) LogoutEvent,
  }) {
    return LogoutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Loading value)? LoadingEvent,
    TResult? Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult? Function(Signin value)? SignInEvent,
    TResult? Function(SignUp value)? SignUpEvent,
    TResult? Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult? Function(LogOut value)? LogoutEvent,
  }) {
    return LogoutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Loading value)? LoadingEvent,
    TResult Function(AuthErrorEvent value)? AuthErrorEvent,
    TResult Function(Signin value)? SignInEvent,
    TResult Function(SignUp value)? SignUpEvent,
    TResult Function(CheckAuthStatus value)? CheckAuthStatus,
    TResult Function(LogOut value)? LogoutEvent,
    required TResult orElse(),
  }) {
    if (LogoutEvent != null) {
      return LogoutEvent(this);
    }
    return orElse();
  }
}

abstract class LogOut implements AuthEvent {
  const factory LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String mesage) authError,
    required TResult Function(UserModel userentity) authenticated,
    required TResult Function(UserModel? usermode) logined,
    required TResult Function() logOuted,
    required TResult Function() signupSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String mesage)? authError,
    TResult? Function(UserModel userentity)? authenticated,
    TResult? Function(UserModel? usermode)? logined,
    TResult? Function()? logOuted,
    TResult? Function()? signupSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String mesage)? authError,
    TResult Function(UserModel userentity)? authenticated,
    TResult Function(UserModel? usermode)? logined,
    TResult Function()? logOuted,
    TResult Function()? signupSuccessState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthError value) authError,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Logined value) logined,
    required TResult Function(logOuted value) logOuted,
    required TResult Function(SignupSuccessState value) signupSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Logined value)? logined,
    TResult? Function(logOuted value)? logOuted,
    TResult? Function(SignupSuccessState value)? signupSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthError value)? authError,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Logined value)? logined,
    TResult Function(logOuted value)? logOuted,
    TResult Function(SignupSuccessState value)? signupSuccessState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String mesage) authError,
    required TResult Function(UserModel userentity) authenticated,
    required TResult Function(UserModel? usermode) logined,
    required TResult Function() logOuted,
    required TResult Function() signupSuccessState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String mesage)? authError,
    TResult? Function(UserModel userentity)? authenticated,
    TResult? Function(UserModel? usermode)? logined,
    TResult? Function()? logOuted,
    TResult? Function()? signupSuccessState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String mesage)? authError,
    TResult Function(UserModel userentity)? authenticated,
    TResult Function(UserModel? usermode)? logined,
    TResult Function()? logOuted,
    TResult Function()? signupSuccessState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthError value) authError,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Logined value) logined,
    required TResult Function(logOuted value) logOuted,
    required TResult Function(SignupSuccessState value) signupSuccessState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Logined value)? logined,
    TResult? Function(logOuted value)? logOuted,
    TResult? Function(SignupSuccessState value)? signupSuccessState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthError value)? authError,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Logined value)? logined,
    TResult Function(logOuted value)? logOuted,
    TResult Function(SignupSuccessState value)? signupSuccessState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthErrorImplCopyWith<$Res> {
  factory _$$AuthErrorImplCopyWith(
          _$AuthErrorImpl value, $Res Function(_$AuthErrorImpl) then) =
      __$$AuthErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mesage});
}

/// @nodoc
class __$$AuthErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthErrorImpl>
    implements _$$AuthErrorImplCopyWith<$Res> {
  __$$AuthErrorImplCopyWithImpl(
      _$AuthErrorImpl _value, $Res Function(_$AuthErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mesage = null,
  }) {
    return _then(_$AuthErrorImpl(
      null == mesage
          ? _value.mesage
          : mesage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorImpl with DiagnosticableTreeMixin implements AuthError {
  const _$AuthErrorImpl(this.mesage);

  @override
  final String mesage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authError(mesage: $mesage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authError'))
      ..add(DiagnosticsProperty('mesage', mesage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorImpl &&
            (identical(other.mesage, mesage) || other.mesage == mesage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mesage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      __$$AuthErrorImplCopyWithImpl<_$AuthErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String mesage) authError,
    required TResult Function(UserModel userentity) authenticated,
    required TResult Function(UserModel? usermode) logined,
    required TResult Function() logOuted,
    required TResult Function() signupSuccessState,
  }) {
    return authError(mesage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String mesage)? authError,
    TResult? Function(UserModel userentity)? authenticated,
    TResult? Function(UserModel? usermode)? logined,
    TResult? Function()? logOuted,
    TResult? Function()? signupSuccessState,
  }) {
    return authError?.call(mesage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String mesage)? authError,
    TResult Function(UserModel userentity)? authenticated,
    TResult Function(UserModel? usermode)? logined,
    TResult Function()? logOuted,
    TResult Function()? signupSuccessState,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(mesage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthError value) authError,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Logined value) logined,
    required TResult Function(logOuted value) logOuted,
    required TResult Function(SignupSuccessState value) signupSuccessState,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Logined value)? logined,
    TResult? Function(logOuted value)? logOuted,
    TResult? Function(SignupSuccessState value)? signupSuccessState,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthError value)? authError,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Logined value)? logined,
    TResult Function(logOuted value)? logOuted,
    TResult Function(SignupSuccessState value)? signupSuccessState,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthError implements AuthState {
  const factory AuthError(final String mesage) = _$AuthErrorImpl;

  String get mesage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userentity});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userentity = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == userentity
          ? _value.userentity
          : userentity // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl
    with DiagnosticableTreeMixin
    implements Authenticated {
  const _$AuthenticatedImpl(this.userentity);

  @override
  final UserModel userentity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated(userentity: $userentity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authenticated'))
      ..add(DiagnosticsProperty('userentity', userentity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.userentity, userentity) ||
                other.userentity == userentity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userentity);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String mesage) authError,
    required TResult Function(UserModel userentity) authenticated,
    required TResult Function(UserModel? usermode) logined,
    required TResult Function() logOuted,
    required TResult Function() signupSuccessState,
  }) {
    return authenticated(userentity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String mesage)? authError,
    TResult? Function(UserModel userentity)? authenticated,
    TResult? Function(UserModel? usermode)? logined,
    TResult? Function()? logOuted,
    TResult? Function()? signupSuccessState,
  }) {
    return authenticated?.call(userentity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String mesage)? authError,
    TResult Function(UserModel userentity)? authenticated,
    TResult Function(UserModel? usermode)? logined,
    TResult Function()? logOuted,
    TResult Function()? signupSuccessState,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userentity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthError value) authError,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Logined value) logined,
    required TResult Function(logOuted value) logOuted,
    required TResult Function(SignupSuccessState value) signupSuccessState,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Logined value)? logined,
    TResult? Function(logOuted value)? logOuted,
    TResult? Function(SignupSuccessState value)? signupSuccessState,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthError value)? authError,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Logined value)? logined,
    TResult Function(logOuted value)? logOuted,
    TResult Function(SignupSuccessState value)? signupSuccessState,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(final UserModel userentity) = _$AuthenticatedImpl;

  UserModel get userentity;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginedImplCopyWith<$Res> {
  factory _$$LoginedImplCopyWith(
          _$LoginedImpl value, $Res Function(_$LoginedImpl) then) =
      __$$LoginedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? usermode});
}

/// @nodoc
class __$$LoginedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginedImpl>
    implements _$$LoginedImplCopyWith<$Res> {
  __$$LoginedImplCopyWithImpl(
      _$LoginedImpl _value, $Res Function(_$LoginedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usermode = freezed,
  }) {
    return _then(_$LoginedImpl(
      freezed == usermode
          ? _value.usermode
          : usermode // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$LoginedImpl with DiagnosticableTreeMixin implements Logined {
  const _$LoginedImpl(this.usermode);

  @override
  final UserModel? usermode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.logined(usermode: $usermode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.logined'))
      ..add(DiagnosticsProperty('usermode', usermode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginedImpl &&
            (identical(other.usermode, usermode) ||
                other.usermode == usermode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usermode);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginedImplCopyWith<_$LoginedImpl> get copyWith =>
      __$$LoginedImplCopyWithImpl<_$LoginedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String mesage) authError,
    required TResult Function(UserModel userentity) authenticated,
    required TResult Function(UserModel? usermode) logined,
    required TResult Function() logOuted,
    required TResult Function() signupSuccessState,
  }) {
    return logined(usermode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String mesage)? authError,
    TResult? Function(UserModel userentity)? authenticated,
    TResult? Function(UserModel? usermode)? logined,
    TResult? Function()? logOuted,
    TResult? Function()? signupSuccessState,
  }) {
    return logined?.call(usermode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String mesage)? authError,
    TResult Function(UserModel userentity)? authenticated,
    TResult Function(UserModel? usermode)? logined,
    TResult Function()? logOuted,
    TResult Function()? signupSuccessState,
    required TResult orElse(),
  }) {
    if (logined != null) {
      return logined(usermode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthError value) authError,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Logined value) logined,
    required TResult Function(logOuted value) logOuted,
    required TResult Function(SignupSuccessState value) signupSuccessState,
  }) {
    return logined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Logined value)? logined,
    TResult? Function(logOuted value)? logOuted,
    TResult? Function(SignupSuccessState value)? signupSuccessState,
  }) {
    return logined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthError value)? authError,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Logined value)? logined,
    TResult Function(logOuted value)? logOuted,
    TResult Function(SignupSuccessState value)? signupSuccessState,
    required TResult orElse(),
  }) {
    if (logined != null) {
      return logined(this);
    }
    return orElse();
  }
}

abstract class Logined implements AuthState {
  const factory Logined(final UserModel? usermode) = _$LoginedImpl;

  UserModel? get usermode;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginedImplCopyWith<_$LoginedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$logOutedImplCopyWith<$Res> {
  factory _$$logOutedImplCopyWith(
          _$logOutedImpl value, $Res Function(_$logOutedImpl) then) =
      __$$logOutedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$logOutedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$logOutedImpl>
    implements _$$logOutedImplCopyWith<$Res> {
  __$$logOutedImplCopyWithImpl(
      _$logOutedImpl _value, $Res Function(_$logOutedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$logOutedImpl with DiagnosticableTreeMixin implements logOuted {
  const _$logOutedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.logOuted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.logOuted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$logOutedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String mesage) authError,
    required TResult Function(UserModel userentity) authenticated,
    required TResult Function(UserModel? usermode) logined,
    required TResult Function() logOuted,
    required TResult Function() signupSuccessState,
  }) {
    return logOuted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String mesage)? authError,
    TResult? Function(UserModel userentity)? authenticated,
    TResult? Function(UserModel? usermode)? logined,
    TResult? Function()? logOuted,
    TResult? Function()? signupSuccessState,
  }) {
    return logOuted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String mesage)? authError,
    TResult Function(UserModel userentity)? authenticated,
    TResult Function(UserModel? usermode)? logined,
    TResult Function()? logOuted,
    TResult Function()? signupSuccessState,
    required TResult orElse(),
  }) {
    if (logOuted != null) {
      return logOuted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthError value) authError,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Logined value) logined,
    required TResult Function(logOuted value) logOuted,
    required TResult Function(SignupSuccessState value) signupSuccessState,
  }) {
    return logOuted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Logined value)? logined,
    TResult? Function(logOuted value)? logOuted,
    TResult? Function(SignupSuccessState value)? signupSuccessState,
  }) {
    return logOuted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthError value)? authError,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Logined value)? logined,
    TResult Function(logOuted value)? logOuted,
    TResult Function(SignupSuccessState value)? signupSuccessState,
    required TResult orElse(),
  }) {
    if (logOuted != null) {
      return logOuted(this);
    }
    return orElse();
  }
}

abstract class logOuted implements AuthState {
  const factory logOuted() = _$logOutedImpl;
}

/// @nodoc
abstract class _$$SignupSuccessStateImplCopyWith<$Res> {
  factory _$$SignupSuccessStateImplCopyWith(_$SignupSuccessStateImpl value,
          $Res Function(_$SignupSuccessStateImpl) then) =
      __$$SignupSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignupSuccessStateImpl>
    implements _$$SignupSuccessStateImplCopyWith<$Res> {
  __$$SignupSuccessStateImplCopyWithImpl(_$SignupSuccessStateImpl _value,
      $Res Function(_$SignupSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupSuccessStateImpl
    with DiagnosticableTreeMixin
    implements SignupSuccessState {
  const _$SignupSuccessStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.signupSuccessState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.signupSuccessState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String mesage) authError,
    required TResult Function(UserModel userentity) authenticated,
    required TResult Function(UserModel? usermode) logined,
    required TResult Function() logOuted,
    required TResult Function() signupSuccessState,
  }) {
    return signupSuccessState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String mesage)? authError,
    TResult? Function(UserModel userentity)? authenticated,
    TResult? Function(UserModel? usermode)? logined,
    TResult? Function()? logOuted,
    TResult? Function()? signupSuccessState,
  }) {
    return signupSuccessState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String mesage)? authError,
    TResult Function(UserModel userentity)? authenticated,
    TResult Function(UserModel? usermode)? logined,
    TResult Function()? logOuted,
    TResult Function()? signupSuccessState,
    required TResult orElse(),
  }) {
    if (signupSuccessState != null) {
      return signupSuccessState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthError value) authError,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Logined value) logined,
    required TResult Function(logOuted value) logOuted,
    required TResult Function(SignupSuccessState value) signupSuccessState,
  }) {
    return signupSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Logined value)? logined,
    TResult? Function(logOuted value)? logOuted,
    TResult? Function(SignupSuccessState value)? signupSuccessState,
  }) {
    return signupSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthError value)? authError,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Logined value)? logined,
    TResult Function(logOuted value)? logOuted,
    TResult Function(SignupSuccessState value)? signupSuccessState,
    required TResult orElse(),
  }) {
    if (signupSuccessState != null) {
      return signupSuccessState(this);
    }
    return orElse();
  }
}

abstract class SignupSuccessState implements AuthState {
  const factory SignupSuccessState() = _$SignupSuccessStateImpl;
}
