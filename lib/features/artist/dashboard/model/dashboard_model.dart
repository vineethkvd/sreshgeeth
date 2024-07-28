import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashBoardModel with _$DashBoardModel {
  const factory DashBoardModel({
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "total_subsciption") int? totalSubsciption,
    @JsonKey(name: "total_earning") String? totalEarning,
    @JsonKey(name: "follower") int? follower,
    @JsonKey(name: "songs") int? songs,
    @JsonKey(name: "totalplaytime") String? totalplaytime,
    @JsonKey(name: "data") List<Data>? data,
    @JsonKey(name: "song_list") List<SongList>? songList,
  }) = _DashBoardModel;

  factory DashBoardModel.fromJson(Map<String, dynamic> json) =>
      _$DashBoardModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "artist_name") String? artistName,
    @JsonKey(name: "artist_email") String? artistEmail,
    @JsonKey(name: "artist_phone") String? artistPhone,
    @JsonKey(name: "artist_gender") String? artistGender,
    @JsonKey(name: "artist_state") String? artistState,
    @JsonKey(name: "artist_city") String? artistCity,
    @JsonKey(name: "artist_district") String? artistDistrict,
    @JsonKey(name: "artist_church") String? artistChurch,
    @JsonKey(name: "artist_promocode") String? artistPromocode,
    @JsonKey(name: "profile") String? profile,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class SongList with _$SongList {
  const factory SongList({
    @JsonKey(name: "rj_song_id") int? rjSongId,
    @JsonKey(name: "rj_song_title") String? rjSongTitle,
    @JsonKey(name: "cover") String? cover,
    @JsonKey(name: "add_date") String? addDate,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "playtime") String? playtime,
  }) = _SongList;

  factory SongList.fromJson(Map<String, dynamic> json) =>
      _$SongListFromJson(json);
}
