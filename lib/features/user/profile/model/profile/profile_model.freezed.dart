// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Profile")
  List<Profile>? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "active_plan")
  List<ActivePlan>? get activePlan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "Profile") List<Profile>? profile,
      @JsonKey(name: "active_plan") List<ActivePlan>? activePlan});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? profile = freezed,
    Object? activePlan = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      activePlan: freezed == activePlan
          ? _value.activePlan
          : activePlan // ignore: cast_nullable_to_non_nullable
              as List<ActivePlan>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "Profile") List<Profile>? profile,
      @JsonKey(name: "active_plan") List<ActivePlan>? activePlan});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? profile = freezed,
    Object? activePlan = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value._profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      activePlan: freezed == activePlan
          ? _value._activePlan
          : activePlan // ignore: cast_nullable_to_non_nullable
              as List<ActivePlan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {@JsonKey(name: "status") this.status = '',
      @JsonKey(name: "Profile") final List<Profile>? profile = const [],
      @JsonKey(name: "active_plan")
      final List<ActivePlan>? activePlan = const []})
      : _profile = profile,
        _activePlan = activePlan;

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<Profile>? _profile;
  @override
  @JsonKey(name: "Profile")
  List<Profile>? get profile {
    final value = _profile;
    if (value == null) return null;
    if (_profile is EqualUnmodifiableListView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ActivePlan>? _activePlan;
  @override
  @JsonKey(name: "active_plan")
  List<ActivePlan>? get activePlan {
    final value = _activePlan;
    if (value == null) return null;
    if (_activePlan is EqualUnmodifiableListView) return _activePlan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileModel(status: $status, profile: $profile, activePlan: $activePlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._profile, _profile) &&
            const DeepCollectionEquality()
                .equals(other._activePlan, _activePlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_profile),
      const DeepCollectionEquality().hash(_activePlan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "Profile") final List<Profile>? profile,
          @JsonKey(name: "active_plan") final List<ActivePlan>? activePlan}) =
      _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "Profile")
  List<Profile>? get profile;
  @override
  @JsonKey(name: "active_plan")
  List<ActivePlan>? get activePlan;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  @JsonKey(name: "rj_cus_id")
  int? get rjCusId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_name")
  String? get rjCusName => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_email")
  String? get rjCusEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_phone")
  String? get rjCusPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_gender")
  String? get rjCusGender => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_city")
  int? get rjCusCity => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_state")
  int? get rjCusState => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_country")
  int? get rjCusCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_cus_church")
  int? get rjCusChurch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {@JsonKey(name: "rj_cus_id") int? rjCusId,
      @JsonKey(name: "rj_cus_name") String? rjCusName,
      @JsonKey(name: "rj_cus_email") String? rjCusEmail,
      @JsonKey(name: "rj_cus_phone") String? rjCusPhone,
      @JsonKey(name: "rj_cus_gender") String? rjCusGender,
      @JsonKey(name: "rj_cus_city") int? rjCusCity,
      @JsonKey(name: "rj_cus_state") int? rjCusState,
      @JsonKey(name: "rj_cus_country") int? rjCusCountry,
      @JsonKey(name: "rj_cus_church") int? rjCusChurch});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjCusId = freezed,
    Object? rjCusName = freezed,
    Object? rjCusEmail = freezed,
    Object? rjCusPhone = freezed,
    Object? rjCusGender = freezed,
    Object? rjCusCity = freezed,
    Object? rjCusState = freezed,
    Object? rjCusCountry = freezed,
    Object? rjCusChurch = freezed,
  }) {
    return _then(_value.copyWith(
      rjCusId: freezed == rjCusId
          ? _value.rjCusId
          : rjCusId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusName: freezed == rjCusName
          ? _value.rjCusName
          : rjCusName // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusEmail: freezed == rjCusEmail
          ? _value.rjCusEmail
          : rjCusEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusPhone: freezed == rjCusPhone
          ? _value.rjCusPhone
          : rjCusPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusGender: freezed == rjCusGender
          ? _value.rjCusGender
          : rjCusGender // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusCity: freezed == rjCusCity
          ? _value.rjCusCity
          : rjCusCity // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusState: freezed == rjCusState
          ? _value.rjCusState
          : rjCusState // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusCountry: freezed == rjCusCountry
          ? _value.rjCusCountry
          : rjCusCountry // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusChurch: freezed == rjCusChurch
          ? _value.rjCusChurch
          : rjCusChurch // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rj_cus_id") int? rjCusId,
      @JsonKey(name: "rj_cus_name") String? rjCusName,
      @JsonKey(name: "rj_cus_email") String? rjCusEmail,
      @JsonKey(name: "rj_cus_phone") String? rjCusPhone,
      @JsonKey(name: "rj_cus_gender") String? rjCusGender,
      @JsonKey(name: "rj_cus_city") int? rjCusCity,
      @JsonKey(name: "rj_cus_state") int? rjCusState,
      @JsonKey(name: "rj_cus_country") int? rjCusCountry,
      @JsonKey(name: "rj_cus_church") int? rjCusChurch});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjCusId = freezed,
    Object? rjCusName = freezed,
    Object? rjCusEmail = freezed,
    Object? rjCusPhone = freezed,
    Object? rjCusGender = freezed,
    Object? rjCusCity = freezed,
    Object? rjCusState = freezed,
    Object? rjCusCountry = freezed,
    Object? rjCusChurch = freezed,
  }) {
    return _then(_$ProfileImpl(
      rjCusId: freezed == rjCusId
          ? _value.rjCusId
          : rjCusId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusName: freezed == rjCusName
          ? _value.rjCusName
          : rjCusName // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusEmail: freezed == rjCusEmail
          ? _value.rjCusEmail
          : rjCusEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusPhone: freezed == rjCusPhone
          ? _value.rjCusPhone
          : rjCusPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusGender: freezed == rjCusGender
          ? _value.rjCusGender
          : rjCusGender // ignore: cast_nullable_to_non_nullable
              as String?,
      rjCusCity: freezed == rjCusCity
          ? _value.rjCusCity
          : rjCusCity // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusState: freezed == rjCusState
          ? _value.rjCusState
          : rjCusState // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusCountry: freezed == rjCusCountry
          ? _value.rjCusCountry
          : rjCusCountry // ignore: cast_nullable_to_non_nullable
              as int?,
      rjCusChurch: freezed == rjCusChurch
          ? _value.rjCusChurch
          : rjCusChurch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {@JsonKey(name: "rj_cus_id") this.rjCusId = 0,
      @JsonKey(name: "rj_cus_name") this.rjCusName = '',
      @JsonKey(name: "rj_cus_email") this.rjCusEmail = '',
      @JsonKey(name: "rj_cus_phone") this.rjCusPhone = '',
      @JsonKey(name: "rj_cus_gender") this.rjCusGender = '',
      @JsonKey(name: "rj_cus_city") this.rjCusCity = 0,
      @JsonKey(name: "rj_cus_state") this.rjCusState = 0,
      @JsonKey(name: "rj_cus_country") this.rjCusCountry = 0,
      @JsonKey(name: "rj_cus_church") this.rjCusChurch = 0});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  @JsonKey(name: "rj_cus_id")
  final int? rjCusId;
  @override
  @JsonKey(name: "rj_cus_name")
  final String? rjCusName;
  @override
  @JsonKey(name: "rj_cus_email")
  final String? rjCusEmail;
  @override
  @JsonKey(name: "rj_cus_phone")
  final String? rjCusPhone;
  @override
  @JsonKey(name: "rj_cus_gender")
  final String? rjCusGender;
  @override
  @JsonKey(name: "rj_cus_city")
  final int? rjCusCity;
  @override
  @JsonKey(name: "rj_cus_state")
  final int? rjCusState;
  @override
  @JsonKey(name: "rj_cus_country")
  final int? rjCusCountry;
  @override
  @JsonKey(name: "rj_cus_church")
  final int? rjCusChurch;

  @override
  String toString() {
    return 'Profile(rjCusId: $rjCusId, rjCusName: $rjCusName, rjCusEmail: $rjCusEmail, rjCusPhone: $rjCusPhone, rjCusGender: $rjCusGender, rjCusCity: $rjCusCity, rjCusState: $rjCusState, rjCusCountry: $rjCusCountry, rjCusChurch: $rjCusChurch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.rjCusId, rjCusId) || other.rjCusId == rjCusId) &&
            (identical(other.rjCusName, rjCusName) ||
                other.rjCusName == rjCusName) &&
            (identical(other.rjCusEmail, rjCusEmail) ||
                other.rjCusEmail == rjCusEmail) &&
            (identical(other.rjCusPhone, rjCusPhone) ||
                other.rjCusPhone == rjCusPhone) &&
            (identical(other.rjCusGender, rjCusGender) ||
                other.rjCusGender == rjCusGender) &&
            (identical(other.rjCusCity, rjCusCity) ||
                other.rjCusCity == rjCusCity) &&
            (identical(other.rjCusState, rjCusState) ||
                other.rjCusState == rjCusState) &&
            (identical(other.rjCusCountry, rjCusCountry) ||
                other.rjCusCountry == rjCusCountry) &&
            (identical(other.rjCusChurch, rjCusChurch) ||
                other.rjCusChurch == rjCusChurch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rjCusId,
      rjCusName,
      rjCusEmail,
      rjCusPhone,
      rjCusGender,
      rjCusCity,
      rjCusState,
      rjCusCountry,
      rjCusChurch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {@JsonKey(name: "rj_cus_id") final int? rjCusId,
      @JsonKey(name: "rj_cus_name") final String? rjCusName,
      @JsonKey(name: "rj_cus_email") final String? rjCusEmail,
      @JsonKey(name: "rj_cus_phone") final String? rjCusPhone,
      @JsonKey(name: "rj_cus_gender") final String? rjCusGender,
      @JsonKey(name: "rj_cus_city") final int? rjCusCity,
      @JsonKey(name: "rj_cus_state") final int? rjCusState,
      @JsonKey(name: "rj_cus_country") final int? rjCusCountry,
      @JsonKey(name: "rj_cus_church") final int? rjCusChurch}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  @JsonKey(name: "rj_cus_id")
  int? get rjCusId;
  @override
  @JsonKey(name: "rj_cus_name")
  String? get rjCusName;
  @override
  @JsonKey(name: "rj_cus_email")
  String? get rjCusEmail;
  @override
  @JsonKey(name: "rj_cus_phone")
  String? get rjCusPhone;
  @override
  @JsonKey(name: "rj_cus_gender")
  String? get rjCusGender;
  @override
  @JsonKey(name: "rj_cus_city")
  int? get rjCusCity;
  @override
  @JsonKey(name: "rj_cus_state")
  int? get rjCusState;
  @override
  @JsonKey(name: "rj_cus_country")
  int? get rjCusCountry;
  @override
  @JsonKey(name: "rj_cus_church")
  int? get rjCusChurch;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivePlan _$ActivePlanFromJson(Map<String, dynamic> json) {
  return _ActivePlan.fromJson(json);
}

/// @nodoc
mixin _$ActivePlan {
  @JsonKey(name: "plan_id")
  int? get planId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "heading_1")
  String? get heading1 => throw _privateConstructorUsedError;
  @JsonKey(name: "heading_2")
  String? get heading2 => throw _privateConstructorUsedError;
  @JsonKey(name: "heading_3")
  String? get heading3 => throw _privateConstructorUsedError;
  @JsonKey(name: "heading_4")
  String? get heading4 => throw _privateConstructorUsedError;
  @JsonKey(name: "background_color")
  String? get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: "validity_in_days")
  int? get validityInDays => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "validity_in_month")
  int? get validityInMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry_date")
  String? get expiryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivePlanCopyWith<ActivePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivePlanCopyWith<$Res> {
  factory $ActivePlanCopyWith(
          ActivePlan value, $Res Function(ActivePlan) then) =
      _$ActivePlanCopyWithImpl<$Res, ActivePlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "plan_id") int? planId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "heading_1") String? heading1,
      @JsonKey(name: "heading_2") String? heading2,
      @JsonKey(name: "heading_3") String? heading3,
      @JsonKey(name: "heading_4") String? heading4,
      @JsonKey(name: "background_color") String? backgroundColor,
      @JsonKey(name: "validity_in_days") int? validityInDays,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "validity_in_month") int? validityInMonth,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "expiry_date") String? expiryDate});
}

