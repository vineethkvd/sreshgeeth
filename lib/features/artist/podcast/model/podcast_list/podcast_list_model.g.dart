// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PodcastListModelImpl _$$PodcastListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PodcastListModelImpl(
      status: json['status'] as String? ?? '',
      upcomingList: (json['Upcoming_List'] as List<dynamic>?)
              ?.map((e) => UpcomingPodcast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      podcastList: (json['Podcast_List'] as List<dynamic>?)
              ?.map((e) => CompletedPodcast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PodcastListModelImplToJson(
        _$PodcastListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Upcoming_List': instance.upcomingList,
      'Podcast_List': instance.podcastList,
    };

_$UpcomingPodcastImpl _$$UpcomingPodcastImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingPodcastImpl(
      podcastId: (json['podcast_id'] as num?)?.toInt() ?? 0,
      podcastUniqueId: json['podcast_unique_id'] as String? ?? '',
      podcastTitle: json['podcast_title'] as String? ?? '',
      rjPodcastCategoryTitle:
          json['rj_podcast_category_title'] as String? ?? '',
      rjPodcastType: json['rj_podcast_type'] as String? ?? '',
      liveTime: json['live_time'] as String? ?? '',
      scheduledDate: json['scheduled_date'] as String? ?? '',
      scheduledTime: json['scheduled_time'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
      status: json['status'] as String? ?? '',
      liveStatus: json['live_status'] as String? ?? '',
      podStatus: json['pod_status'] as String? ?? '',
      podcastEndTime: json['podcast_end_time'] as String? ?? '',
    );

Map<String, dynamic> _$$UpcomingPodcastImplToJson(
        _$UpcomingPodcastImpl instance) =>
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

_$CompletedPodcastImpl _$$CompletedPodcastImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedPodcastImpl(
      heading: json['Heading'] as String? ?? '',
      podcastList: (json['Podcast List'] as List<dynamic>?)
              ?.map((e) =>
                  CompletedPodDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CompletedPodcastImplToJson(
        _$CompletedPodcastImpl instance) =>
    <String, dynamic>{
      'Heading': instance.heading,
      'Podcast List': instance.podcastList,
    };

_$CompletedPodDetailsImpl _$$CompletedPodDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedPodDetailsImpl(
      podcastId: (json['podcast_id'] as num?)?.toInt() ?? 0,
      podcastTitle: json['podcast_title'] as String? ?? '',
      rjPodcastType: json['rj_podcast_type'] as String? ?? '',
      liveTime: json['live_time'] as String? ?? '',
      podcastLink: json['podcast_link'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
    );

Map<String, dynamic> _$$CompletedPodDetailsImplToJson(
        _$CompletedPodDetailsImpl instance) =>
    <String, dynamic>{
      'podcast_id': instance.podcastId,
      'podcast_title': instance.podcastTitle,
      'rj_podcast_type': instance.rjPodcastType,
      'live_time': instance.liveTime,
      'podcast_link': instance.podcastLink,
      'cover': instance.cover,
    };
