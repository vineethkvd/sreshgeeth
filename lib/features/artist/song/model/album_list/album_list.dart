import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_list.freezed.dart';
part 'album_list.g.dart';

@freezed
class AlbumListModel with _$AlbumListModel {
  const factory AlbumListModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "Album List") List<Data>? albumList,
  }) = _AlbumListModel;

  factory AlbumListModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumListModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "album_id") int? albumId,
    @JsonKey(name: "album_name") String? albumName,
    @JsonKey(name: "album_cover") String? albumCover,
  }) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
