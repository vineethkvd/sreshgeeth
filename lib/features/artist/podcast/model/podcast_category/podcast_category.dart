import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_category.freezed.dart';
part 'podcast_category.g.dart';


@freezed
class ArtstPodcastCategoryModel with _$ArtstPodcastCategoryModel {
  const factory ArtstPodcastCategoryModel({
    @JsonKey(name: "status") @Default('') String? status,
    @JsonKey(name: "Podcast Category List") @Default([]) List<Data>? podcastCategoryList,
  }) = _ArtstPodcastCategoryModel;

  factory ArtstPodcastCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ArtstPodcastCategoryModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "podcast_category_id") @Default(0) int? podcastCategoryId,
    @JsonKey(name: "podcast_category_title") @Default('') String? podcastCategoryTitle,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
