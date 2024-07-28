// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistLoginModelImpl _$$ArtistLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistLoginModelImpl(
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
      phone: json['phone'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistLoginModelImplToJson(
        _$ArtistLoginModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'phone': instance.phone,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      artistId: (json['artist_id'] as num?)?.toInt(),
      artistName: json['artist_name'] as String?,
      artistStatus: (json['artist_status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'artist_id': instance.artistId,
      'artist_name': instance.artistName,
      'artist_status': instance.artistStatus,
    };
