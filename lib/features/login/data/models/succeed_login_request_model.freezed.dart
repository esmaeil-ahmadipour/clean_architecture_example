// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'succeed_login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SucceedLoginRequestModel _$SucceedLoginRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SucceedLoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SucceedLoginRequestModel {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this SucceedLoginRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SucceedLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SucceedLoginRequestModelCopyWith<SucceedLoginRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SucceedLoginRequestModelCopyWith<$Res> {
  factory $SucceedLoginRequestModelCopyWith(SucceedLoginRequestModel value,
          $Res Function(SucceedLoginRequestModel) then) =
      _$SucceedLoginRequestModelCopyWithImpl<$Res, SucceedLoginRequestModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$SucceedLoginRequestModelCopyWithImpl<$Res,
        $Val extends SucceedLoginRequestModel>
    implements $SucceedLoginRequestModelCopyWith<$Res> {
  _$SucceedLoginRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SucceedLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SucceedLoginRequestModelImplCopyWith<$Res>
    implements $SucceedLoginRequestModelCopyWith<$Res> {
  factory _$$SucceedLoginRequestModelImplCopyWith(
          _$SucceedLoginRequestModelImpl value,
          $Res Function(_$SucceedLoginRequestModelImpl) then) =
      __$$SucceedLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$SucceedLoginRequestModelImplCopyWithImpl<$Res>
    extends _$SucceedLoginRequestModelCopyWithImpl<$Res,
        _$SucceedLoginRequestModelImpl>
    implements _$$SucceedLoginRequestModelImplCopyWith<$Res> {
  __$$SucceedLoginRequestModelImplCopyWithImpl(
      _$SucceedLoginRequestModelImpl _value,
      $Res Function(_$SucceedLoginRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SucceedLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SucceedLoginRequestModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SucceedLoginRequestModelImpl implements _SucceedLoginRequestModel {
  const _$SucceedLoginRequestModelImpl({required this.token});

  factory _$SucceedLoginRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SucceedLoginRequestModelImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'SucceedLoginRequestModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceedLoginRequestModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of SucceedLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceedLoginRequestModelImplCopyWith<_$SucceedLoginRequestModelImpl>
      get copyWith => __$$SucceedLoginRequestModelImplCopyWithImpl<
          _$SucceedLoginRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SucceedLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SucceedLoginRequestModel implements SucceedLoginRequestModel {
  const factory _SucceedLoginRequestModel({required final String token}) =
      _$SucceedLoginRequestModelImpl;

  factory _SucceedLoginRequestModel.fromJson(Map<String, dynamic> json) =
      _$SucceedLoginRequestModelImpl.fromJson;

  @override
  String get token;

  /// Create a copy of SucceedLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceedLoginRequestModelImplCopyWith<_$SucceedLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
