import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_list_model.freezed.dart';

part 'podcast_list_model.g.dart';


@freezed
class PodcastListModel with _$PodcastListModel {
  const factory PodcastListModel({
    @JsonKey(name: "status") @Default('') String? status,
    @JsonKey(name: "Upcoming_List") @Default([]) List<UpcomingPodcast>? upcomingList,
    @JsonKey(name: "Podcast_List") @Default([]) List<CompletedPodcast>? podcastList,
  }) = _PodcastListModel;

  factory PodcastListModel.fromJson(Map<String, dynamic> json) =>
      _$PodcastListModelFromJson(json);
}

@freezed
class UpcomingPodcast with _$UpcomingPodcast{
  const factory UpcomingPodcast({
    @JsonKey(name: "podcast_id") @Default(0) int? podcastId,
    @JsonKey(name: "podcast_unique_id") @Default('') String? podcastUniqueId,
    @JsonKey(name: "podcast_title") @Default('') String? podcastTitle,
    @JsonKey(name: "rj_podcast_category_title") @Default('') @Default('') String? rjPodcastCategoryTitle,
    @JsonKey(name: "rj_podcast_type") @Default('') String? rjPodcastType,
    @JsonKey(name: "live_time") @Default('') String? liveTime,
    @JsonKey(name: "scheduled_date") @Default('') String? scheduledDate,
    @JsonKey(name: "scheduled_time") @Default('') String? scheduledTime,
    @JsonKey(name: "cover") @Default('') String? cover,
    @JsonKey(name: "status") @Default('') String? status,
    @JsonKey(name: "live_status") @Default('') String? liveStatus,
    @JsonKey(name: "pod_status") @Default('') String? podStatus,
    @JsonKey(name: "podcast_end_time") @Default('') String? podcastEndTime,
  }) = _UpcomingPodcast;

  factory UpcomingPodcast.fromJson(Map<String, dynamic> json) => _$UpcomingPodcastFromJson(json);
}

@freezed
class CompletedPodcast with _$CompletedPodcast{
  const factory CompletedPodcast({
    @JsonKey(name: "Heading") @Default('') String? heading,
    @JsonKey(name: "Podcast List") @Default([]) List<CompletedPodDetails>? podcastList,
  }) = _CompletedPodcast;

  factory CompletedPodcast.fromJson(Map<String, dynamic> json) => _$CompletedPodcastFromJson(json);
}
@freezed
class CompletedPodDetails with _$CompletedPodDetails{
  const factory CompletedPodDetails({
    @JsonKey(name: "podcast_id") @Default(0) int? podcastId,
    @JsonKey(name: "podcast_title") @Default('') String? podcastTitle,
    @JsonKey(name: "rj_podcast_type") @Default('') String? rjPodcastType,
    @JsonKey(name: "live_time") @Default('') String? liveTime,
    @JsonKey(name: "podcast_link") @Default('') String? podcastLink,
    @JsonKey(name: "cover") @Default('') String? cover,
  }) = _CompletedPodDetails;

  factory CompletedPodDetails.fromJson(Map<String, dynamic> json) => _$CompletedPodDetailsFromJson(json);
}

