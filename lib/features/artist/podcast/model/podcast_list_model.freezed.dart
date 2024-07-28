// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PodcastListModel _$PodcastListModelFromJson(Map<String, dynamic> json) {
  return _PodcastListModel.fromJson(json);
}

/// @nodoc
mixin _$PodcastListModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Upcoming_List")
  List<UpcomingPodcast>? get upcomingList => throw _privateConstructorUsedError;
  @JsonKey(name: "Podcast_List")
  List<CompletedPodcast>? get podcastList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastListModelCopyWith<PodcastListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastListModelCopyWith<$Res> {
  factory $PodcastListModelCopyWith(
          PodcastListModel value, $Res Function(PodcastListModel) then) =
      _$PodcastListModelCopyWithImpl<$Res, PodcastListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "Upcoming_List") List<UpcomingPodcast>? upcomingList,
      @JsonKey(name: "Podcast_List") List<CompletedPodcast>? podcastList});
}

/// @nodoc
class _$PodcastListModelCopyWithImpl<$Res, $Val extends PodcastListModel>
    implements $PodcastListModelCopyWith<$Res> {
  _$PodcastListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? upcomingList = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      upcomingList: freezed == upcomingList
          ? _value.upcomingList
          : upcomingList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingPodcast>?,
      podcastList: freezed == podcastList
          ? _value.podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<CompletedPodcast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastListModelImplCopyWith<$Res>
    implements $PodcastListModelCopyWith<$Res> {
  factory _$$PodcastListModelImplCopyWith(_$PodcastListModelImpl value,
          $Res Function(_$PodcastListModelImpl) then) =
      __$$PodcastListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "Upcoming_List") List<UpcomingPodcast>? upcomingList,
      @JsonKey(name: "Podcast_List") List<CompletedPodcast>? podcastList});
}

