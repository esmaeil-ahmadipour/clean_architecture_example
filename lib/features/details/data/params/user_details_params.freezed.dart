// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailsParams _$UserDetailsParamsFromJson(Map<String, dynamic> json) {
  return _UserDetailsParams.fromJson(json);
}

/// @nodoc
mixin _$UserDetailsParams {
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this UserDetailsParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailsParamsCopyWith<UserDetailsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsParamsCopyWith<$Res> {
  factory $UserDetailsParamsCopyWith(
          UserDetailsParams value, $Res Function(UserDetailsParams) then) =
      _$UserDetailsParamsCopyWithImpl<$Res, UserDetailsParams>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$UserDetailsParamsCopyWithImpl<$Res, $Val extends UserDetailsParams>
    implements $UserDetailsParamsCopyWith<$Res> {
  _$UserDetailsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsParamsImplCopyWith<$Res>
    implements $UserDetailsParamsCopyWith<$Res> {
  factory _$$UserDetailsParamsImplCopyWith(_$UserDetailsParamsImpl value,
          $Res Function(_$UserDetailsParamsImpl) then) =
      __$$UserDetailsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$UserDetailsParamsImplCopyWithImpl<$Res>
    extends _$UserDetailsParamsCopyWithImpl<$Res, _$UserDetailsParamsImpl>
    implements _$$UserDetailsParamsImplCopyWith<$Res> {
  __$$UserDetailsParamsImplCopyWithImpl(_$UserDetailsParamsImpl _value,
      $Res Function(_$UserDetailsParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$UserDetailsParamsImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsParamsImpl implements _UserDetailsParams {
  _$UserDetailsParamsImpl({this.token});

  factory _$UserDetailsParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsParamsImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'UserDetailsParams(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsParamsImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of UserDetailsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsParamsImplCopyWith<_$UserDetailsParamsImpl> get copyWith =>
      __$$UserDetailsParamsImplCopyWithImpl<_$UserDetailsParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsParamsImplToJson(
      this,
    );
  }
}

abstract class _UserDetailsParams implements UserDetailsParams {
  factory _UserDetailsParams({final String? token}) = _$UserDetailsParamsImpl;

  factory _UserDetailsParams.fromJson(Map<String, dynamic> json) =
      _$UserDetailsParamsImpl.fromJson;

  @override
  String? get token;

  /// Create a copy of UserDetailsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailsParamsImplCopyWith<_$UserDetailsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
