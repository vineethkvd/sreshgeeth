// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardModelImpl _$$DashboardModelImplFromJson(Map<String, dynamic> json) =>
    _$DashboardModelImpl(
      status: json['status'] as String?,
      banner: (json['Banner'] as List<dynamic>?)
          ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: (json['Album'] as List<dynamic>?)
          ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
      trendingSong: (json['Trending_song'] as List<dynamic>?)
          ?.map((e) => TrendingSong.fromJson(e as Map<String, dynamic>))
          .toList(),
      adsBanner: (json['Ads_banner'] as List<dynamic>?)
          ?.map((e) => AdsBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      artist: (json['Artist'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      gener: (json['Gener'] as List<dynamic>?)
          ?.map((e) => Gener.fromJson(e as Map<String, dynamic>))
          .toList(),
      playList: (json['PlayList'] as List<dynamic>?)
          ?.map((e) => PlayList.fromJson(e as Map<String, dynamic>))
          .toList(),
      livePodcast: (json['Live_podcast'] as List<dynamic>?)
          ?.map((e) => LivePodcast.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularSong: (json['Popular_song'] as List<dynamic>?)
          ?.map((e) => PopularSong.fromJson(e as Map<String, dynamic>))
          .toList(),
      topArtist: (json['Top_artist'] as List<dynamic>?)
          ?.map((e) => TopArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      workshipSongs: (json['Workship_songs'] as List<dynamic>?)
          ?.map((e) => WorkshipSong.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashboardModelImplToJson(
        _$DashboardModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Banner': instance.banner,
      'Album': instance.album,
      'Trending_song': instance.trendingSong,
      'Ads_banner': instance.adsBanner,
      'Artist': instance.artist,
      'Gener': instance.gener,
      'PlayList': instance.playList,
      'Live_podcast': instance.livePodcast,
      'Popular_song': instance.popularSong,
      'Top_artist': instance.topArtist,
      'Workship_songs': instance.workshipSongs,
    };

_$BannerImpl _$$BannerImplFromJson(Map<String, dynamic> json) => _$BannerImpl(
      bannerId: (json['banner_id'] as num?)?.toInt(),
      bannerTitle: json['banner_title'] as String?,
      banner: json['banner'] as String?,
    );

Map<String, dynamic> _$$BannerImplToJson(_$BannerImpl instance) =>
    <String, dynamic>{
      'banner_id': instance.bannerId,
      'banner_title': instance.bannerTitle,
      'banner': instance.banner,
    };

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      albumId: (json['album_id'] as num?)?.toInt(),
      albumTitle: json['ablum_title'] as String?,
      type: json['type'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'album_id': instance.albumId,
      'ablum_title': instance.albumTitle,
      'type': instance.type,
      'cover': instance.cover,
    };

_$PlayListImpl _$$PlayListImplFromJson(Map<String, dynamic> json) =>
    _$PlayListImpl(
      songId: (json['song_id'] as num?)?.toInt(),
      songTitle: json['song_title'] as String?,
      songArtist: json['song_artist'] as String?,
      albumId: json['album_id'] as String?,
      artistId: (json['artist_id'] as num?)?.toInt(),
      songType: json['song_type'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$PlayListImplToJson(_$PlayListImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'album_id': instance.albumId,
      'artist_id': instance.artistId,
      'song_type': instance.songType,
      'cover': instance.cover,
    };

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      rjArtistId: (json['rj_artist_id'] as num?)?.toInt(),
      rjArtistName: json['rj_artist_name'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'rj_artist_id': instance.rjArtistId,
      'rj_artist_name': instance.rjArtistName,
      'cover': instance.cover,
    };

_$GenerImpl _$$GenerImplFromJson(Map<String, dynamic> json) => _$GenerImpl(
      rjGenersId: (json['rj_geners_id'] as num?)?.toInt(),
      rjGenersName: json['rj_geners_name'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$GenerImplToJson(_$GenerImpl instance) =>
    <String, dynamic>{
      'rj_geners_id': instance.rjGenersId,
      'rj_geners_name': instance.rjGenersName,
      'cover': instance.cover,
    };

_$LivePodcastImpl _$$LivePodcastImplFromJson(Map<String, dynamic> json) =>
    _$LivePodcastImpl(
      podcastId: json['podcast_id'] as String?,
      podcastTitle: json['podcast_title'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$LivePodcastImplToJson(_$LivePodcastImpl instance) =>
    <String, dynamic>{
      'podcast_id': instance.podcastId,
      'podcast_title': instance.podcastTitle,
      'cover': instance.cover,
    };

_$WorkshipSongImpl _$$WorkshipSongImplFromJson(Map<String, dynamic> json) =>
    _$WorkshipSongImpl(
      songId: json['song_id'] as String?,
      songTitle: json['song_title'] as String?,
      songArtist: json['song_artist'] as String?,
      albumId: json['album_id'] as String?,
      artistId: json['artist_id'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$WorkshipSongImplToJson(_$WorkshipSongImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'album_id': instance.albumId,
      'artist_id': instance.artistId,
      'cover': instance.cover,
    };

_$AdsBannerImpl _$$AdsBannerImplFromJson(Map<String, dynamic> json) =>
    _$AdsBannerImpl(
      bannerId: (json['banner_id'] as num?)?.toInt(),
      bannerTitle: json['banner_title'] as String?,
      banner: json['banner'] as String?,
    );

Map<String, dynamic> _$$AdsBannerImplToJson(_$AdsBannerImpl instance) =>
    <String, dynamic>{
      'banner_id': instance.bannerId,
      'banner_title': instance.bannerTitle,
      'banner': instance.banner,
    };

_$TrendingSongImpl _$$TrendingSongImplFromJson(Map<String, dynamic> json) =>
    _$TrendingSongImpl(
      songId: (json['song_id'] as num?)?.toInt(),
      songTitle: json['song_title'] as String?,
      songArtist: json['song_artist'] as String?,
      albumId: json['album_id'] as String?,
      artistId: (json['artist_id'] as num?)?.toInt(),
      songType: json['song_type'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$TrendingSongImplToJson(_$TrendingSongImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'album_id': instance.albumId,
      'artist_id': instance.artistId,
      'song_type': instance.songType,
      'cover': instance.cover,
    };

_$PopularSongImpl _$$PopularSongImplFromJson(Map<String, dynamic> json) =>
    _$PopularSongImpl(
      songId: (json['song_id'] as num?)?.toInt(),
      songTitle: json['song_title'] as String?,
      songArtist: json['song_artist'] as String?,
      albumId: json['album_id'] as String?,
      artistId: (json['artist_id'] as num?)?.toInt(),
      songType: json['song_type'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$PopularSongImplToJson(_$PopularSongImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'song_title': instance.songTitle,
      'song_artist': instance.songArtist,
      'album_id': instance.albumId,
      'artist_id': instance.artistId,
      'song_type': instance.songType,
      'cover': instance.cover,
    };

_$TopArtistImpl _$$TopArtistImplFromJson(Map<String, dynamic> json) =>
    _$TopArtistImpl(
      rjArtistId: (json['rj_artist_id'] as num?)?.toInt(),
      rjArtistName: json['rj_artist_name'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$TopArtistImplToJson(_$TopArtistImpl instance) =>
    <String, dynamic>{
      'rj_artist_id': instance.rjArtistId,
      'rj_artist_name': instance.rjArtistName,
      'cover': instance.cover,
    };
