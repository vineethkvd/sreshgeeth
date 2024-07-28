// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashBoardModel _$DashBoardModelFromJson(Map<String, dynamic> json) {
  return _DashBoardModel.fromJson(json);
}

/// @nodoc
mixin _$DashBoardModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "total_subsciption")
  int? get totalSubsciption => throw _privateConstructorUsedError;
  @JsonKey(name: "total_earning")
  String? get totalEarning => throw _privateConstructorUsedError;
  @JsonKey(name: "follower")
  int? get follower => throw _privateConstructorUsedError;
  @JsonKey(name: "songs")
  int? get songs => throw _privateConstructorUsedError;
  @JsonKey(name: "totalplaytime")
  String? get totalplaytime => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Data>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "song_list")
  List<SongList>? get songList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashBoardModelCopyWith<DashBoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashBoardModelCopyWith<$Res> {
  factory $DashBoardModelCopyWith(
          DashBoardModel value, $Res Function(DashBoardModel) then) =
      _$DashBoardModelCopyWithImpl<$Res, DashBoardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "total_subsciption") int? totalSubsciption,
      @JsonKey(name: "total_earning") String? totalEarning,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "songs") int? songs,
      @JsonKey(name: "totalplaytime") String? totalplaytime,
      @JsonKey(name: "data") List<Data>? data,
      @JsonKey(name: "song_list") List<SongList>? songList});
}

/// @nodoc
class _$DashBoardModelCopyWithImpl<$Res, $Val extends DashBoardModel>
    implements $DashBoardModelCopyWith<$Res> {
  _$DashBoardModelCopyWithImpl(this._value, this._then);

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
    Object? follower = freezed,
    Object? songs = freezed,
    Object? totalplaytime = freezed,
    Object? data = freezed,
    Object? songList = freezed,
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
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
      songs: freezed == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as int?,
      totalplaytime: freezed == totalplaytime
          ? _value.totalplaytime
          : totalplaytime // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      songList: freezed == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<SongList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashBoardModelImplCopyWith<$Res>
    implements $DashBoardModelCopyWith<$Res> {
  factory _$$DashBoardModelImplCopyWith(_$DashBoardModelImpl value,
          $Res Function(_$DashBoardModelImpl) then) =
      __$$DashBoardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "total_subsciption") int? totalSubsciption,
      @JsonKey(name: "total_earning") String? totalEarning,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "songs") int? songs,
      @JsonKey(name: "totalplaytime") String? totalplaytime,
      @JsonKey(name: "data") List<Data>? data,
      @JsonKey(name: "song_list") List<SongList>? songList});
}

