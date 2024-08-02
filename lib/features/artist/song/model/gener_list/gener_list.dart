import 'package:freezed_annotation/freezed_annotation.dart';

part 'gener_list.freezed.dart';
part 'gener_list.g.dart';

@freezed
class GenerListModel with _$GenerListModel {
  const factory GenerListModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "Geners List") List<Data>? genersList,
  }) = _GenerListModel;

  factory GenerListModel.fromJson(Map<String, dynamic> json) =>
      _$GenerListModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "geners_id") int? genersId,
    @JsonKey(name: "geners_name") String? genersName,
    @JsonKey(name: "geners_cover") String? genersCover,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
