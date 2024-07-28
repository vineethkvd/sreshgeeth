// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_podcast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPodcastModelImpl _$$UserPodcastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPodcastModelImpl(
      status: json['status'] as String?,
      banner: (json['banner'] as List<dynamic>?)
          ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
      upcomingList: (json['Upcoming_List'] as List<dynamic>?)
          ?.map((e) => UpcomingList.fromJson(e as Map<String, dynamic>))
          .toList(),
      follow: (json['follow'] as List<dynamic>?)
          ?.map((e) => Follow.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentPodcast: (json['Recent_Podcast'] as List<dynamic>?)
          ?.map((e) => RecentPodcast.fromJson(e as Map<String, dynamic>))
          .toList(),
      podcastList: (json['Podcast_List'] as List<dynamic>?)
          ?.map((e) => PodcastList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserPodcastModelImplToJson(
        _$UserPodcastModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'banner': instance.banner,
      'Upcoming_List': instance.upcomingList,
      'follow': instance.follow,
      'Recent_Podcast': instance.recentPodcast,
      'Podcast_List': instance.podcastList,
    };

_$BannerImpl _$$BannerImplFromJson(Map<String, dynamic> json) => _$BannerImpl(
      bannerId: (json['banner_id'] as num?)?.toInt(),
      bannerTitle: json['banner_title'] as String?,
      banner: json['banner'] as String?,
    );

Map<String, dynamic> _$$BannerImplToJson(_$BannerImpl instance) =>
    <String, dynamic>{
      'banner_id': instance.bannerId,
      'banner_title': instance.bannerTitle,
      'banner': instance.banner,
    };

_$UpcomingListImpl _$$UpcomingListImplFromJson(Map<String, dynamic> json) =>
    _$UpcomingListImpl(
      podcastId: (json['podcast_id'] as num?)?.toInt(),
      podcastUniqueId: json['podcast_unique_id'] as String?,
      podcastTitle: json['podcast_title'] as String?,
      rjPodcastCategoryTitle: json['rj_podcast_category_title'] as String?,
      rjPodcastType: json['rj_podcast_type'] as String?,
      liveTime: json['live_time'] as String?,
      scheduledDate: json['scheduled_date'] as String?,
      scheduledTime: json['scheduled_time'] as String?,
      cover: json['cover'] as String?,
      status: json['status'] as String?,
      liveStatus: json['live_status'] as String?,
      podStatus: json['pod_status'] as String?,
      podcastEndTime: json['podcast_end_time'] as String?,
    );

Map<String, dynamic> _$$UpcomingListImplToJson(_$UpcomingListImpl instance) =>
    <String, dynamic>{
      'podcast_id': instance.podcastId,
      'podcast_unique_id': instance.podcastUniqueId,
      'podcast_title': instance.podcastTitle,
      'rj_podcast_category_title': instance.rjPodcastCategoryTitle,
      'rj_podcast_type': instance.rjPodcastType,
      'live_time': instance.liveTime,
      'scheduled_date': instance.scheduledDate,
      'scheduled_time': instance.scheduledTime,
      'cover': instance.cover,
      'status': instance.status,
      'live_status': instance.liveStatus,
      'pod_status': instance.podStatus,
      'podcast_end_time': instance.podcastEndTime,
    };

_$FollowImpl _$$FollowImplFromJson(Map<String, dynamic> json) => _$FollowImpl(
      artistId: (json['artist_id'] as num?)?.toInt(),
      artistName: json['artist_name'] as String?,
      artistCover: json['artist_cover'] as String?,
    );

Map<String, dynamic> _$$FollowImplToJson(_$FollowImpl instance) =>
    <String, dynamic>{
      'artist_id': instance.artistId,
      'artist_name': instance.artistName,
      'artist_cover': instance.artistCover,
    };

_$RecentPodcastImpl _$$RecentPodcastImplFromJson(Map<String, dynamic> json) =>
    _$RecentPodcastImpl(
      podcastId: (json['podcast_id'] as num?)?.toInt(),
      podcastTitle: json['podcast_title'] as String?,
      rjPodcastType: json['rj_podcast_type'] as String?,
      liveTime: json['live_time'] as String?,
      podcastLink: json['podcast_link'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$RecentPodcastImplToJson(_$RecentPodcastImpl instance) =>
    <String, dynamic>{
      'podcast_id': instance.podcastId,
      'podcast_title': instance.podcastTitle,
      'rj_podcast_type': instance.rjPodcastType,
      'live_time': instance.liveTime,
      'podcast_link': instance.podcastLink,
      'cover': instance.cover,
    };

_$PodcastListImpl _$$PodcastListImplFromJson(Map<String, dynamic> json) =>
    _$PodcastListImpl(
      heading: json['Heading'] as String?,
      categoryId: (json['Category_id'] as num?)?.toInt(),
      podcastList: (json['Podcast List'] as List<dynamic>?)
          ?.map((e) => PodcastListRecent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PodcastListImplToJson(_$PodcastListImpl instance) =>
    <String, dynamic>{
      'Heading': instance.heading,
      'Category_id': instance.categoryId,
      'Podcast List': instance.podcastList,
    };

_$PodcastListRecentImpl _$$PodcastListRecentImplFromJson(
        Map<String, dynamic> json) =>
    _$PodcastListRecentImpl(
      podcastId: (json['podcast_id'] as num?)?.toInt(),
      podcastTitle: json['podcast_title'] as String?,
      rjPodcastType: json['rj_podcast_type'] as String?,
      liveTime: json['live_time'] as String?,
      podcastLink: json['podcast_link'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$PodcastListRecentImplToJson(
        _$PodcastListRecentImpl instance) =>
    <String, dynamic>{
      'podcast_id': instance.podcastId,
      'podcast_title': instance.podcastTitle,
      'rj_podcast_type': instance.rjPodcastType,
      'live_time': instance.liveTime,
      'podcast_link': instance.podcastLink,
      'cover': instance.cover,
    };
