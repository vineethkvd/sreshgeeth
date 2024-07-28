import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ArtistProfileModel with _$ArtistProfileModel {
  const factory ArtistProfileModel({    @JsonKey(name: "status")
  bool? status,
    @JsonKey(name: "total_subsciption")
    int? totalSubsciption,
    @JsonKey(name: "total_earning")
    String? totalEarning,
    @JsonKey(name: "data")
    List<Data>? data,}) = _ArtistProfileModel;

  factory ArtistProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistProfileModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({ @JsonKey(name: "artist_name")
  String? artistName,
    @JsonKey(name: "artist_email")
    String? artistEmail,
    @JsonKey(name: "artist_phone")
    String? artistPhone,
    @JsonKey(name: "artist_gender")
    String? artistGender,
    @JsonKey(name: "artist_state")
    String? artistState,
    @JsonKey(name: "artist_city")
    String? artistCity,
    @JsonKey(name: "artist_district")
    String? artistDistrict,
    @JsonKey(name: "artist_church")
    String? artistChurch,
    @JsonKey(name: "artist_promocode")
    String? artistPromocode,
    @JsonKey(name: "profile")
    String? profile,}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}