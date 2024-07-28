import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "Banner") List<Banner>? banner,
    @JsonKey(name: "Album") List<Album>? album,
    @JsonKey(name: "Trending_song") List<TrendingSong>? trendingSong,
    @JsonKey(name: "Ads_banner") List<AdsBanner>? adsBanner,
    @JsonKey(name: "Artist") List<Artist>? artist,
    @JsonKey(name: "Gener") List<Gener>? gener,
    @JsonKey(name: "PlayList") List<PlayList>? playList,
    @JsonKey(name: "Live_podcast") List<LivePodcast>? livePodcast,
    @JsonKey(name: "Popular_song") List<PopularSong>? popularSong,
    @JsonKey(name: "Top_artist") List<TopArtist>? topArtist,
    @JsonKey(name: "Workship_songs") List<WorkshipSong>? workshipSongs,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);
}

@freezed
class Banner with _$Banner {
  const factory Banner({
    @JsonKey(name: "banner_id") int? bannerId,
    @JsonKey(name: "banner_title") String? bannerTitle,
    @JsonKey(name: "banner") String? banner,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    @JsonKey(name: "album_id") int? albumId,
    @JsonKey(name: "ablum_title") String? albumTitle,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "cover") String? cover,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class PlayList with _$PlayList {
  const factory PlayList({
    @JsonKey(name: "song_id") int? songId,
    @JsonKey(name: "song_title") String? songTitle,
    @JsonKey(name: "song_artist") String? songArtist,
    @JsonKey(name: "album_id") String? albumId,
    @JsonKey(name: "artist_id") int? artistId,
    @JsonKey(name: "song_type") String? songType,
    @JsonKey(name: "cover") String? cover,
  }) = _PlayList;

  factory PlayList.fromJson(Map<String, dynamic> json) => _$PlayListFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    @JsonKey(name: "rj_artist_id") int? rjArtistId,
    @JsonKey(name: "rj_artist_name") String? rjArtistName,
    @JsonKey(name: "cover") String? cover,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Gener with _$Gener {
  const factory Gener({
    @JsonKey(name: "rj_geners_id") int? rjGenersId,
    @JsonKey(name: "rj_geners_name") String? rjGenersName,
    @JsonKey(name: "cover") String? cover,
  }) = _Gener;

  factory Gener.fromJson(Map<String, dynamic> json) => _$GenerFromJson(json);
}

@freezed
class LivePodcast with _$LivePodcast {
  const factory LivePodcast({
    @JsonKey(name: "podcast_id") String? podcastId,
    @JsonKey(name: "podcast_title") String? podcastTitle,
    @JsonKey(name: "cover") String? cover,
  }) = _LivePodcast;

  factory LivePodcast.fromJson(Map<String, dynamic> json) => _$LivePodcastFromJson(json);
}

@freezed
class WorkshipSong with _$WorkshipSong {
  const factory WorkshipSong({
    @JsonKey(name: "song_id") String? songId,
    @JsonKey(name: "song_title") String? songTitle,
    @JsonKey(name: "song_artist") String? songArtist,
    @JsonKey(name: "album_id") String? albumId,
    @JsonKey(name: "artist_id") String? artistId,
    @JsonKey(name: "cover") String? cover,
  }) = _WorkshipSong;

  factory WorkshipSong.fromJson(Map<String, dynamic> json) => _$WorkshipSongFromJson(json);
}

@freezed
class AdsBanner with _$AdsBanner {
  const factory AdsBanner({
    @JsonKey(name: "banner_id") int? bannerId,
    @JsonKey(name: "banner_title") String? bannerTitle,
    @JsonKey(name: "banner") String? banner,
  }) = _AdsBanner;

  factory AdsBanner.fromJson(Map<String, dynamic> json) => _$AdsBannerFromJson(json);
}

@freezed
class TrendingSong with _$TrendingSong {
  const factory TrendingSong({
    @JsonKey(name: "song_id") int? songId,
    @JsonKey(name: "song_title") String? songTitle,
    @JsonKey(name: "song_artist") String? songArtist,
    @JsonKey(name: "album_id") String? albumId,
    @JsonKey(name: "artist_id") int? artistId,
    @JsonKey(name: "song_type") String? songType,
    @JsonKey(name: "cover") String? cover,
  }) = _TrendingSong;

  factory TrendingSong.fromJson(Map<String, dynamic> json) => _$TrendingSongFromJson(json);
}

@freezed
class PopularSong with _$PopularSong {
  const factory PopularSong({
    @JsonKey(name: "song_id") int? songId,
    @JsonKey(name: "song_title") String? songTitle,
    @JsonKey(name: "song_artist") String? songArtist,
    @JsonKey(name: "album_id") String? albumId,
    @JsonKey(name: "artist_id") int? artistId,
    @JsonKey(name: "song_type") String? songType,
    @JsonKey(name: "cover") String? cover,
  }) = _PopularSong;

  factory PopularSong.fromJson(Map<String, dynamic> json) => _$PopularSongFromJson(json);
}

@freezed
class TopArtist with _$TopArtist {
  const factory TopArtist({
    @JsonKey(name: "rj_artist_id") int? rjArtistId,
    @JsonKey(name: "rj_artist_name") String? rjArtistName,
    @JsonKey(name: "cover") String? cover,
  }) = _TopArtist;

  factory TopArtist.fromJson(Map<String, dynamic> json) => _$TopArtistFromJson(json);
}