/// @nodoc
class __$$DashBoardModelImplCopyWithImpl<$Res>
    extends _$DashBoardModelCopyWithImpl<$Res, _$DashBoardModelImpl>
    implements _$$DashBoardModelImplCopyWith<$Res> {
  __$$DashBoardModelImplCopyWithImpl(
      _$DashBoardModelImpl _value, $Res Function(_$DashBoardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalSubsciption = freezed,
    Object? totalEarning = freezed,
    Object? follower = freezed,
    Object? songs = freezed,
    Object? totalplaytime = freezed,
    Object? data = freezed,
    Object? songList = freezed,
  }) {
    return _then(_$DashBoardModelImpl(
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
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
      songs: freezed == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as int?,
      totalplaytime: freezed == totalplaytime
          ? _value.totalplaytime
          : totalplaytime // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      songList: freezed == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<SongList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashBoardModelImpl implements _DashBoardModel {
  const _$DashBoardModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "total_subsciption") this.totalSubsciption,
      @JsonKey(name: "total_earning") this.totalEarning,
      @JsonKey(name: "follower") this.follower,
      @JsonKey(name: "songs") this.songs,
      @JsonKey(name: "totalplaytime") this.totalplaytime,
      @JsonKey(name: "data") final List<Data>? data,
      @JsonKey(name: "song_list") final List<SongList>? songList})
      : _data = data,
        _songList = songList;

  factory _$DashBoardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashBoardModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "total_subsciption")
  final int? totalSubsciption;
  @override
  @JsonKey(name: "total_earning")
  final String? totalEarning;
  @override
  @JsonKey(name: "follower")
  final int? follower;
  @override
  @JsonKey(name: "songs")
  final int? songs;
  @override
  @JsonKey(name: "totalplaytime")
  final String? totalplaytime;
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

  final List<SongList>? _songList;
  @override
  @JsonKey(name: "song_list")
  List<SongList>? get songList {
    final value = _songList;
    if (value == null) return null;
    if (_songList is EqualUnmodifiableListView) return _songList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashBoardModel(status: $status, totalSubsciption: $totalSubsciption, totalEarning: $totalEarning, follower: $follower, songs: $songs, totalplaytime: $totalplaytime, data: $data, songList: $songList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashBoardModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalSubsciption, totalSubsciption) ||
                other.totalSubsciption == totalSubsciption) &&
            (identical(other.totalEarning, totalEarning) ||
                other.totalEarning == totalEarning) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.songs, songs) || other.songs == songs) &&
            (identical(other.totalplaytime, totalplaytime) ||
                other.totalplaytime == totalplaytime) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._songList, _songList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      totalSubsciption,
      totalEarning,
      follower,
      songs,
      totalplaytime,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_songList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashBoardModelImplCopyWith<_$DashBoardModelImpl> get copyWith =>
      __$$DashBoardModelImplCopyWithImpl<_$DashBoardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashBoardModelImplToJson(
      this,
    );
  }
}

abstract class _DashBoardModel implements DashBoardModel {
  const factory _DashBoardModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "total_subsciption") final int? totalSubsciption,
          @JsonKey(name: "total_earning") final String? totalEarning,
          @JsonKey(name: "follower") final int? follower,
          @JsonKey(name: "songs") final int? songs,
          @JsonKey(name: "totalplaytime") final String? totalplaytime,
          @JsonKey(name: "data") final List<Data>? data,
          @JsonKey(name: "song_list") final List<SongList>? songList}) =
      _$DashBoardModelImpl;

  factory _DashBoardModel.fromJson(Map<String, dynamic> json) =
      _$DashBoardModelImpl.fromJson;

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
  @JsonKey(name: "follower")
  int? get follower;
  @override
  @JsonKey(name: "songs")
  int? get songs;
  @override
  @JsonKey(name: "totalplaytime")
  String? get totalplaytime;
  @override
  @JsonKey(name: "data")
  List<Data>? get data;
  @override
  @JsonKey(name: "song_list")
  List<SongList>? get songList;
  @override
  @JsonKey(ignore: true)
  _$$DashBoardModelImplCopyWith<_$DashBoardModelImpl> get copyWith =>
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

SongList _$SongListFromJson(Map<String, dynamic> json) {
  return _SongList.fromJson(json);
}

/// @nodoc
mixin _$SongList {
  @JsonKey(name: "rj_song_id")
  int? get rjSongId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_title")
  String? get rjSongTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;
  @JsonKey(name: "add_date")
  String? get addDate => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "playtime")
  String? get playtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongListCopyWith<SongList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongListCopyWith<$Res> {
  factory $SongListCopyWith(SongList value, $Res Function(SongList) then) =
      _$SongListCopyWithImpl<$Res, SongList>;
  @useResult
  $Res call(
      {@JsonKey(name: "rj_song_id") int? rjSongId,
      @JsonKey(name: "rj_song_title") String? rjSongTitle,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "add_date") String? addDate,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "playtime") String? playtime});
}