/// @nodoc
class _$ActivePlanCopyWithImpl<$Res, $Val extends ActivePlan>
    implements $ActivePlanCopyWith<$Res> {
  _$ActivePlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = freezed,
    Object? title = freezed,
    Object? heading1 = freezed,
    Object? heading2 = freezed,
    Object? heading3 = freezed,
    Object? heading4 = freezed,
    Object? backgroundColor = freezed,
    Object? validityInDays = freezed,
    Object? amount = freezed,
    Object? validityInMonth = freezed,
    Object? startDate = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      heading1: freezed == heading1
          ? _value.heading1
          : heading1 // ignore: cast_nullable_to_non_nullable
              as String?,
      heading2: freezed == heading2
          ? _value.heading2
          : heading2 // ignore: cast_nullable_to_non_nullable
              as String?,
      heading3: freezed == heading3
          ? _value.heading3
          : heading3 // ignore: cast_nullable_to_non_nullable
              as String?,
      heading4: freezed == heading4
          ? _value.heading4
          : heading4 // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      validityInDays: freezed == validityInDays
          ? _value.validityInDays
          : validityInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      validityInMonth: freezed == validityInMonth
          ? _value.validityInMonth
          : validityInMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivePlanImplCopyWith<$Res>
    implements $ActivePlanCopyWith<$Res> {
  factory _$$ActivePlanImplCopyWith(
          _$ActivePlanImpl value, $Res Function(_$ActivePlanImpl) then) =
      __$$ActivePlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "plan_id") int? planId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "heading_1") String? heading1,
      @JsonKey(name: "heading_2") String? heading2,
      @JsonKey(name: "heading_3") String? heading3,
      @JsonKey(name: "heading_4") String? heading4,
      @JsonKey(name: "background_color") String? backgroundColor,
      @JsonKey(name: "validity_in_days") int? validityInDays,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "validity_in_month") int? validityInMonth,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "expiry_date") String? expiryDate});
}

