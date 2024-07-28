import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class ArtistLoginModel with _$ArtistLoginModel {
  const factory ArtistLoginModel({   @JsonKey(name: "status")
  bool? status,
    @JsonKey(name: "msg")
    String? msg,
    @JsonKey(name: "phone")
    String? phone,
    @JsonKey(name: "data")
    List<Data>? data,}) = _ArtistLoginModel;

  factory ArtistLoginModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistLoginModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "artist_id")
    int? artistId,
    @JsonKey(name: "artist_name")
    String? artistName,
    @JsonKey(name: "artist_status")
    int? artistStatus,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
