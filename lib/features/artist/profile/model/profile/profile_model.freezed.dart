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

ArtistProfileModel _$ArtistProfileModelFromJson(Map<String, dynamic> json) {
  return _ArtistProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ArtistProfileModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "total_subsciption")
  int? get totalSubsciption => throw _privateConstructorUsedError;
  @JsonKey(name: "total_earning")
  String? get totalEarning => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistProfileModelCopyWith<ArtistProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistProfileModelCopyWith<$Res> {
  factory $ArtistProfileModelCopyWith(
          ArtistProfileModel value, $Res Function(ArtistProfileModel) then) =
      _$ArtistProfileModelCopyWithImpl<$Res, ArtistProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "total_subsciption") int? totalSubsciption,
      @JsonKey(name: "total_earning") String? totalEarning,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class _$ArtistProfileModelCopyWithImpl<$Res, $Val extends ArtistProfileModel>
    implements $ArtistProfileModelCopyWith<$Res> {
  _$ArtistProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalSubsciption = freezed,
    Object? totalEarning = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalSubsciption: freezed == totalSubsciption
          ? _value.totalSubsciption
          : totalSubsciption // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEarning: freezed == totalEarning
          ? _value.totalEarning
          : totalEarning // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistProfileModelImplCopyWith<$Res>
    implements $ArtistProfileModelCopyWith<$Res> {
  factory _$$ArtistProfileModelImplCopyWith(_$ArtistProfileModelImpl value,
          $Res Function(_$ArtistProfileModelImpl) then) =
      __$$ArtistProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "total_subsciption") int? totalSubsciption,
      @JsonKey(name: "total_earning") String? totalEarning,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class __$$ArtistProfileModelImplCopyWithImpl<$Res>
    extends _$ArtistProfileModelCopyWithImpl<$Res, _$ArtistProfileModelImpl>
    implements _$$ArtistProfileModelImplCopyWith<$Res> {
  __$$ArtistProfileModelImplCopyWithImpl(_$ArtistProfileModelImpl _value,
      $Res Function(_$ArtistProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalSubsciption = freezed,
    Object? totalEarning = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ArtistProfileModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalSubsciption: freezed == totalSubsciption
          ? _value.totalSubsciption
          : totalSubsciption // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEarning: freezed == totalEarning
          ? _value.totalEarning
          : totalEarning // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistProfileModelImpl implements _ArtistProfileModel {
  const _$ArtistProfileModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "total_subsciption") this.totalSubsciption,
      @JsonKey(name: "total_earning") this.totalEarning,
      @JsonKey(name: "data") final List<Data>? data})
      : _data = data;

  factory _$ArtistProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "total_subsciption")
  final int? totalSubsciption;
  @override
  @JsonKey(name: "total_earning")
  final String? totalEarning;
  final List<Data>? _data;
  @override
  @JsonKey(name: "data")
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArtistProfileModel(status: $status, totalSubsciption: $totalSubsciption, totalEarning: $totalEarning, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalSubsciption, totalSubsciption) ||
                other.totalSubsciption == totalSubsciption) &&
            (identical(other.totalEarning, totalEarning) ||
                other.totalEarning == totalEarning) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalSubsciption,
      totalEarning, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileModelImplCopyWith<_$ArtistProfileModelImpl> get copyWith =>
      __$$ArtistProfileModelImplCopyWithImpl<_$ArtistProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ArtistProfileModel implements ArtistProfileModel {
  const factory _ArtistProfileModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "total_subsciption") final int? totalSubsciption,
          @JsonKey(name: "total_earning") final String? totalEarning,
          @JsonKey(name: "data") final List<Data>? data}) =
      _$ArtistProfileModelImpl;

  factory _ArtistProfileModel.fromJson(Map<String, dynamic> json) =
      _$ArtistProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "total_subsciption")
  int? get totalSubsciption;
  @override
  @JsonKey(name: "total_earning")
  String? get totalEarning;
  @override
  @JsonKey(name: "data")
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileModelImplCopyWith<_$ArtistProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "artist_name")
  String? get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_email")
  String? get artistEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_phone")
  String? get artistPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_gender")
  String? get artistGender => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_state")
  String? get artistState => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_city")
  String? get artistCity => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_district")
  String? get artistDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_church")
  String? get artistChurch => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_promocode")
  String? get artistPromocode => throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  String? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "artist_name") String? artistName,
      @JsonKey(name: "artist_email") String? artistEmail,
      @JsonKey(name: "artist_phone") String? artistPhone,
      @JsonKey(name: "artist_gender") String? artistGender,
      @JsonKey(name: "artist_state") String? artistState,
      @JsonKey(name: "artist_city") String? artistCity,
      @JsonKey(name: "artist_district") String? artistDistrict,
      @JsonKey(name: "artist_church") String? artistChurch,
      @JsonKey(name: "artist_promocode") String? artistPromocode,
      @JsonKey(name: "profile") String? profile});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = freezed,
    Object? artistEmail = freezed,
    Object? artistPhone = freezed,
    Object? artistGender = freezed,
    Object? artistState = freezed,
    Object? artistCity = freezed,
    Object? artistDistrict = freezed,
    Object? artistChurch = freezed,
    Object? artistPromocode = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistEmail: freezed == artistEmail
          ? _value.artistEmail
          : artistEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      artistPhone: freezed == artistPhone
          ? _value.artistPhone
          : artistPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      artistGender: freezed == artistGender
          ? _value.artistGender
          : artistGender // ignore: cast_nullable_to_non_nullable
              as String?,
      artistState: freezed == artistState
          ? _value.artistState
          : artistState // ignore: cast_nullable_to_non_nullable
              as String?,
      artistCity: freezed == artistCity
          ? _value.artistCity
          : artistCity // ignore: cast_nullable_to_non_nullable
              as String?,
      artistDistrict: freezed == artistDistrict
          ? _value.artistDistrict
          : artistDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      artistChurch: freezed == artistChurch
          ? _value.artistChurch
          : artistChurch // ignore: cast_nullable_to_non_nullable
              as String?,
      artistPromocode: freezed == artistPromocode
          ? _value.artistPromocode
          : artistPromocode // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "artist_name") String? artistName,
      @JsonKey(name: "artist_email") String? artistEmail,
      @JsonKey(name: "artist_phone") String? artistPhone,
      @JsonKey(name: "artist_gender") String? artistGender,
      @JsonKey(name: "artist_state") String? artistState,
      @JsonKey(name: "artist_city") String? artistCity,
      @JsonKey(name: "artist_district") String? artistDistrict,
      @JsonKey(name: "artist_church") String? artistChurch,
      @JsonKey(name: "artist_promocode") String? artistPromocode,
      @JsonKey(name: "profile") String? profile});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = freezed,
    Object? artistEmail = freezed,
    Object? artistPhone = freezed,
    Object? artistGender = freezed,
    Object? artistState = freezed,
    Object? artistCity = freezed,
    Object? artistDistrict = freezed,
    Object? artistChurch = freezed,
    Object? artistPromocode = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$DataImpl(
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistEmail: freezed == artistEmail
          ? _value.artistEmail
          : artistEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      artistPhone: freezed == artistPhone
          ? _value.artistPhone
          : artistPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      artistGender: freezed == artistGender
          ? _value.artistGender
          : artistGender // ignore: cast_nullable_to_non_nullable
              as String?,
      artistState: freezed == artistState
          ? _value.artistState
          : artistState // ignore: cast_nullable_to_non_nullable
              as String?,
      artistCity: freezed == artistCity
          ? _value.artistCity
          : artistCity // ignore: cast_nullable_to_non_nullable
              as String?,
      artistDistrict: freezed == artistDistrict
          ? _value.artistDistrict
          : artistDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      artistChurch: freezed == artistChurch
          ? _value.artistChurch
          : artistChurch // ignore: cast_nullable_to_non_nullable
              as String?,
      artistPromocode: freezed == artistPromocode
          ? _value.artistPromocode
          : artistPromocode // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "artist_name") this.artistName,
      @JsonKey(name: "artist_email") this.artistEmail,
      @JsonKey(name: "artist_phone") this.artistPhone,
      @JsonKey(name: "artist_gender") this.artistGender,
      @JsonKey(name: "artist_state") this.artistState,
      @JsonKey(name: "artist_city") this.artistCity,
      @JsonKey(name: "artist_district") this.artistDistrict,
      @JsonKey(name: "artist_church") this.artistChurch,
      @JsonKey(name: "artist_promocode") this.artistPromocode,
      @JsonKey(name: "profile") this.profile});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "artist_name")
  final String? artistName;
  @override
  @JsonKey(name: "artist_email")
  final String? artistEmail;
  @override
  @JsonKey(name: "artist_phone")
  final String? artistPhone;
  @override
  @JsonKey(name: "artist_gender")
  final String? artistGender;
  @override
  @JsonKey(name: "artist_state")
  final String? artistState;
  @override
  @JsonKey(name: "artist_city")
  final String? artistCity;
  @override
  @JsonKey(name: "artist_district")
  final String? artistDistrict;
  @override
  @JsonKey(name: "artist_church")
  final String? artistChurch;
  @override
  @JsonKey(name: "artist_promocode")
  final String? artistPromocode;
  @override
  @JsonKey(name: "profile")
  final String? profile;

  @override
  String toString() {
    return 'Data(artistName: $artistName, artistEmail: $artistEmail, artistPhone: $artistPhone, artistGender: $artistGender, artistState: $artistState, artistCity: $artistCity, artistDistrict: $artistDistrict, artistChurch: $artistChurch, artistPromocode: $artistPromocode, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.artistEmail, artistEmail) ||
                other.artistEmail == artistEmail) &&
            (identical(other.artistPhone, artistPhone) ||
                other.artistPhone == artistPhone) &&
            (identical(other.artistGender, artistGender) ||
                other.artistGender == artistGender) &&
            (identical(other.artistState, artistState) ||
                other.artistState == artistState) &&
            (identical(other.artistCity, artistCity) ||
                other.artistCity == artistCity) &&
            (identical(other.artistDistrict, artistDistrict) ||
                other.artistDistrict == artistDistrict) &&
            (identical(other.artistChurch, artistChurch) ||
                other.artistChurch == artistChurch) &&
            (identical(other.artistPromocode, artistPromocode) ||
                other.artistPromocode == artistPromocode) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      artistName,
      artistEmail,
      artistPhone,
      artistGender,
      artistState,
      artistCity,
      artistDistrict,
      artistChurch,
      artistPromocode,
      profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "artist_name") final String? artistName,
      @JsonKey(name: "artist_email") final String? artistEmail,
      @JsonKey(name: "artist_phone") final String? artistPhone,
      @JsonKey(name: "artist_gender") final String? artistGender,
      @JsonKey(name: "artist_state") final String? artistState,
      @JsonKey(name: "artist_city") final String? artistCity,
      @JsonKey(name: "artist_district") final String? artistDistrict,
      @JsonKey(name: "artist_church") final String? artistChurch,
      @JsonKey(name: "artist_promocode") final String? artistPromocode,
      @JsonKey(name: "profile") final String? profile}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "artist_name")
  String? get artistName;
  @override
  @JsonKey(name: "artist_email")
  String? get artistEmail;
  @override
  @JsonKey(name: "artist_phone")
  String? get artistPhone;
  @override
  @JsonKey(name: "artist_gender")
  String? get artistGender;
  @override
  @JsonKey(name: "artist_state")
  String? get artistState;
  @override
  @JsonKey(name: "artist_city")
  String? get artistCity;
  @override
  @JsonKey(name: "artist_district")
  String? get artistDistrict;
  @override
  @JsonKey(name: "artist_church")
  String? get artistChurch;
  @override
  @JsonKey(name: "artist_promocode")
  String? get artistPromocode;
  @override
  @JsonKey(name: "profile")
  String? get profile;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
