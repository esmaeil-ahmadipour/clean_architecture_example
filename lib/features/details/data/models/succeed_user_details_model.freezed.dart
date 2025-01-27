// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'succeed_user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SucceedUserDetailsModel _$SucceedUserDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _SucceedUserDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$SucceedUserDetailsModel {
  String get userFirstName => throw _privateConstructorUsedError;
  String get userLastName => throw _privateConstructorUsedError;
  String get userNationalCode => throw _privateConstructorUsedError;
  String get userPhoneNumber => throw _privateConstructorUsedError;
  int get userAccountBalance => throw _privateConstructorUsedError;

  /// Serializes this SucceedUserDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SucceedUserDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SucceedUserDetailsModelCopyWith<SucceedUserDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SucceedUserDetailsModelCopyWith<$Res> {
  factory $SucceedUserDetailsModelCopyWith(SucceedUserDetailsModel value,
          $Res Function(SucceedUserDetailsModel) then) =
      _$SucceedUserDetailsModelCopyWithImpl<$Res, SucceedUserDetailsModel>;
  @useResult
  $Res call(
      {String userFirstName,
      String userLastName,
      String userNationalCode,
      String userPhoneNumber,
      int userAccountBalance});
}

/// @nodoc
class _$SucceedUserDetailsModelCopyWithImpl<$Res,
        $Val extends SucceedUserDetailsModel>
    implements $SucceedUserDetailsModelCopyWith<$Res> {
  _$SucceedUserDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SucceedUserDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? userNationalCode = null,
    Object? userPhoneNumber = null,
    Object? userAccountBalance = null,
  }) {
    return _then(_value.copyWith(
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      userNationalCode: null == userNationalCode
          ? _value.userNationalCode
          : userNationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoneNumber: null == userPhoneNumber
          ? _value.userPhoneNumber
          : userPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userAccountBalance: null == userAccountBalance
          ? _value.userAccountBalance
          : userAccountBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SucceedUserDetailsModelImplCopyWith<$Res>
    implements $SucceedUserDetailsModelCopyWith<$Res> {
  factory _$$SucceedUserDetailsModelImplCopyWith(
          _$SucceedUserDetailsModelImpl value,
          $Res Function(_$SucceedUserDetailsModelImpl) then) =
      __$$SucceedUserDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userFirstName,
      String userLastName,
      String userNationalCode,
      String userPhoneNumber,
      int userAccountBalance});
}

/// @nodoc
class __$$SucceedUserDetailsModelImplCopyWithImpl<$Res>
    extends _$SucceedUserDetailsModelCopyWithImpl<$Res,
        _$SucceedUserDetailsModelImpl>
    implements _$$SucceedUserDetailsModelImplCopyWith<$Res> {
  __$$SucceedUserDetailsModelImplCopyWithImpl(
      _$SucceedUserDetailsModelImpl _value,
      $Res Function(_$SucceedUserDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SucceedUserDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? userNationalCode = null,
    Object? userPhoneNumber = null,
    Object? userAccountBalance = null,
  }) {
    return _then(_$SucceedUserDetailsModelImpl(
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      userNationalCode: null == userNationalCode
          ? _value.userNationalCode
          : userNationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoneNumber: null == userPhoneNumber
          ? _value.userPhoneNumber
          : userPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userAccountBalance: null == userAccountBalance
          ? _value.userAccountBalance
          : userAccountBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SucceedUserDetailsModelImpl implements _SucceedUserDetailsModel {
  const _$SucceedUserDetailsModelImpl(
      {required this.userFirstName,
      required this.userLastName,
      required this.userNationalCode,
      required this.userPhoneNumber,
      required this.userAccountBalance});

  factory _$SucceedUserDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SucceedUserDetailsModelImplFromJson(json);

  @override
  final String userFirstName;
  @override
  final String userLastName;
  @override
  final String userNationalCode;
  @override
  final String userPhoneNumber;
  @override
  final int userAccountBalance;

  @override
  String toString() {
    return 'SucceedUserDetailsModel(userFirstName: $userFirstName, userLastName: $userLastName, userNationalCode: $userNationalCode, userPhoneNumber: $userPhoneNumber, userAccountBalance: $userAccountBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceedUserDetailsModelImpl &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            (identical(other.userNationalCode, userNationalCode) ||
                other.userNationalCode == userNationalCode) &&
            (identical(other.userPhoneNumber, userPhoneNumber) ||
                other.userPhoneNumber == userPhoneNumber) &&
            (identical(other.userAccountBalance, userAccountBalance) ||
                other.userAccountBalance == userAccountBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userFirstName, userLastName,
      userNationalCode, userPhoneNumber, userAccountBalance);

  /// Create a copy of SucceedUserDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceedUserDetailsModelImplCopyWith<_$SucceedUserDetailsModelImpl>
      get copyWith => __$$SucceedUserDetailsModelImplCopyWithImpl<
          _$SucceedUserDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SucceedUserDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _SucceedUserDetailsModel implements SucceedUserDetailsModel {
  const factory _SucceedUserDetailsModel(
      {required final String userFirstName,
      required final String userLastName,
      required final String userNationalCode,
      required final String userPhoneNumber,
      required final int userAccountBalance}) = _$SucceedUserDetailsModelImpl;

  factory _SucceedUserDetailsModel.fromJson(Map<String, dynamic> json) =
      _$SucceedUserDetailsModelImpl.fromJson;

  @override
  String get userFirstName;
  @override
  String get userLastName;
  @override
  String get userNationalCode;
  @override
  String get userPhoneNumber;
  @override
  int get userAccountBalance;

  /// Create a copy of SucceedUserDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceedUserDetailsModelImplCopyWith<_$SucceedUserDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
