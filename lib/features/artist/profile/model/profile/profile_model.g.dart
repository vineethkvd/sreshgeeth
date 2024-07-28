// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistProfileModelImpl _$$ArtistProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistProfileModelImpl(
      status: json['status'] as bool?,
      totalSubsciption: (json['total_subsciption'] as num?)?.toInt(),
      totalEarning: json['total_earning'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistProfileModelImplToJson(
        _$ArtistProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_subsciption': instance.totalSubsciption,
      'total_earning': instance.totalEarning,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      artistName: json['artist_name'] as String?,
      artistEmail: json['artist_email'] as String?,
      artistPhone: json['artist_phone'] as String?,
      artistGender: json['artist_gender'] as String?,
      artistState: json['artist_state'] as String?,
      artistCity: json['artist_city'] as String?,
      artistDistrict: json['artist_district'] as String?,
      artistChurch: json['artist_church'] as String?,
      artistPromocode: json['artist_promocode'] as String?,
      profile: json['profile'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'artist_name': instance.artistName,
      'artist_email': instance.artistEmail,
      'artist_phone': instance.artistPhone,
      'artist_gender': instance.artistGender,
      'artist_state': instance.artistState,
      'artist_city': instance.artistCity,
      'artist_district': instance.artistDistrict,
      'artist_church': instance.artistChurch,
      'artist_promocode': instance.artistPromocode,
      'profile': instance.profile,
    };
