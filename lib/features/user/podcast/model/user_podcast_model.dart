import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_podcast_model.g.dart';

part 'user_podcast_model.freezed.dart';

@freezed
class UserPodcastModel with _$UserPodcastModel {
  const factory UserPodcastModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "banner") List<Banner>? banner,
    @JsonKey(name: "Upcoming_List") List<UpcomingList>? upcomingList,
    @JsonKey(name: "follow") List<Follow>? follow,
    @JsonKey(name: "Recent_Podcast") List<RecentPodcast>? recentPodcast,
    @JsonKey(name: "Podcast_List") List<PodcastList>? podcastList,
  }) = _UserPodcastModel;

  factory UserPodcastModel.fromJson(Map<String, dynamic> json) =>
      _$UserPodcastModelFromJson(json);
}

@freezed
class Banner with _$Banner {
  const factory Banner({
    @JsonKey(name: "banner_id") int? bannerId,
    @JsonKey(name: "banner_title") String? bannerTitle,
    @JsonKey(name: "banner") String? banner,
  }) = _Banner;
  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class UpcomingList with _$UpcomingList {
  const factory UpcomingList({
    @JsonKey(name: "podcast_id") int? podcastId,
    @JsonKey(name: "podcast_unique_id") String? podcastUniqueId,
    @JsonKey(name: "podcast_title") String? podcastTitle,
    @JsonKey(name: "rj_podcast_category_title") String? rjPodcastCategoryTitle,
    @JsonKey(name: "rj_podcast_type") String? rjPodcastType,
    @JsonKey(name: "live_time") String? liveTime,
    @JsonKey(name: "scheduled_date") String? scheduledDate,
    @JsonKey(name: "scheduled_time") String? scheduledTime,
    @JsonKey(name: "cover") String? cover,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "live_status") String? liveStatus,
    @JsonKey(name: "pod_status") String? podStatus,
    @JsonKey(name: "podcast_end_time") String? podcastEndTime,
  }) = _UpcomingList;

  factory UpcomingList.fromJson(Map<String, dynamic> json) =>
      _$UpcomingListFromJson(json);
}

@freezed
class Follow with _$Follow {
  const factory Follow({
    @JsonKey(name: "artist_id") int? artistId,
    @JsonKey(name: "artist_name") String? artistName,
    @JsonKey(name: "artist_cover") String? artistCover,
  }) = _Follow;

  factory Follow.fromJson(Map<String, dynamic> json) => _$FollowFromJson(json);
}

@freezed
class RecentPodcast with _$RecentPodcast {
  const factory RecentPodcast({
    @JsonKey(name: "podcast_id") int? podcastId,
    @JsonKey(name: "podcast_title") String? podcastTitle,
    @JsonKey(name: "rj_podcast_type") String? rjPodcastType,
    @JsonKey(name: "live_time") String? liveTime,
    @JsonKey(name: "podcast_link") String? podcastLink,
    @JsonKey(name: "cover") String? cover,
  }) = _RecentPodcast;

  factory RecentPodcast.fromJson(Map<String, dynamic> json) =>
      _$RecentPodcastFromJson(json);
}

@freezed
class PodcastList with _$PodcastList {
  const factory PodcastList({
    @JsonKey(name: "Heading") String? heading,
    @JsonKey(name: "Category_id") int? categoryId,
    @JsonKey(name: "Podcast List") List<PodcastListRecent>? podcastList,
  }) = _PodcastList;

  factory PodcastList.fromJson(Map<String, dynamic> json) =>
      _$PodcastListFromJson(json);
}

@freezed
class PodcastListRecent with _$PodcastListRecent {
  const factory PodcastListRecent({
    @JsonKey(name: "podcast_id") int? podcastId,
    @JsonKey(name: "podcast_title") String? podcastTitle,
    @JsonKey(name: "rj_podcast_type") String? rjPodcastType,
    @JsonKey(name: "live_time") String? liveTime,
    @JsonKey(name: "podcast_link") String? podcastLink,
    @JsonKey(name: "cover") String? cover,
  }) = _PodcastListRecent;

  factory PodcastListRecent.fromJson(Map<String, dynamic> json) =>
      _$PodcastListRecentFromJson(json);
}
