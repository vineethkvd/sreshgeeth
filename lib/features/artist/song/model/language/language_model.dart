import 'package:freezed_annotation/freezed_annotation.dart';
part 'language_model.g.dart';

part 'language_model.freezed.dart';

@freezed
class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "Language List") List<Data>? languageList,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "language_id") int? languageId,
    @JsonKey(name: "language_title") String? languageTitle,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