/// @nodoc
class __$$PodcastListModelImplCopyWithImpl<$Res>
    extends _$PodcastListModelCopyWithImpl<$Res, _$PodcastListModelImpl>
    implements _$$PodcastListModelImplCopyWith<$Res> {
  __$$PodcastListModelImplCopyWithImpl(_$PodcastListModelImpl _value,
      $Res Function(_$PodcastListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? upcomingList = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_$PodcastListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      upcomingList: freezed == upcomingList
          ? _value._upcomingList
          : upcomingList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingPodcast>?,
      podcastList: freezed == podcastList
          ? _value._podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<CompletedPodcast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastListModelImpl implements _PodcastListModel {
  const _$PodcastListModelImpl(
      {@JsonKey(name: "status") this.status = '',
      @JsonKey(name: "Upcoming_List")
      final List<UpcomingPodcast>? upcomingList = const [],
      @JsonKey(name: "Podcast_List")
      final List<CompletedPodcast>? podcastList = const []})
      : _upcomingList = upcomingList,
        _podcastList = podcastList;

  factory _$PodcastListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastListModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<UpcomingPodcast>? _upcomingList;
  @override
  @JsonKey(name: "Upcoming_List")
  List<UpcomingPodcast>? get upcomingList {
    final value = _upcomingList;
    if (value == null) return null;
    if (_upcomingList is EqualUnmodifiableListView) return _upcomingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CompletedPodcast>? _podcastList;
  @override
  @JsonKey(name: "Podcast_List")
  List<CompletedPodcast>? get podcastList {
    final value = _podcastList;
    if (value == null) return null;
    if (_podcastList is EqualUnmodifiableListView) return _podcastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PodcastListModel(status: $status, upcomingList: $upcomingList, podcastList: $podcastList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._upcomingList, _upcomingList) &&
            const DeepCollectionEquality()
                .equals(other._podcastList, _podcastList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_upcomingList),
      const DeepCollectionEquality().hash(_podcastList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastListModelImplCopyWith<_$PodcastListModelImpl> get copyWith =>
      __$$PodcastListModelImplCopyWithImpl<_$PodcastListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastListModelImplToJson(
      this,
    );
  }
}

abstract class _PodcastListModel implements PodcastListModel {
  const factory _PodcastListModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "Upcoming_List") final List<UpcomingPodcast>? upcomingList,
      @JsonKey(name: "Podcast_List")
      final List<CompletedPodcast>? podcastList}) = _$PodcastListModelImpl;

  factory _PodcastListModel.fromJson(Map<String, dynamic> json) =
      _$PodcastListModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "Upcoming_List")
  List<UpcomingPodcast>? get upcomingList;
  @override
  @JsonKey(name: "Podcast_List")
  List<CompletedPodcast>? get podcastList;
  @override
  @JsonKey(ignore: true)
  _$$PodcastListModelImplCopyWith<_$PodcastListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpcomingPodcast _$UpcomingPodcastFromJson(Map<String, dynamic> json) {
  return _UpcomingPodcast.fromJson(json);
}

/// @nodoc
mixin _$UpcomingPodcast {
  @JsonKey(name: "podcast_id")
  int? get podcastId => throw _privateConstructorUsedError;
  @JsonKey(name: "podcast_unique_id")
  String? get podcastUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "podcast_title")
  String? get podcastTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_podcast_category_title")
  String? get rjPodcastCategoryTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_podcast_type")
  String? get rjPodcastType => throw _privateConstructorUsedError;
  @JsonKey(name: "live_time")
  String? get liveTime => throw _privateConstructorUsedError;
  @JsonKey(name: "scheduled_date")
  String? get scheduledDate => throw _privateConstructorUsedError;
  @JsonKey(name: "scheduled_time")
  String? get scheduledTime => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "live_status")
  String? get liveStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "pod_status")
  String? get podStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "podcast_end_time")
  String? get podcastEndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingPodcastCopyWith<UpcomingPodcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingPodcastCopyWith<$Res> {
  factory $UpcomingPodcastCopyWith(
          UpcomingPodcast value, $Res Function(UpcomingPodcast) then) =
      _$UpcomingPodcastCopyWithImpl<$Res, UpcomingPodcast>;
  @useResult
  $Res call(
      {@JsonKey(name: "podcast_id") int? podcastId,
      @JsonKey(name: "podcast_unique_id") String? podcastUniqueId,
      @JsonKey(name: "podcast_title") String? podcastTitle,
      @JsonKey(name: "rj_podcast_category_title")
      String? rjPodcastCategoryTitle,
      @JsonKey(name: "rj_podcast_type") String? rjPodcastType,
      @JsonKey(name: "live_time") String? liveTime,
      @JsonKey(name: "scheduled_date") String? scheduledDate,
      @JsonKey(name: "scheduled_time") String? scheduledTime,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "live_status") String? liveStatus,
      @JsonKey(name: "pod_status") String? podStatus,
      @JsonKey(name: "podcast_end_time") String? podcastEndTime});
}

/// @nodoc
class _$UpcomingPodcastCopyWithImpl<$Res, $Val extends UpcomingPodcast>
    implements $UpcomingPodcastCopyWith<$Res> {
  _$UpcomingPodcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? podcastUniqueId = freezed,
    Object? podcastTitle = freezed,
    Object? rjPodcastCategoryTitle = freezed,
    Object? rjPodcastType = freezed,
    Object? liveTime = freezed,
    Object? scheduledDate = freezed,
    Object? scheduledTime = freezed,
    Object? cover = freezed,
    Object? status = freezed,
    Object? liveStatus = freezed,
    Object? podStatus = freezed,
    Object? podcastEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      podcastUniqueId: freezed == podcastUniqueId
          ? _value.podcastUniqueId
          : podcastUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastTitle: freezed == podcastTitle
          ? _value.podcastTitle
          : podcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjPodcastCategoryTitle: freezed == rjPodcastCategoryTitle
          ? _value.rjPodcastCategoryTitle
          : rjPodcastCategoryTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjPodcastType: freezed == rjPodcastType
          ? _value.rjPodcastType
          : rjPodcastType // ignore: cast_nullable_to_non_nullable
              as String?,
      liveTime: freezed == liveTime
          ? _value.liveTime
          : liveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledTime: freezed == scheduledTime
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      liveStatus: freezed == liveStatus
          ? _value.liveStatus
          : liveStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      podStatus: freezed == podStatus
          ? _value.podStatus
          : podStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastEndTime: freezed == podcastEndTime
          ? _value.podcastEndTime
          : podcastEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingPodcastImplCopyWith<$Res>
    implements $UpcomingPodcastCopyWith<$Res> {
  factory _$$UpcomingPodcastImplCopyWith(_$UpcomingPodcastImpl value,
          $Res Function(_$UpcomingPodcastImpl) then) =
      __$$UpcomingPodcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "podcast_id") int? podcastId,
      @JsonKey(name: "podcast_unique_id") String? podcastUniqueId,
      @JsonKey(name: "podcast_title") String? podcastTitle,
      @JsonKey(name: "rj_podcast_category_title")
      String? rjPodcastCategoryTitle,
      @JsonKey(name: "rj_podcast_type") String? rjPodcastType,
      @JsonKey(name: "live_time") String? liveTime,
      @JsonKey(name: "scheduled_date") String? scheduledDate,
      @JsonKey(name: "scheduled_time") String? scheduledTime,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "live_status") String? liveStatus,
      @JsonKey(name: "pod_status") String? podStatus,
      @JsonKey(name: "podcast_end_time") String? podcastEndTime});
}