/// @nodoc
class _$SongListCopyWithImpl<$Res, $Val extends SongList>
    implements $SongListCopyWith<$Res> {
  _$SongListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjSongId = freezed,
    Object? rjSongTitle = freezed,
    Object? cover = freezed,
    Object? addDate = freezed,
    Object? status = freezed,
    Object? playtime = freezed,
  }) {
    return _then(_value.copyWith(
      rjSongId: freezed == rjSongId
          ? _value.rjSongId
          : rjSongId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongTitle: freezed == rjSongTitle
          ? _value.rjSongTitle
          : rjSongTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      addDate: freezed == addDate
          ? _value.addDate
          : addDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      playtime: freezed == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongListImplCopyWith<$Res>
    implements $SongListCopyWith<$Res> {
  factory _$$SongListImplCopyWith(
          _$SongListImpl value, $Res Function(_$SongListImpl) then) =
      __$$SongListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rj_song_id") int? rjSongId,
      @JsonKey(name: "rj_song_title") String? rjSongTitle,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "add_date") String? addDate,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "playtime") String? playtime});
}

/// @nodoc
class __$$SongListImplCopyWithImpl<$Res>
    extends _$SongListCopyWithImpl<$Res, _$SongListImpl>
    implements _$$SongListImplCopyWith<$Res> {
  __$$SongListImplCopyWithImpl(
      _$SongListImpl _value, $Res Function(_$SongListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjSongId = freezed,
    Object? rjSongTitle = freezed,
    Object? cover = freezed,
    Object? addDate = freezed,
    Object? status = freezed,
    Object? playtime = freezed,
  }) {
    return _then(_$SongListImpl(
      rjSongId: freezed == rjSongId
          ? _value.rjSongId
          : rjSongId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongTitle: freezed == rjSongTitle
          ? _value.rjSongTitle
          : rjSongTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      addDate: freezed == addDate
          ? _value.addDate
          : addDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      playtime: freezed == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongListImpl implements _SongList {
  const _$SongListImpl(
      {@JsonKey(name: "rj_song_id") this.rjSongId,
      @JsonKey(name: "rj_song_title") this.rjSongTitle,
      @JsonKey(name: "cover") this.cover,
      @JsonKey(name: "add_date") this.addDate,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "playtime") this.playtime});

  factory _$SongListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongListImplFromJson(json);

  @override
  @JsonKey(name: "rj_song_id")
  final int? rjSongId;
  @override
  @JsonKey(name: "rj_song_title")
  final String? rjSongTitle;
  @override
  @JsonKey(name: "cover")
  final String? cover;
  @override
  @JsonKey(name: "add_date")
  final String? addDate;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "playtime")
  final String? playtime;

  @override
  String toString() {
    return 'SongList(rjSongId: $rjSongId, rjSongTitle: $rjSongTitle, cover: $cover, addDate: $addDate, status: $status, playtime: $playtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongListImpl &&
            (identical(other.rjSongId, rjSongId) ||
                other.rjSongId == rjSongId) &&
            (identical(other.rjSongTitle, rjSongTitle) ||
                other.rjSongTitle == rjSongTitle) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.addDate, addDate) || other.addDate == addDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.playtime, playtime) ||
                other.playtime == playtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, rjSongId, rjSongTitle, cover, addDate, status, playtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongListImplCopyWith<_$SongListImpl> get copyWith =>
      __$$SongListImplCopyWithImpl<_$SongListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongListImplToJson(
      this,
    );
  }
}

abstract class _SongList implements SongList {
  const factory _SongList(
      {@JsonKey(name: "rj_song_id") final int? rjSongId,
      @JsonKey(name: "rj_song_title") final String? rjSongTitle,
      @JsonKey(name: "cover") final String? cover,
      @JsonKey(name: "add_date") final String? addDate,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "playtime") final String? playtime}) = _$SongListImpl;

  factory _SongList.fromJson(Map<String, dynamic> json) =
      _$SongListImpl.fromJson;

  @override
  @JsonKey(name: "rj_song_id")
  int? get rjSongId;
  @override
  @JsonKey(name: "rj_song_title")
  String? get rjSongTitle;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(name: "add_date")
  String? get addDate;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "playtime")
  String? get playtime;
  @override
  @JsonKey(ignore: true)
  _$$SongListImplCopyWith<_$SongListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
