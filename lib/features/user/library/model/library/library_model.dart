import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_model.freezed.dart';
part 'library_model.g.dart';

@freezed
class MusicLibraryModel with _$MusicLibraryModel {
  const factory MusicLibraryModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'Artist_List') @Default([]) List<ArtistList>? artistList,
    @JsonKey(name: 'SongList') @Default([]) List<SongList>? songList,
    @JsonKey(name: 'PlayList') @Default([]) List<PlayList>? playList,
    @JsonKey(name: 'DownlaodList') @Default([]) List<DownloadList>? downloadList,
  }) = _MusicLibraryModel;

  factory MusicLibraryModel.fromJson(Map<String, dynamic> json) =>
      _$MusicLibraryModelFromJson(json);
}

@freezed
class ArtistList with _$ArtistList {
  const factory ArtistList({
    @JsonKey(name: 'artist_id') @Default(0) int? artistId,
    @JsonKey(name: 'artist_name') @Default('') String? artistName,
    @JsonKey(name: 'artist_cover') @Default('') String? artistCover,
  }) = _ArtistList;

  factory ArtistList.fromJson(Map<String, dynamic> json) =>
      _$ArtistListFromJson(json);
}

@freezed
class SongList with _$SongList {
  const factory SongList({
    @JsonKey(name: "song_id") @Default(0) int? songId,
    @JsonKey(name: "song_title") @Default('') String? songTitle,
    @JsonKey(name: "song_artist") @Default('') String? songArtist,
    @JsonKey(name: "album_id") @Default('') String? albumId,
    @JsonKey(name: "artist_id") @Default(0) int? artistId,
    @JsonKey(name: "type") @Default('') String? type,
    @JsonKey(name: "cover") @Default('') String? cover,
  }) = _SongList;

  factory SongList.fromJson(Map<String, dynamic> json) =>
      _$SongListFromJson(json);
}

@freezed
class PlayList with _$PlayList {
  const factory PlayList({
    @JsonKey(name: "song_id") @Default(0) int? songId,
    @JsonKey(name: "song_title") @Default('') String? songTitle,
    @JsonKey(name: "song_artist") @Default('') String? songArtist,
    @JsonKey(name: "album_id") @Default('') String? albumId,
    @JsonKey(name: "artist_id") @Default(0) int? artistId,
    @JsonKey(name: "type") @Default('') String? type,
    @JsonKey(name: "cover") @Default('') String? cover,
  }) = _PlayList;

  factory PlayList.fromJson(Map<String, dynamic> json) =>
      _$PlayListFromJson(json);
}

@freezed
class DownloadList with _$DownloadList {
  const factory DownloadList({
    @JsonKey(name: "song_id") @Default(0) int? songId,
    @JsonKey(name: "song_title") @Default('') String? songTitle,
    @JsonKey(name: "song_artist") @Default('') String? songArtist,
    @JsonKey(name: "album_id") @Default('') String? albumId,
    @JsonKey(name: "artist_id") @Default(0) int? artistId,
    @JsonKey(name: "type") @Default('') String? type,
    @JsonKey(name: "cover") @Default('') String? cover,
  }) = _DownloadList;

  factory DownloadList.fromJson(Map<String, dynamic> json) =>
      _$DownloadListFromJson(json);
}
