// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MusicLibraryModelImpl _$$MusicLibraryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MusicLibraryModelImpl(
      status: json['status'] as String? ?? '',
      artistList: (json['Artist_List'] as List<dynamic>?)
              ?.map((e) => ArtistList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      songList: (json['SongList'] as List<dynamic>?)
              ?.map((e) => SongList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      playList: (json['PlayList'] as List<dynamic>?)
              ?.map((e) => PlayList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      downloadList: (json['DownlaodList'] as List<dynamic>?)
              ?.map((e) => DownloadList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MusicLibraryModelImplToJson(
        _$MusicLibraryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Artist_List': instance.artistList,
      'SongList': instance.songList,
      'PlayList': instance.playList,
      'DownlaodList': instance.downloadList,
    };

_$ArtistListImpl _$$ArtistListImplFromJson(Map<String, dynamic> json) =>
    _$ArtistListImpl(
      artistId: (json['artist_id'] as num?)?.toInt() ?? 0,
      artistName: json['artist_name'] as String? ?? '',
      artistCover: json['artist_cover'] as String? ?? '',
    );

Map<String, dynamic> _$$ArtistListImplToJson(_$ArtistListImpl instance) =>
    <String, dynamic>{
      'artist_id': instance.artistId,
      'artist_name': instance.artistName,
      'artist_cover': instance.artistCover,
    };

_$SongListImpl _$$SongListImplFromJson(Map<String, dynamic> json) =>
    _$SongListImpl(
      songId: (json['song_id'] as num?)?.toInt() ?? 0,
      songTitle: json['song_title'] as String? ?? '',
      songArtist: json['song_artist'] as String? ?? '',
      albumId: json['album_id'] as String? ?? '',
      artistId: (json['artist_id'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
    );

Map<String, dynamic> _$$SongListImplToJson(_$SongListImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'album_id': instance.albumId,
      'artist_id': instance.artistId,
      'type': instance.type,
      'cover': instance.cover,
    };

_$PlayListImpl _$$PlayListImplFromJson(Map<String, dynamic> json) =>
    _$PlayListImpl(
      songId: (json['song_id'] as num?)?.toInt() ?? 0,
      songTitle: json['song_title'] as String? ?? '',
      songArtist: json['song_artist'] as String? ?? '',
      albumId: json['album_id'] as String? ?? '',
      artistId: (json['artist_id'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
    );

Map<String, dynamic> _$$PlayListImplToJson(_$PlayListImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'album_id': instance.albumId,
      'artist_id': instance.artistId,
      'type': instance.type,
      'cover': instance.cover,
    };

_$DownloadListImpl _$$DownloadListImplFromJson(Map<String, dynamic> json) =>
    _$DownloadListImpl(
      songId: (json['song_id'] as num?)?.toInt() ?? 0,
      songTitle: json['song_title'] as String? ?? '',
      songArtist: json['song_artist'] as String? ?? '',
      albumId: json['album_id'] as String? ?? '',
      artistId: (json['artist_id'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
    );

Map<String, dynamic> _$$DownloadListImplToJson(_$DownloadListImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'album_id': instance.albumId,
      'artist_id': instance.artistId,
      'type': instance.type,
      'cover': instance.cover,
    };