/// @nodoc
class __$$ActivePlanImplCopyWithImpl<$Res>
    extends _$ActivePlanCopyWithImpl<$Res, _$ActivePlanImpl>
    implements _$$ActivePlanImplCopyWith<$Res> {
  __$$ActivePlanImplCopyWithImpl(
      _$ActivePlanImpl _value, $Res Function(_$ActivePlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = freezed,
    Object? title = freezed,
    Object? heading1 = freezed,
    Object? heading2 = freezed,
    Object? heading3 = freezed,
    Object? heading4 = freezed,
    Object? backgroundColor = freezed,
    Object? validityInDays = freezed,
    Object? amount = freezed,
    Object? validityInMonth = freezed,
    Object? startDate = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_$ActivePlanImpl(
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      heading1: freezed == heading1
          ? _value.heading1
          : heading1 // ignore: cast_nullable_to_non_nullable
              as String?,
      heading2: freezed == heading2
          ? _value.heading2
          : heading2 // ignore: cast_nullable_to_non_nullable
              as String?,
      heading3: freezed == heading3
          ? _value.heading3
          : heading3 // ignore: cast_nullable_to_non_nullable
              as String?,
      heading4: freezed == heading4
          ? _value.heading4
          : heading4 // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      validityInDays: freezed == validityInDays
          ? _value.validityInDays
          : validityInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      validityInMonth: freezed == validityInMonth
          ? _value.validityInMonth
          : validityInMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivePlanImpl implements _ActivePlan {
  const _$ActivePlanImpl(
      {@JsonKey(name: "plan_id") this.planId = 0,
      @JsonKey(name: "title") this.title = '',
      @JsonKey(name: "heading_1") this.heading1 = '',
      @JsonKey(name: "heading_2") this.heading2 = '',
      @JsonKey(name: "heading_3") this.heading3 = '',
      @JsonKey(name: "heading_4") this.heading4 = '',
      @JsonKey(name: "background_color") this.backgroundColor = '',
      @JsonKey(name: "validity_in_days") this.validityInDays = 0,
      @JsonKey(name: "amount") this.amount = 0,
      @JsonKey(name: "validity_in_month") this.validityInMonth = 0,
      @JsonKey(name: "start_date") this.startDate = '',
      @JsonKey(name: "expiry_date") this.expiryDate = ''});

  factory _$ActivePlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivePlanImplFromJson(json);

  @override
  @JsonKey(name: "plan_id")
  final int? planId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "heading_1")
  final String? heading1;
  @override
  @JsonKey(name: "heading_2")
  final String? heading2;
  @override
  @JsonKey(name: "heading_3")
  final String? heading3;
  @override
  @JsonKey(name: "heading_4")
  final String? heading4;
  @override
  @JsonKey(name: "background_color")
  final String? backgroundColor;
  @override
  @JsonKey(name: "validity_in_days")
  final int? validityInDays;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "validity_in_month")
  final int? validityInMonth;
  @override
  @JsonKey(name: "start_date")
  final String? startDate;
  @override
  @JsonKey(name: "expiry_date")
  final String? expiryDate;

  @override
  String toString() {
    return 'ActivePlan(planId: $planId, title: $title, heading1: $heading1, heading2: $heading2, heading3: $heading3, heading4: $heading4, backgroundColor: $backgroundColor, validityInDays: $validityInDays, amount: $amount, validityInMonth: $validityInMonth, startDate: $startDate, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivePlanImpl &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.heading1, heading1) ||
                other.heading1 == heading1) &&
            (identical(other.heading2, heading2) ||
                other.heading2 == heading2) &&
            (identical(other.heading3, heading3) ||
                other.heading3 == heading3) &&
            (identical(other.heading4, heading4) ||
                other.heading4 == heading4) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.validityInDays, validityInDays) ||
                other.validityInDays == validityInDays) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.validityInMonth, validityInMonth) ||
                other.validityInMonth == validityInMonth) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      planId,
      title,
      heading1,
      heading2,
      heading3,
      heading4,
      backgroundColor,
      validityInDays,
      amount,
      validityInMonth,
      startDate,
      expiryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivePlanImplCopyWith<_$ActivePlanImpl> get copyWith =>
      __$$ActivePlanImplCopyWithImpl<_$ActivePlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivePlanImplToJson(
      this,
    );
  }
}

