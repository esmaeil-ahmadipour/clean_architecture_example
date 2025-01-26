// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestParams params) updateResponse,
    required TResult Function() resetBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestParams params)? updateResponse,
    TResult? Function()? resetBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestParams params)? updateResponse,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UpdateResponse value) updateResponse,
    required TResult Function(_ResetBloc value) resetBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UpdateResponse value)? updateResponse,
    TResult? Function(_ResetBloc value)? resetBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UpdateResponse value)? updateResponse,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestEventCopyWith<$Res> {
  factory $LoginRequestEventCopyWith(
          LoginRequestEvent value, $Res Function(LoginRequestEvent) then) =
      _$LoginRequestEventCopyWithImpl<$Res, LoginRequestEvent>;
}

/// @nodoc
class _$LoginRequestEventCopyWithImpl<$Res, $Val extends LoginRequestEvent>
    implements $LoginRequestEventCopyWith<$Res> {
  _$LoginRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$$UpdateResponseImplCopyWith<$Res> {
  factory _$$$UpdateResponseImplCopyWith(_$$UpdateResponseImpl value,
          $Res Function(_$$UpdateResponseImpl) then) =
      __$$$UpdateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestParams params});

  $LoginRequestParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$$UpdateResponseImplCopyWithImpl<$Res>
    extends _$LoginRequestEventCopyWithImpl<$Res, _$$UpdateResponseImpl>
    implements _$$$UpdateResponseImplCopyWith<$Res> {
  __$$$UpdateResponseImplCopyWithImpl(
      _$$UpdateResponseImpl _value, $Res Function(_$$UpdateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$$UpdateResponseImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LoginRequestParams,
    ));
  }

  /// Create a copy of LoginRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginRequestParamsCopyWith<$Res> get params {
    return $LoginRequestParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$$UpdateResponseImpl implements _$UpdateResponse {
  const _$$UpdateResponseImpl({required this.params});

  @override
  final LoginRequestParams params;

  @override
  String toString() {
    return 'LoginRequestEvent.updateResponse(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UpdateResponseImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of LoginRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$$UpdateResponseImplCopyWith<_$$UpdateResponseImpl> get copyWith =>
      __$$$UpdateResponseImplCopyWithImpl<_$$UpdateResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestParams params) updateResponse,
    required TResult Function() resetBloc,
  }) {
    return updateResponse(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestParams params)? updateResponse,
    TResult? Function()? resetBloc,
  }) {
    return updateResponse?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestParams params)? updateResponse,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (updateResponse != null) {
      return updateResponse(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UpdateResponse value) updateResponse,
    required TResult Function(_ResetBloc value) resetBloc,
  }) {
    return updateResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UpdateResponse value)? updateResponse,
    TResult? Function(_ResetBloc value)? resetBloc,
  }) {
    return updateResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UpdateResponse value)? updateResponse,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (updateResponse != null) {
      return updateResponse(this);
    }
    return orElse();
  }
}

abstract class _$UpdateResponse implements LoginRequestEvent {
  const factory _$UpdateResponse({required final LoginRequestParams params}) =
      _$$UpdateResponseImpl;

  LoginRequestParams get params;

  /// Create a copy of LoginRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$$UpdateResponseImplCopyWith<_$$UpdateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetBlocImplCopyWith<$Res> {
  factory _$$ResetBlocImplCopyWith(
          _$ResetBlocImpl value, $Res Function(_$ResetBlocImpl) then) =
      __$$ResetBlocImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetBlocImplCopyWithImpl<$Res>
    extends _$LoginRequestEventCopyWithImpl<$Res, _$ResetBlocImpl>
    implements _$$ResetBlocImplCopyWith<$Res> {
  __$$ResetBlocImplCopyWithImpl(
      _$ResetBlocImpl _value, $Res Function(_$ResetBlocImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetBlocImpl implements _ResetBloc {
  const _$ResetBlocImpl();

  @override
  String toString() {
    return 'LoginRequestEvent.resetBloc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetBlocImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestParams params) updateResponse,
    required TResult Function() resetBloc,
  }) {
    return resetBloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestParams params)? updateResponse,
    TResult? Function()? resetBloc,
  }) {
    return resetBloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestParams params)? updateResponse,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (resetBloc != null) {
      return resetBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UpdateResponse value) updateResponse,
    required TResult Function(_ResetBloc value) resetBloc,
  }) {
    return resetBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UpdateResponse value)? updateResponse,
    TResult? Function(_ResetBloc value)? resetBloc,
  }) {
    return resetBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UpdateResponse value)? updateResponse,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (resetBloc != null) {
      return resetBloc(this);
    }
    return orElse();
  }
}

abstract class _ResetBloc implements LoginRequestEvent {
  const factory _ResetBloc() = _$ResetBlocImpl;
}

/// @nodoc
mixin _$LoginRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SucceedLoginRequestEntity succeed) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestStateCopyWith<$Res> {
  factory $LoginRequestStateCopyWith(
          LoginRequestState value, $Res Function(LoginRequestState) then) =
      _$LoginRequestStateCopyWithImpl<$Res, LoginRequestState>;
}

/// @nodoc
class _$LoginRequestStateCopyWithImpl<$Res, $Val extends LoginRequestState>
    implements $LoginRequestStateCopyWith<$Res> {
  _$LoginRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequestState
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
    extends _$LoginRequestStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginRequestState.initial()';
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
    required TResult Function() loading,
    required TResult Function(SucceedLoginRequestEntity succeed) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult Function(ErrorResponseModel error)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginRequestState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginRequestStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginRequestState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SucceedLoginRequestEntity succeed) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginRequestState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SucceedLoginRequestEntity succeed});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$LoginRequestStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? succeed = null,
  }) {
    return _then(_$LoadedImpl(
      succeed: null == succeed
          ? _value.succeed
          : succeed // ignore: cast_nullable_to_non_nullable
              as SucceedLoginRequestEntity,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.succeed});

  @override
  final SucceedLoginRequestEntity succeed;

  @override
  String toString() {
    return 'LoginRequestState.loaded(succeed: $succeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.succeed, succeed) || other.succeed == succeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, succeed);

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SucceedLoginRequestEntity succeed) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return loaded(succeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return loaded?.call(succeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(succeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements LoginRequestState {
  const factory _Loaded({required final SucceedLoginRequestEntity succeed}) =
      _$LoadedImpl;

  SucceedLoginRequestEntity get succeed;

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResponseModel error});

  $ErrorResponseModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LoginRequestStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel,
    ));
  }

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseModelCopyWith<$Res> get error {
    return $ErrorResponseModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error});

  @override
  final ErrorResponseModel error;

  @override
  String toString() {
    return 'LoginRequestState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SucceedLoginRequestEntity succeed) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SucceedLoginRequestEntity succeed)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginRequestState {
  const factory _Error({required final ErrorResponseModel error}) = _$ErrorImpl;

  ErrorResponseModel get error;

  /// Create a copy of LoginRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