/// @nodoc
class __$$UpcomingPodcastImplCopyWithImpl<$Res>
    extends _$UpcomingPodcastCopyWithImpl<$Res, _$UpcomingPodcastImpl>
    implements _$$UpcomingPodcastImplCopyWith<$Res> {
  __$$UpcomingPodcastImplCopyWithImpl(
      _$UpcomingPodcastImpl _value, $Res Function(_$UpcomingPodcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? podcastUniqueId = freezed,
    Object? podcastTitle = freezed,
    Object? rjPodcastCategoryTitle = freezed,
    Object? rjPodcastType = freezed,
    Object? liveTime = freezed,
    Object? scheduledDate = freezed,
    Object? scheduledTime = freezed,
    Object? cover = freezed,
    Object? status = freezed,
    Object? liveStatus = freezed,
    Object? podStatus = freezed,
    Object? podcastEndTime = freezed,
  }) {
    return _then(_$UpcomingPodcastImpl(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      podcastUniqueId: freezed == podcastUniqueId
          ? _value.podcastUniqueId
          : podcastUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastTitle: freezed == podcastTitle
          ? _value.podcastTitle
          : podcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjPodcastCategoryTitle: freezed == rjPodcastCategoryTitle
          ? _value.rjPodcastCategoryTitle
          : rjPodcastCategoryTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjPodcastType: freezed == rjPodcastType
          ? _value.rjPodcastType
          : rjPodcastType // ignore: cast_nullable_to_non_nullable
              as String?,
      liveTime: freezed == liveTime
          ? _value.liveTime
          : liveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledTime: freezed == scheduledTime
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      liveStatus: freezed == liveStatus
          ? _value.liveStatus
          : liveStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      podStatus: freezed == podStatus
          ? _value.podStatus
          : podStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastEndTime: freezed == podcastEndTime
          ? _value.podcastEndTime
          : podcastEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingPodcastImpl implements _UpcomingPodcast {
  const _$UpcomingPodcastImpl(
      {@JsonKey(name: "podcast_id") this.podcastId = 0,
      @JsonKey(name: "podcast_unique_id") this.podcastUniqueId = '',
      @JsonKey(name: "podcast_title") this.podcastTitle = '',
      @JsonKey(name: "rj_podcast_category_title")
      this.rjPodcastCategoryTitle = '',
      @JsonKey(name: "rj_podcast_type") this.rjPodcastType = '',
      @JsonKey(name: "live_time") this.liveTime = '',
      @JsonKey(name: "scheduled_date") this.scheduledDate = '',
      @JsonKey(name: "scheduled_time") this.scheduledTime = '',
      @JsonKey(name: "cover") this.cover = '',
      @JsonKey(name: "status") this.status = '',
      @JsonKey(name: "live_status") this.liveStatus = '',
      @JsonKey(name: "pod_status") this.podStatus = '',
      @JsonKey(name: "podcast_end_time") this.podcastEndTime = ''});

  factory _$UpcomingPodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingPodcastImplFromJson(json);

  @override
  @JsonKey(name: "podcast_id")
  final int? podcastId;
  @override
  @JsonKey(name: "podcast_unique_id")
  final String? podcastUniqueId;
  @override
  @JsonKey(name: "podcast_title")
  final String? podcastTitle;
  @override
  @JsonKey(name: "rj_podcast_category_title")
  final String? rjPodcastCategoryTitle;
  @override
  @JsonKey(name: "rj_podcast_type")
  final String? rjPodcastType;
  @override
  @JsonKey(name: "live_time")
  final String? liveTime;
  @override
  @JsonKey(name: "scheduled_date")
  final String? scheduledDate;
  @override
  @JsonKey(name: "scheduled_time")
  final String? scheduledTime;
  @override
  @JsonKey(name: "cover")
  final String? cover;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "live_status")
  final String? liveStatus;
  @override
  @JsonKey(name: "pod_status")
  final String? podStatus;
  @override
  @JsonKey(name: "podcast_end_time")
  final String? podcastEndTime;

  @override
  String toString() {
    return 'UpcomingPodcast(podcastId: $podcastId, podcastUniqueId: $podcastUniqueId, podcastTitle: $podcastTitle, rjPodcastCategoryTitle: $rjPodcastCategoryTitle, rjPodcastType: $rjPodcastType, liveTime: $liveTime, scheduledDate: $scheduledDate, scheduledTime: $scheduledTime, cover: $cover, status: $status, liveStatus: $liveStatus, podStatus: $podStatus, podcastEndTime: $podcastEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingPodcastImpl &&
            (identical(other.podcastId, podcastId) ||
                other.podcastId == podcastId) &&
            (identical(other.podcastUniqueId, podcastUniqueId) ||
                other.podcastUniqueId == podcastUniqueId) &&
            (identical(other.podcastTitle, podcastTitle) ||
                other.podcastTitle == podcastTitle) &&
            (identical(other.rjPodcastCategoryTitle, rjPodcastCategoryTitle) ||
                other.rjPodcastCategoryTitle == rjPodcastCategoryTitle) &&
            (identical(other.rjPodcastType, rjPodcastType) ||
                other.rjPodcastType == rjPodcastType) &&
            (identical(other.liveTime, liveTime) ||
                other.liveTime == liveTime) &&
            (identical(other.scheduledDate, scheduledDate) ||
                other.scheduledDate == scheduledDate) &&
            (identical(other.scheduledTime, scheduledTime) ||
                other.scheduledTime == scheduledTime) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.liveStatus, liveStatus) ||
                other.liveStatus == liveStatus) &&
            (identical(other.podStatus, podStatus) ||
                other.podStatus == podStatus) &&
            (identical(other.podcastEndTime, podcastEndTime) ||
                other.podcastEndTime == podcastEndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      podcastId,
      podcastUniqueId,
      podcastTitle,
      rjPodcastCategoryTitle,
      rjPodcastType,
      liveTime,
      scheduledDate,
      scheduledTime,
      cover,
      status,
      liveStatus,
      podStatus,
      podcastEndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingPodcastImplCopyWith<_$UpcomingPodcastImpl> get copyWith =>
      __$$UpcomingPodcastImplCopyWithImpl<_$UpcomingPodcastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingPodcastImplToJson(
      this,
    );
  }
}

abstract class _UpcomingPodcast implements UpcomingPodcast {
  const factory _UpcomingPodcast(
          {@JsonKey(name: "podcast_id") final int? podcastId,
          @JsonKey(name: "podcast_unique_id") final String? podcastUniqueId,
          @JsonKey(name: "podcast_title") final String? podcastTitle,
          @JsonKey(name: "rj_podcast_category_title")
          final String? rjPodcastCategoryTitle,
          @JsonKey(name: "rj_podcast_type") final String? rjPodcastType,
          @JsonKey(name: "live_time") final String? liveTime,
          @JsonKey(name: "scheduled_date") final String? scheduledDate,
          @JsonKey(name: "scheduled_time") final String? scheduledTime,
          @JsonKey(name: "cover") final String? cover,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "live_status") final String? liveStatus,
          @JsonKey(name: "pod_status") final String? podStatus,
          @JsonKey(name: "podcast_end_time") final String? podcastEndTime}) =
      _$UpcomingPodcastImpl;

  factory _UpcomingPodcast.fromJson(Map<String, dynamic> json) =
      _$UpcomingPodcastImpl.fromJson;

  @override
  @JsonKey(name: "podcast_id")
  int? get podcastId;
  @override
  @JsonKey(name: "podcast_unique_id")
  String? get podcastUniqueId;
  @override
  @JsonKey(name: "podcast_title")
  String? get podcastTitle;
  @override
  @JsonKey(name: "rj_podcast_category_title")
  String? get rjPodcastCategoryTitle;
  @override
  @JsonKey(name: "rj_podcast_type")
  String? get rjPodcastType;
  @override
  @JsonKey(name: "live_time")
  String? get liveTime;
  @override
  @JsonKey(name: "scheduled_date")
  String? get scheduledDate;
  @override
  @JsonKey(name: "scheduled_time")
  String? get scheduledTime;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "live_status")
  String? get liveStatus;
  @override
  @JsonKey(name: "pod_status")
  String? get podStatus;
  @override
  @JsonKey(name: "podcast_end_time")
  String? get podcastEndTime;
  @override
  @JsonKey(ignore: true)
  _$$UpcomingPodcastImplCopyWith<_$UpcomingPodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedPodcast _$CompletedPodcastFromJson(Map<String, dynamic> json) {
  return _CompletedPodcast.fromJson(json);
}

/// @nodoc
mixin _$CompletedPodcast {
  @JsonKey(name: "Heading")
  String? get heading => throw _privateConstructorUsedError;
  @JsonKey(name: "Podcast List")
  List<CompletedPodDetails>? get podcastList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedPodcastCopyWith<CompletedPodcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedPodcastCopyWith<$Res> {
  factory $CompletedPodcastCopyWith(
          CompletedPodcast value, $Res Function(CompletedPodcast) then) =
      _$CompletedPodcastCopyWithImpl<$Res, CompletedPodcast>;
  @useResult
  $Res call(
      {@JsonKey(name: "Heading") String? heading,
      @JsonKey(name: "Podcast List") List<CompletedPodDetails>? podcastList});
}

/// @nodoc
class _$CompletedPodcastCopyWithImpl<$Res, $Val extends CompletedPodcast>
    implements $CompletedPodcastCopyWith<$Res> {
  _$CompletedPodcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_value.copyWith(
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastList: freezed == podcastList
          ? _value.podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<CompletedPodDetails>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedPodcastImplCopyWith<$Res>
    implements $CompletedPodcastCopyWith<$Res> {
  factory _$$CompletedPodcastImplCopyWith(_$CompletedPodcastImpl value,
          $Res Function(_$CompletedPodcastImpl) then) =
      __$$CompletedPodcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Heading") String? heading,
      @JsonKey(name: "Podcast List") List<CompletedPodDetails>? podcastList});
}

/// @nodoc
class __$$CompletedPodcastImplCopyWithImpl<$Res>
    extends _$CompletedPodcastCopyWithImpl<$Res, _$CompletedPodcastImpl>
    implements _$$CompletedPodcastImplCopyWith<$Res> {
  __$$CompletedPodcastImplCopyWithImpl(_$CompletedPodcastImpl _value,
      $Res Function(_$CompletedPodcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_$CompletedPodcastImpl(
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastList: freezed == podcastList
          ? _value._podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<CompletedPodDetails>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedPodcastImpl implements _CompletedPodcast {
  const _$CompletedPodcastImpl(
      {@JsonKey(name: "Heading") this.heading = '',
      @JsonKey(name: "Podcast List")
      final List<CompletedPodDetails>? podcastList = const []})
      : _podcastList = podcastList;

  factory _$CompletedPodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedPodcastImplFromJson(json);

  @override
  @JsonKey(name: "Heading")
  final String? heading;
  final List<CompletedPodDetails>? _podcastList;
  @override
  @JsonKey(name: "Podcast List")
  List<CompletedPodDetails>? get podcastList {
    final value = _podcastList;
    if (value == null) return null;
    if (_podcastList is EqualUnmodifiableListView) return _podcastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CompletedPodcast(heading: $heading, podcastList: $podcastList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedPodcastImpl &&
            (identical(other.heading, heading) || other.heading == heading) &&
            const DeepCollectionEquality()
                .equals(other._podcastList, _podcastList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, heading, const DeepCollectionEquality().hash(_podcastList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedPodcastImplCopyWith<_$CompletedPodcastImpl> get copyWith =>
      __$$CompletedPodcastImplCopyWithImpl<_$CompletedPodcastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedPodcastImplToJson(
      this,
    );
  }
}

abstract class _CompletedPodcast implements CompletedPodcast {
  const factory _CompletedPodcast(
      {@JsonKey(name: "Heading") final String? heading,
      @JsonKey(name: "Podcast List")
      final List<CompletedPodDetails>? podcastList}) = _$CompletedPodcastImpl;

  factory _CompletedPodcast.fromJson(Map<String, dynamic> json) =
      _$CompletedPodcastImpl.fromJson;

  @override
  @JsonKey(name: "Heading")
  String? get heading;
  @override
  @JsonKey(name: "Podcast List")
  List<CompletedPodDetails>? get podcastList;
  @override
  @JsonKey(ignore: true)
  _$$CompletedPodcastImplCopyWith<_$CompletedPodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedPodDetails _$CompletedPodDetailsFromJson(Map<String, dynamic> json) {
  return _CompletedPodDetails.fromJson(json);
}

/// @nodoc
mixin _$CompletedPodDetails {
  @JsonKey(name: "podcast_id")
  int? get podcastId => throw _privateConstructorUsedError;
  @JsonKey(name: "podcast_title")
  String? get podcastTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_podcast_type")
  String? get rjPodcastType => throw _privateConstructorUsedError;
  @JsonKey(name: "live_time")
  String? get liveTime => throw _privateConstructorUsedError;
  @JsonKey(name: "podcast_link")
  String? get podcastLink => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedPodDetailsCopyWith<CompletedPodDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedPodDetailsCopyWith<$Res> {
  factory $CompletedPodDetailsCopyWith(
          CompletedPodDetails value, $Res Function(CompletedPodDetails) then) =
      _$CompletedPodDetailsCopyWithImpl<$Res, CompletedPodDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "podcast_id") int? podcastId,
      @JsonKey(name: "podcast_title") String? podcastTitle,
      @JsonKey(name: "rj_podcast_type") String? rjPodcastType,
      @JsonKey(name: "live_time") String? liveTime,
      @JsonKey(name: "podcast_link") String? podcastLink,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$CompletedPodDetailsCopyWithImpl<$Res, $Val extends CompletedPodDetails>
    implements $CompletedPodDetailsCopyWith<$Res> {
  _$CompletedPodDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? podcastTitle = freezed,
    Object? rjPodcastType = freezed,
    Object? liveTime = freezed,
    Object? podcastLink = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      podcastTitle: freezed == podcastTitle
          ? _value.podcastTitle
          : podcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjPodcastType: freezed == rjPodcastType
          ? _value.rjPodcastType
          : rjPodcastType // ignore: cast_nullable_to_non_nullable
              as String?,
      liveTime: freezed == liveTime
          ? _value.liveTime
          : liveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastLink: freezed == podcastLink
          ? _value.podcastLink
          : podcastLink // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedPodDetailsImplCopyWith<$Res>
    implements $CompletedPodDetailsCopyWith<$Res> {
  factory _$$CompletedPodDetailsImplCopyWith(_$CompletedPodDetailsImpl value,
          $Res Function(_$CompletedPodDetailsImpl) then) =
      __$$CompletedPodDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "podcast_id") int? podcastId,
      @JsonKey(name: "podcast_title") String? podcastTitle,
      @JsonKey(name: "rj_podcast_type") String? rjPodcastType,
      @JsonKey(name: "live_time") String? liveTime,
      @JsonKey(name: "podcast_link") String? podcastLink,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$CompletedPodDetailsImplCopyWithImpl<$Res>
    extends _$CompletedPodDetailsCopyWithImpl<$Res, _$CompletedPodDetailsImpl>
    implements _$$CompletedPodDetailsImplCopyWith<$Res> {
  __$$CompletedPodDetailsImplCopyWithImpl(_$CompletedPodDetailsImpl _value,
      $Res Function(_$CompletedPodDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? podcastTitle = freezed,
    Object? rjPodcastType = freezed,
    Object? liveTime = freezed,
    Object? podcastLink = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$CompletedPodDetailsImpl(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      podcastTitle: freezed == podcastTitle
          ? _value.podcastTitle
          : podcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjPodcastType: freezed == rjPodcastType
          ? _value.rjPodcastType
          : rjPodcastType // ignore: cast_nullable_to_non_nullable
              as String?,
      liveTime: freezed == liveTime
          ? _value.liveTime
          : liveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastLink: freezed == podcastLink
          ? _value.podcastLink
          : podcastLink // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedPodDetailsImpl implements _CompletedPodDetails {
  const _$CompletedPodDetailsImpl(
      {@JsonKey(name: "podcast_id") this.podcastId = 0,
      @JsonKey(name: "podcast_title") this.podcastTitle = '',
      @JsonKey(name: "rj_podcast_type") this.rjPodcastType = '',
      @JsonKey(name: "live_time") this.liveTime = '',
      @JsonKey(name: "podcast_link") this.podcastLink = '',
      @JsonKey(name: "cover") this.cover = ''});

  factory _$CompletedPodDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedPodDetailsImplFromJson(json);

  @override
  @JsonKey(name: "podcast_id")
  final int? podcastId;
  @override
  @JsonKey(name: "podcast_title")
  final String? podcastTitle;
  @override
  @JsonKey(name: "rj_podcast_type")
  final String? rjPodcastType;
  @override
  @JsonKey(name: "live_time")
  final String? liveTime;
  @override
  @JsonKey(name: "podcast_link")
  final String? podcastLink;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'CompletedPodDetails(podcastId: $podcastId, podcastTitle: $podcastTitle, rjPodcastType: $rjPodcastType, liveTime: $liveTime, podcastLink: $podcastLink, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedPodDetailsImpl &&
            (identical(other.podcastId, podcastId) ||
                other.podcastId == podcastId) &&
            (identical(other.podcastTitle, podcastTitle) ||
                other.podcastTitle == podcastTitle) &&
            (identical(other.rjPodcastType, rjPodcastType) ||
                other.rjPodcastType == rjPodcastType) &&
            (identical(other.liveTime, liveTime) ||
                other.liveTime == liveTime) &&
            (identical(other.podcastLink, podcastLink) ||
                other.podcastLink == podcastLink) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, podcastId, podcastTitle,
      rjPodcastType, liveTime, podcastLink, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedPodDetailsImplCopyWith<_$CompletedPodDetailsImpl> get copyWith =>
      __$$CompletedPodDetailsImplCopyWithImpl<_$CompletedPodDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedPodDetailsImplToJson(
      this,
    );
  }
}

abstract class _CompletedPodDetails implements CompletedPodDetails {
  const factory _CompletedPodDetails(
      {@JsonKey(name: "podcast_id") final int? podcastId,
      @JsonKey(name: "podcast_title") final String? podcastTitle,
      @JsonKey(name: "rj_podcast_type") final String? rjPodcastType,
      @JsonKey(name: "live_time") final String? liveTime,
      @JsonKey(name: "podcast_link") final String? podcastLink,
      @JsonKey(name: "cover") final String? cover}) = _$CompletedPodDetailsImpl;

  factory _CompletedPodDetails.fromJson(Map<String, dynamic> json) =
      _$CompletedPodDetailsImpl.fromJson;

  @override
  @JsonKey(name: "podcast_id")
  int? get podcastId;
  @override
  @JsonKey(name: "podcast_title")
  String? get podcastTitle;
  @override
  @JsonKey(name: "rj_podcast_type")
  String? get rjPodcastType;
  @override
  @JsonKey(name: "live_time")
  String? get liveTime;
  @override
  @JsonKey(name: "podcast_link")
  String? get podcastLink;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$CompletedPodDetailsImplCopyWith<_$CompletedPodDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
