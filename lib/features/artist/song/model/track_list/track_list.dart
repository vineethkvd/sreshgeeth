import 'package:freezed_annotation/freezed_annotation.dart';
part 'track_list.g.dart';

part 'track_list.freezed.dart';

@freezed
class TrackListModel with _$TrackListModel {
  const factory TrackListModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "Track List") List<Data>? trackList,
  }) = _TrackListModel;

  factory TrackListModel.fromJson(Map<String, dynamic> json) =>
      _$TrackListModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "track_id") int? trackId,
    @JsonKey(name: "track_title") String? trackTitle,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
