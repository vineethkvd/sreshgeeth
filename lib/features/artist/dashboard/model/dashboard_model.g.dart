// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashBoardModelImpl _$$DashBoardModelImplFromJson(Map<String, dynamic> json) =>
    _$DashBoardModelImpl(
      status: json['status'] as bool?,
      totalSubsciption: (json['total_subsciption'] as num?)?.toInt(),
      totalEarning: json['total_earning'] as String?,
      follower: (json['follower'] as num?)?.toInt(),
      songs: (json['songs'] as num?)?.toInt(),
      totalplaytime: json['totalplaytime'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      songList: (json['song_list'] as List<dynamic>?)
          ?.map((e) => SongList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashBoardModelImplToJson(
        _$DashBoardModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_subsciption': instance.totalSubsciption,
      'total_earning': instance.totalEarning,
      'follower': instance.follower,
      'songs': instance.songs,
      'totalplaytime': instance.totalplaytime,
      'data': instance.data,
      'song_list': instance.songList,
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

_$SongListImpl _$$SongListImplFromJson(Map<String, dynamic> json) =>
    _$SongListImpl(
      rjSongId: (json['rj_song_id'] as num?)?.toInt(),
      rjSongTitle: json['rj_song_title'] as String?,
      cover: json['cover'] as String?,
      addDate: json['add_date'] as String?,
      status: json['status'] as String?,
      playtime: json['playtime'] as String?,
    );

Map<String, dynamic> _$$SongListImplToJson(_$SongListImpl instance) =>
    <String, dynamic>{
      'rj_song_id': instance.rjSongId,
      'rj_song_title': instance.rjSongTitle,
      'cover': instance.cover,
      'add_date': instance.addDate,
      'status': instance.status,
      'playtime': instance.playtime,
    };
