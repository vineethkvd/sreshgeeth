import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_model.freezed.dart';
part 'album_model.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  const factory AlbumModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'total_count') @Default('') String? totalCount,
    @JsonKey(name: 'Album') @Default([]) List<Album>? album,
    @JsonKey(name: 'Song') @Default([]) List<Song>? song,
    @JsonKey(name: 'Other_album') @Default([]) List<OtherAlbum>? otherAlbum,
    @JsonKey(name: "Geners Songs List") @Default([]) List<GenersSongsList>? genersSongsList,
  }) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    @JsonKey(name: 'album_id') @Default(0) int? albumId,
    @JsonKey(name: 'ablum_title') @Default('') String? ablumTitle,
    @JsonKey(name: 'artist_name') @Default('') String? artistName,
    @JsonKey(name: 'cover') @Default('') String? cover,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Song with _$Song {
  const factory Song({
    @JsonKey(name: "song_id") @Default(0) int? songId,
    @JsonKey(name: "song_title") @Default('') String? songTitle,
    @JsonKey(name: "song_artist") @Default('') String? songArtist,
    @JsonKey(name: "song_album_id") @Default('') String? songAlbumId,
    @JsonKey(name: "song_link") @Default('') String? songLink,
    @JsonKey(name: "type") @Default('') String? type,
    @JsonKey(name: "cover") @Default('') String? cover,
    @JsonKey(name: "like_status") @Default(false) bool? likeStatus,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}

@freezed
class OtherAlbum with _$OtherAlbum {
  const factory OtherAlbum(
      {@JsonKey(name: 'album_id') @Default(0) int? albumId,
        @JsonKey(name: 'ablum_title') @Default('') String? ablumTitle,
        @JsonKey(name: 'cover') @Default('') String? cover}) = _OtherAlbum;

  factory OtherAlbum.fromJson(Map<String, dynamic> json) =>
      _$OtherAlbumFromJson(json);
}

@freezed
class GenersSongsList with _$GenersSongsList {
  const factory GenersSongsList({
    @JsonKey(name: "rj_song_id") @Default(0) int? rjSongId,
    @JsonKey(name: "rj_song_ablum_id") @Default('') String? rjSongAblumId,
    @JsonKey(name: "rj_artist_id") @Default(0) int? rjArtistId,
    @JsonKey(name: "rj_song_track_type") @Default('') String? rjSongTrackType,
    @JsonKey(name: "rj_song_instrument_type") @Default('') String? rjSongInstrumentType,
    @JsonKey(name: "rj_song_title") @Default('') String? rjSongTitle,
    @JsonKey(name: "rj_song_production_house") @Default('') String? rjSongProductionHouse,
    @JsonKey(name: "rj_song_artist") @Default('') String? rjSongArtist,
    @JsonKey(name: "rj_song_featuring") @Default('') String? rjSongFeaturing,
    @JsonKey(name: "rj_song_lyricist") @Default('') String? rjSongLyricist,
    @JsonKey(name: "rj_song_composition") @Default('') String? rjSongComposition,
    @JsonKey(name: "rj_song_music") @Default('') String? rjSongMusic,
    @JsonKey(name: "rj_song_production_year") @Default('') String? rjSongProductionYear,
    @JsonKey(name: "rj_song_isrc_code") @Default('') String? rjSongIsrcCode,
    @JsonKey(name: "rj_song_genere") @Default('') String? rjSongGenere,
    @JsonKey(name: "rj_song_parental_advisory") @Default('') String? rjSongParentalAdvisory,
    @JsonKey(name: "rj_song_lyrics_language") @Default('') String? rjSongLyricsLanguage,
    @JsonKey(name: "rj_song_label_name") @Default('') String? rjSongLabelName,
    @JsonKey(name: "rj_song_date_of_production") @Default('') String? rjSongDateOfProduction,
    @JsonKey(name: "rj_song_audio") @Default('') String? rjSongAudio,
    @JsonKey(name: "rj_song_vocals") @Default('') String? rjSongVocals,
    @JsonKey(name: "rj_song_cover") @Default('') String? rjSongCover,
    @JsonKey(name: "rj_song_added_date") @Default('') String? rjSongAddedDate,
    @JsonKey(name: "rj_song_approved_status") @Default(0) int? rjSongApprovedStatus,
    @JsonKey(name: "rj_song_approved_by") @Default(0) int? rjSongApprovedBy,
    @JsonKey(name: "rj_song_status") @Default(0) int? rjSongStatus,
    @JsonKey(name: "rj_song_isDeleted") @Default(0) int? rjSongIsDeleted,
    @JsonKey(name: "rj_singers_name") @Default('') String? rjSingersName,
    @JsonKey(name: "approve_status") @Default(0) int? approveStatus,
    @JsonKey(name: "update_date") @Default('') String? updateDate,
  }) = _GenersSongsList;

  factory GenersSongsList.fromJson(Map<String, dynamic> json) =>
      _$GenersSongsListFromJson(json);
}
