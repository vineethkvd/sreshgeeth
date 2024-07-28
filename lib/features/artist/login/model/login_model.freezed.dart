// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtistLoginModel _$ArtistLoginModelFromJson(Map<String, dynamic> json) {
  return _ArtistLoginModel.fromJson(json);
}

/// @nodoc
mixin _$ArtistLoginModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistLoginModelCopyWith<ArtistLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistLoginModelCopyWith<$Res> {
  factory $ArtistLoginModelCopyWith(
          ArtistLoginModel value, $Res Function(ArtistLoginModel) then) =
      _$ArtistLoginModelCopyWithImpl<$Res, ArtistLoginModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class _$ArtistLoginModelCopyWithImpl<$Res, $Val extends ArtistLoginModel>
    implements $ArtistLoginModelCopyWith<$Res> {
  _$ArtistLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? phone = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistLoginModelImplCopyWith<$Res>
    implements $ArtistLoginModelCopyWith<$Res> {
  factory _$$ArtistLoginModelImplCopyWith(_$ArtistLoginModelImpl value,
          $Res Function(_$ArtistLoginModelImpl) then) =
      __$$ArtistLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class __$$ArtistLoginModelImplCopyWithImpl<$Res>
    extends _$ArtistLoginModelCopyWithImpl<$Res, _$ArtistLoginModelImpl>
    implements _$$ArtistLoginModelImplCopyWith<$Res> {
  __$$ArtistLoginModelImplCopyWithImpl(_$ArtistLoginModelImpl _value,
      $Res Function(_$ArtistLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? phone = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ArtistLoginModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
class _$ArtistLoginModelImpl implements _ArtistLoginModel {
  const _$ArtistLoginModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "data") final List<Data>? data})
      : _data = data;

  factory _$ArtistLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistLoginModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "phone")
  final String? phone;
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
    return 'ArtistLoginModel(status: $status, msg: $msg, phone: $phone, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistLoginModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, phone,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistLoginModelImplCopyWith<_$ArtistLoginModelImpl> get copyWith =>
      __$$ArtistLoginModelImplCopyWithImpl<_$ArtistLoginModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistLoginModelImplToJson(
      this,
    );
  }
}

abstract class _ArtistLoginModel implements ArtistLoginModel {
  const factory _ArtistLoginModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "msg") final String? msg,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "data") final List<Data>? data}) = _$ArtistLoginModelImpl;

  factory _ArtistLoginModel.fromJson(Map<String, dynamic> json) =
      _$ArtistLoginModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "data")
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ArtistLoginModelImplCopyWith<_$ArtistLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "artist_id")
  int? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_name")
  String? get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_status")
  int? get artistStatus => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "artist_name") String? artistName,
      @JsonKey(name: "artist_status") int? artistStatus});
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
    Object? artistId = freezed,
    Object? artistName = freezed,
    Object? artistStatus = freezed,
  }) {
    return _then(_value.copyWith(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistStatus: freezed == artistStatus
          ? _value.artistStatus
          : artistStatus // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "artist_name") String? artistName,
      @JsonKey(name: "artist_status") int? artistStatus});
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
    Object? artistId = freezed,
    Object? artistName = freezed,
    Object? artistStatus = freezed,
  }) {
    return _then(_$DataImpl(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistStatus: freezed == artistStatus
          ? _value.artistStatus
          : artistStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "artist_id") this.artistId,
      @JsonKey(name: "artist_name") this.artistName,
      @JsonKey(name: "artist_status") this.artistStatus});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "artist_id")
  final int? artistId;
  @override
  @JsonKey(name: "artist_name")
  final String? artistName;
  @override
  @JsonKey(name: "artist_status")
  final int? artistStatus;

  @override
  String toString() {
    return 'Data(artistId: $artistId, artistName: $artistName, artistStatus: $artistStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.artistStatus, artistStatus) ||
                other.artistStatus == artistStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, artistId, artistName, artistStatus);

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
      {@JsonKey(name: "artist_id") final int? artistId,
      @JsonKey(name: "artist_name") final String? artistName,
      @JsonKey(name: "artist_status") final int? artistStatus}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "artist_id")
  int? get artistId;
  @override
  @JsonKey(name: "artist_name")
  String? get artistName;
  @override
  @JsonKey(name: "artist_status")
  int? get artistStatus;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
