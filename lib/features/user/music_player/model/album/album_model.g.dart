// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumModelImpl _$$AlbumModelImplFromJson(Map<String, dynamic> json) =>
    _$AlbumModelImpl(
      status: json['status'] as String? ?? '',
      totalCount: json['total_count'] as String? ?? '',
      album: (json['Album'] as List<dynamic>?)
              ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      song: (json['Song'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      otherAlbum: (json['Other_album'] as List<dynamic>?)
              ?.map((e) => OtherAlbum.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      genersSongsList: (json['Geners Songs List'] as List<dynamic>?)
              ?.map((e) => GenersSongsList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AlbumModelImplToJson(_$AlbumModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_count': instance.totalCount,
      'Album': instance.album,
      'Song': instance.song,
      'Other_album': instance.otherAlbum,
      'Geners Songs List': instance.genersSongsList,
    };

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      albumId: (json['album_id'] as num?)?.toInt() ?? 0,
      ablumTitle: json['ablum_title'] as String? ?? '',
      artistName: json['artist_name'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'album_id': instance.albumId,
      'ablum_title': instance.ablumTitle,
      'artist_name': instance.artistName,
      'cover': instance.cover,
    };

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
      songId: (json['song_id'] as num?)?.toInt() ?? 0,
      songTitle: json['song_title'] as String? ?? '',
      songArtist: json['song_artist'] as String? ?? '',
      songAlbumId: json['song_album_id'] as String? ?? '',
      songLink: json['song_link'] as String? ?? '',
      type: json['type'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
      likeStatus: json['like_status'] as bool? ?? false,
    );

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'song_album_id': instance.songAlbumId,
      'song_link': instance.songLink,
      'type': instance.type,
      'cover': instance.cover,
      'like_status': instance.likeStatus,
    };

_$OtherAlbumImpl _$$OtherAlbumImplFromJson(Map<String, dynamic> json) =>
    _$OtherAlbumImpl(
      albumId: (json['album_id'] as num?)?.toInt() ?? 0,
      ablumTitle: json['ablum_title'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
    );

Map<String, dynamic> _$$OtherAlbumImplToJson(_$OtherAlbumImpl instance) =>
    <String, dynamic>{
      'album_id': instance.albumId,
      'ablum_title': instance.ablumTitle,
      'cover': instance.cover,
    };

_$GenersSongsListImpl _$$GenersSongsListImplFromJson(
        Map<String, dynamic> json) =>
    _$GenersSongsListImpl(
      rjSongId: (json['rj_song_id'] as num?)?.toInt() ?? 0,
      rjSongAblumId: json['rj_song_ablum_id'] as String? ?? '',
      rjArtistId: (json['rj_artist_id'] as num?)?.toInt() ?? 0,
      rjSongTrackType: json['rj_song_track_type'] as String? ?? '',
      rjSongInstrumentType: json['rj_song_instrument_type'] as String? ?? '',
      rjSongTitle: json['rj_song_title'] as String? ?? '',
      rjSongProductionHouse: json['rj_song_production_house'] as String? ?? '',
      rjSongArtist: json['rj_song_artist'] as String? ?? '',
      rjSongFeaturing: json['rj_song_featuring'] as String? ?? '',
      rjSongLyricist: json['rj_song_lyricist'] as String? ?? '',
      rjSongComposition: json['rj_song_composition'] as String? ?? '',
      rjSongMusic: json['rj_song_music'] as String? ?? '',
      rjSongProductionYear: json['rj_song_production_year'] as String? ?? '',
      rjSongIsrcCode: json['rj_song_isrc_code'] as String? ?? '',
      rjSongGenere: json['rj_song_genere'] as String? ?? '',
      rjSongParentalAdvisory:
          json['rj_song_parental_advisory'] as String? ?? '',
      rjSongLyricsLanguage: json['rj_song_lyrics_language'] as String? ?? '',
      rjSongLabelName: json['rj_song_label_name'] as String? ?? '',
      rjSongDateOfProduction:
          json['rj_song_date_of_production'] as String? ?? '',
      rjSongAudio: json['rj_song_audio'] as String? ?? '',
      rjSongVocals: json['rj_song_vocals'] as String? ?? '',
      rjSongCover: json['rj_song_cover'] as String? ?? '',
      rjSongAddedDate: json['rj_song_added_date'] as String? ?? '',
      rjSongApprovedStatus:
          (json['rj_song_approved_status'] as num?)?.toInt() ?? 0,
      rjSongApprovedBy: (json['rj_song_approved_by'] as num?)?.toInt() ?? 0,
      rjSongStatus: (json['rj_song_status'] as num?)?.toInt() ?? 0,
      rjSongIsDeleted: (json['rj_song_isDeleted'] as num?)?.toInt() ?? 0,
      rjSingersName: json['rj_singers_name'] as String? ?? '',
      approveStatus: (json['approve_status'] as num?)?.toInt() ?? 0,
      updateDate: json['update_date'] as String? ?? '',
    );

Map<String, dynamic> _$$GenersSongsListImplToJson(
        _$GenersSongsListImpl instance) =>
    <String, dynamic>{
      'rj_song_id': instance.rjSongId,
      'rj_song_ablum_id': instance.rjSongAblumId,
      'rj_artist_id': instance.rjArtistId,
      'rj_song_track_type': instance.rjSongTrackType,
      'rj_song_instrument_type': instance.rjSongInstrumentType,
      'rj_song_title': instance.rjSongTitle,
      'rj_song_production_house': instance.rjSongProductionHouse,
      'rj_song_artist': instance.rjSongArtist,
      'rj_song_featuring': instance.rjSongFeaturing,
      'rj_song_lyricist': instance.rjSongLyricist,
      'rj_song_composition': instance.rjSongComposition,
      'rj_song_music': instance.rjSongMusic,
      'rj_song_production_year': instance.rjSongProductionYear,
      'rj_song_isrc_code': instance.rjSongIsrcCode,
      'rj_song_genere': instance.rjSongGenere,
      'rj_song_parental_advisory': instance.rjSongParentalAdvisory,
      'rj_song_lyrics_language': instance.rjSongLyricsLanguage,
      'rj_song_label_name': instance.rjSongLabelName,
      'rj_song_date_of_production': instance.rjSongDateOfProduction,
      'rj_song_audio': instance.rjSongAudio,
      'rj_song_vocals': instance.rjSongVocals,
      'rj_song_cover': instance.rjSongCover,
      'rj_song_added_date': instance.rjSongAddedDate,
      'rj_song_approved_status': instance.rjSongApprovedStatus,
      'rj_song_approved_by': instance.rjSongApprovedBy,
      'rj_song_status': instance.rjSongStatus,
      'rj_song_isDeleted': instance.rjSongIsDeleted,
      'rj_singers_name': instance.rjSingersName,
      'approve_status': instance.approveStatus,
      'update_date': instance.updateDate,
    };
