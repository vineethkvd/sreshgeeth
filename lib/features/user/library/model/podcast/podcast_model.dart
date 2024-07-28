import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_model.freezed.dart';
part 'podcast_model.g.dart';

@freezed
class PodcastLibraryModel with _$PodcastLibraryModel {
  const factory PodcastLibraryModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'RecentPodcast')
    @Default([])
    List<RecentPodcast>? recentPodcast,
    @JsonKey(name: 'DownlaodList')
    @Default([])
    List<DownlaodList>? downlaodList,
  }) = _PodcastLibraryModel;

  factory PodcastLibraryModel.fromJson(Map<String, dynamic> json) =>
      _$PodcastLibraryModelFromJson(json);
}

@freezed
class RecentPodcast with _$RecentPodcast {
  const factory RecentPodcast({
    @JsonKey(name: 'podcast_id') @Default(0) int? podcastId,
    @JsonKey(name: 'rj_podcast_title') @Default('') String? rjPodcastTitle,
    @JsonKey(name: 'podcast_cover') @Default('') String? podcastCover,
    @JsonKey(name: 'play_date') @Default('') String? playDate,
  }) = _RecentPodcast;

  factory RecentPodcast.fromJson(Map<String, dynamic> json) =>
      _$RecentPodcastFromJson(json);
}

@freezed
class DownlaodList with _$DownlaodList {
  const factory DownlaodList({
    @JsonKey(name: 'podcast_id') @Default(0) int? podcastId,
    @JsonKey(name: 'rj_podcast_title') @Default('') String? rjPodcastTitle,
    @JsonKey(name: 'podcast_cover') @Default('') String? podcastCover,
    @JsonKey(name: 'play_date') @Default('') String? playDate,
  }) = _DownlaodList;

  factory DownlaodList.fromJson(Map<String, dynamic> json) =>
      _$DownlaodListFromJson(json);
}
