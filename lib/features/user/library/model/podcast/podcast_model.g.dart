// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PodcastLibraryModelImpl _$$PodcastLibraryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PodcastLibraryModelImpl(
      status: json['status'] as String? ?? '',
      recentPodcast: (json['RecentPodcast'] as List<dynamic>?)
              ?.map((e) => RecentPodcast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      downlaodList: (json['DownlaodList'] as List<dynamic>?)
              ?.map((e) => DownlaodList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PodcastLibraryModelImplToJson(
        _$PodcastLibraryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'RecentPodcast': instance.recentPodcast,
      'DownlaodList': instance.downlaodList,
    };

_$RecentPodcastImpl _$$RecentPodcastImplFromJson(Map<String, dynamic> json) =>
    _$RecentPodcastImpl(
      podcastId: (json['podcast_id'] as num?)?.toInt() ?? 0,
      rjPodcastTitle: json['rj_podcast_title'] as String? ?? '',
      podcastCover: json['podcast_cover'] as String? ?? '',
      playDate: json['play_date'] as String? ?? '',
    );

Map<String, dynamic> _$$RecentPodcastImplToJson(_$RecentPodcastImpl instance) =>
    <String, dynamic>{
      'podcast_id': instance.podcastId,
      'rj_podcast_title': instance.rjPodcastTitle,
      'podcast_cover': instance.podcastCover,
      'play_date': instance.playDate,
    };

_$DownlaodListImpl _$$DownlaodListImplFromJson(Map<String, dynamic> json) =>
    _$DownlaodListImpl(
      podcastId: (json['podcast_id'] as num?)?.toInt() ?? 0,
      rjPodcastTitle: json['rj_podcast_title'] as String? ?? '',
      podcastCover: json['podcast_cover'] as String? ?? '',
      playDate: json['play_date'] as String? ?? '',
    );

Map<String, dynamic> _$$DownlaodListImplToJson(_$DownlaodListImpl instance) =>
    <String, dynamic>{
      'podcast_id': instance.podcastId,
      'rj_podcast_title': instance.rjPodcastTitle,
      'podcast_cover': instance.podcastCover,
      'play_date': instance.playDate,
    };