abstract class _ActivePlan implements ActivePlan {
  const factory _ActivePlan(
          {@JsonKey(name: "plan_id") final int? planId,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "heading_1") final String? heading1,
          @JsonKey(name: "heading_2") final String? heading2,
          @JsonKey(name: "heading_3") final String? heading3,
          @JsonKey(name: "heading_4") final String? heading4,
          @JsonKey(name: "background_color") final String? backgroundColor,
          @JsonKey(name: "validity_in_days") final int? validityInDays,
          @JsonKey(name: "amount") final int? amount,
          @JsonKey(name: "validity_in_month") final int? validityInMonth,
          @JsonKey(name: "start_date") final String? startDate,
          @JsonKey(name: "expiry_date") final String? expiryDate}) =
      _$ActivePlanImpl;

  factory _ActivePlan.fromJson(Map<String, dynamic> json) =
      _$ActivePlanImpl.fromJson;

  @override
  @JsonKey(name: "plan_id")
  int? get planId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "heading_1")
  String? get heading1;
  @override
  @JsonKey(name: "heading_2")
  String? get heading2;
  @override
  @JsonKey(name: "heading_3")
  String? get heading3;
  @override
  @JsonKey(name: "heading_4")
  String? get heading4;
  @override
  @JsonKey(name: "background_color")
  String? get backgroundColor;
  @override
  @JsonKey(name: "validity_in_days")
  int? get validityInDays;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "validity_in_month")
  int? get validityInMonth;
  @override
  @JsonKey(name: "start_date")
  String? get startDate;
  @override
  @JsonKey(name: "expiry_date")
  String? get expiryDate;
  @override
  @JsonKey(ignore: true)
  _$$ActivePlanImplCopyWith<_$ActivePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
