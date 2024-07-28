// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_podcast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPodcastModel _$UserPodcastModelFromJson(Map<String, dynamic> json) {
  return _UserPodcastModel.fromJson(json);
}

/// @nodoc
mixin _$UserPodcastModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "banner")
  List<Banner>? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: "Upcoming_List")
  List<UpcomingList>? get upcomingList => throw _privateConstructorUsedError;
  @JsonKey(name: "follow")
  List<Follow>? get follow => throw _privateConstructorUsedError;
  @JsonKey(name: "Recent_Podcast")
  List<RecentPodcast>? get recentPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: "Podcast_List")
  List<PodcastList>? get podcastList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPodcastModelCopyWith<UserPodcastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPodcastModelCopyWith<$Res> {
  factory $UserPodcastModelCopyWith(
          UserPodcastModel value, $Res Function(UserPodcastModel) then) =
      _$UserPodcastModelCopyWithImpl<$Res, UserPodcastModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "banner") List<Banner>? banner,
      @JsonKey(name: "Upcoming_List") List<UpcomingList>? upcomingList,
      @JsonKey(name: "follow") List<Follow>? follow,
      @JsonKey(name: "Recent_Podcast") List<RecentPodcast>? recentPodcast,
      @JsonKey(name: "Podcast_List") List<PodcastList>? podcastList});
}

/// @nodoc
class _$UserPodcastModelCopyWithImpl<$Res, $Val extends UserPodcastModel>
    implements $UserPodcastModelCopyWith<$Res> {
  _$UserPodcastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? banner = freezed,
    Object? upcomingList = freezed,
    Object? follow = freezed,
    Object? recentPodcast = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<Banner>?,
      upcomingList: freezed == upcomingList
          ? _value.upcomingList
          : upcomingList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingList>?,
      follow: freezed == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as List<Follow>?,
      recentPodcast: freezed == recentPodcast
          ? _value.recentPodcast
          : recentPodcast // ignore: cast_nullable_to_non_nullable
              as List<RecentPodcast>?,
      podcastList: freezed == podcastList
          ? _value.podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<PodcastList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPodcastModelImplCopyWith<$Res>
    implements $UserPodcastModelCopyWith<$Res> {
  factory _$$UserPodcastModelImplCopyWith(_$UserPodcastModelImpl value,
          $Res Function(_$UserPodcastModelImpl) then) =
      __$$UserPodcastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "banner") List<Banner>? banner,
      @JsonKey(name: "Upcoming_List") List<UpcomingList>? upcomingList,
      @JsonKey(name: "follow") List<Follow>? follow,
      @JsonKey(name: "Recent_Podcast") List<RecentPodcast>? recentPodcast,
      @JsonKey(name: "Podcast_List") List<PodcastList>? podcastList});
}

/// @nodoc
class __$$UserPodcastModelImplCopyWithImpl<$Res>
    extends _$UserPodcastModelCopyWithImpl<$Res, _$UserPodcastModelImpl>
    implements _$$UserPodcastModelImplCopyWith<$Res> {
  __$$UserPodcastModelImplCopyWithImpl(_$UserPodcastModelImpl _value,
      $Res Function(_$UserPodcastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? banner = freezed,
    Object? upcomingList = freezed,
    Object? follow = freezed,
    Object? recentPodcast = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_$UserPodcastModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value._banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<Banner>?,
      upcomingList: freezed == upcomingList
          ? _value._upcomingList
          : upcomingList // ignore: cast_nullable_to_non_nullable
              as List<UpcomingList>?,
      follow: freezed == follow
          ? _value._follow
          : follow // ignore: cast_nullable_to_non_nullable
              as List<Follow>?,
      recentPodcast: freezed == recentPodcast
          ? _value._recentPodcast
          : recentPodcast // ignore: cast_nullable_to_non_nullable
              as List<RecentPodcast>?,
      podcastList: freezed == podcastList
          ? _value._podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<PodcastList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPodcastModelImpl implements _UserPodcastModel {
  const _$UserPodcastModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "banner") final List<Banner>? banner,
      @JsonKey(name: "Upcoming_List") final List<UpcomingList>? upcomingList,
      @JsonKey(name: "follow") final List<Follow>? follow,
      @JsonKey(name: "Recent_Podcast") final List<RecentPodcast>? recentPodcast,
      @JsonKey(name: "Podcast_List") final List<PodcastList>? podcastList})
      : _banner = banner,
        _upcomingList = upcomingList,
        _follow = follow,
        _recentPodcast = recentPodcast,
        _podcastList = podcastList;

  factory _$UserPodcastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPodcastModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<Banner>? _banner;
  @override
  @JsonKey(name: "banner")
  List<Banner>? get banner {
    final value = _banner;
    if (value == null) return null;
    if (_banner is EqualUnmodifiableListView) return _banner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UpcomingList>? _upcomingList;
  @override
  @JsonKey(name: "Upcoming_List")
  List<UpcomingList>? get upcomingList {
    final value = _upcomingList;
    if (value == null) return null;
    if (_upcomingList is EqualUnmodifiableListView) return _upcomingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Follow>? _follow;
  @override
  @JsonKey(name: "follow")
  List<Follow>? get follow {
    final value = _follow;
    if (value == null) return null;
    if (_follow is EqualUnmodifiableListView) return _follow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecentPodcast>? _recentPodcast;
  @override
  @JsonKey(name: "Recent_Podcast")
  List<RecentPodcast>? get recentPodcast {
    final value = _recentPodcast;
    if (value == null) return null;
    if (_recentPodcast is EqualUnmodifiableListView) return _recentPodcast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PodcastList>? _podcastList;
  @override
  @JsonKey(name: "Podcast_List")
  List<PodcastList>? get podcastList {
    final value = _podcastList;
    if (value == null) return null;
    if (_podcastList is EqualUnmodifiableListView) return _podcastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserPodcastModel(status: $status, banner: $banner, upcomingList: $upcomingList, follow: $follow, recentPodcast: $recentPodcast, podcastList: $podcastList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPodcastModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._banner, _banner) &&
            const DeepCollectionEquality()
                .equals(other._upcomingList, _upcomingList) &&
            const DeepCollectionEquality().equals(other._follow, _follow) &&
            const DeepCollectionEquality()
                .equals(other._recentPodcast, _recentPodcast) &&
            const DeepCollectionEquality()
                .equals(other._podcastList, _podcastList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_banner),
      const DeepCollectionEquality().hash(_upcomingList),
      const DeepCollectionEquality().hash(_follow),
      const DeepCollectionEquality().hash(_recentPodcast),
      const DeepCollectionEquality().hash(_podcastList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPodcastModelImplCopyWith<_$UserPodcastModelImpl> get copyWith =>
      __$$UserPodcastModelImplCopyWithImpl<_$UserPodcastModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPodcastModelImplToJson(
      this,
    );
  }
}

abstract class _UserPodcastModel implements UserPodcastModel {
  const factory _UserPodcastModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "banner") final List<Banner>? banner,
      @JsonKey(name: "Upcoming_List") final List<UpcomingList>? upcomingList,
      @JsonKey(name: "follow") final List<Follow>? follow,
      @JsonKey(name: "Recent_Podcast") final List<RecentPodcast>? recentPodcast,
      @JsonKey(name: "Podcast_List")
      final List<PodcastList>? podcastList}) = _$UserPodcastModelImpl;

  factory _UserPodcastModel.fromJson(Map<String, dynamic> json) =
      _$UserPodcastModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "banner")
  List<Banner>? get banner;
  @override
  @JsonKey(name: "Upcoming_List")
  List<UpcomingList>? get upcomingList;
  @override
  @JsonKey(name: "follow")
  List<Follow>? get follow;
  @override
  @JsonKey(name: "Recent_Podcast")
  List<RecentPodcast>? get recentPodcast;
  @override
  @JsonKey(name: "Podcast_List")
  List<PodcastList>? get podcastList;
  @override
  @JsonKey(ignore: true)
  _$$UserPodcastModelImplCopyWith<_$UserPodcastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
mixin _$Banner {
  @JsonKey(name: "banner_id")
  int? get bannerId => throw _privateConstructorUsedError;
  @JsonKey(name: "banner_title")
  String? get bannerTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "banner")
  String? get banner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res, Banner>;
  @useResult
  $Res call(
      {@JsonKey(name: "banner_id") int? bannerId,
      @JsonKey(name: "banner_title") String? bannerTitle,
      @JsonKey(name: "banner") String? banner});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res, $Val extends Banner>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerId = freezed,
    Object? bannerTitle = freezed,
    Object? banner = freezed,
  }) {
    return _then(_value.copyWith(
      bannerId: freezed == bannerId
          ? _value.bannerId
          : bannerId // ignore: cast_nullable_to_non_nullable
              as int?,
      bannerTitle: freezed == bannerTitle
          ? _value.bannerTitle
          : bannerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerImplCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$$BannerImplCopyWith(
          _$BannerImpl value, $Res Function(_$BannerImpl) then) =
      __$$BannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "banner_id") int? bannerId,
      @JsonKey(name: "banner_title") String? bannerTitle,
      @JsonKey(name: "banner") String? banner});
}

/// @nodoc
class __$$BannerImplCopyWithImpl<$Res>
    extends _$BannerCopyWithImpl<$Res, _$BannerImpl>
    implements _$$BannerImplCopyWith<$Res> {
  __$$BannerImplCopyWithImpl(
      _$BannerImpl _value, $Res Function(_$BannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerId = freezed,
    Object? bannerTitle = freezed,
    Object? banner = freezed,
  }) {
    return _then(_$BannerImpl(
      bannerId: freezed == bannerId
          ? _value.bannerId
          : bannerId // ignore: cast_nullable_to_non_nullable
              as int?,
      bannerTitle: freezed == bannerTitle
          ? _value.bannerTitle
          : bannerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerImpl implements _Banner {
  const _$BannerImpl(
      {@JsonKey(name: "banner_id") this.bannerId,
      @JsonKey(name: "banner_title") this.bannerTitle,
      @JsonKey(name: "banner") this.banner});

  factory _$BannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerImplFromJson(json);

  @override
  @JsonKey(name: "banner_id")
  final int? bannerId;
  @override
  @JsonKey(name: "banner_title")
  final String? bannerTitle;
  @override
  @JsonKey(name: "banner")
  final String? banner;

  @override
  String toString() {
    return 'Banner(bannerId: $bannerId, bannerTitle: $bannerTitle, banner: $banner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerImpl &&
            (identical(other.bannerId, bannerId) ||
                other.bannerId == bannerId) &&
            (identical(other.bannerTitle, bannerTitle) ||
                other.bannerTitle == bannerTitle) &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bannerId, bannerTitle, banner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerImplCopyWith<_$BannerImpl> get copyWith =>
      __$$BannerImplCopyWithImpl<_$BannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerImplToJson(
      this,
    );
  }
}

abstract class _Banner implements Banner {
  const factory _Banner(
      {@JsonKey(name: "banner_id") final int? bannerId,
      @JsonKey(name: "banner_title") final String? bannerTitle,
      @JsonKey(name: "banner") final String? banner}) = _$BannerImpl;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$BannerImpl.fromJson;

  @override
  @JsonKey(name: "banner_id")
  int? get bannerId;
  @override
  @JsonKey(name: "banner_title")
  String? get bannerTitle;
  @override
  @JsonKey(name: "banner")
  String? get banner;
  @override
  @JsonKey(ignore: true)
  _$$BannerImplCopyWith<_$BannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpcomingList _$UpcomingListFromJson(Map<String, dynamic> json) {
  return _UpcomingList.fromJson(json);
}

/// @nodoc
mixin _$UpcomingList {
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
  $UpcomingListCopyWith<UpcomingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingListCopyWith<$Res> {
  factory $UpcomingListCopyWith(
          UpcomingList value, $Res Function(UpcomingList) then) =
      _$UpcomingListCopyWithImpl<$Res, UpcomingList>;
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
class _$UpcomingListCopyWithImpl<$Res, $Val extends UpcomingList>
    implements $UpcomingListCopyWith<$Res> {
  _$UpcomingListCopyWithImpl(this._value, this._then);

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
abstract class _$$UpcomingListImplCopyWith<$Res>
    implements $UpcomingListCopyWith<$Res> {
  factory _$$UpcomingListImplCopyWith(
          _$UpcomingListImpl value, $Res Function(_$UpcomingListImpl) then) =
      __$$UpcomingListImplCopyWithImpl<$Res>;
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
class __$$UpcomingListImplCopyWithImpl<$Res>
    extends _$UpcomingListCopyWithImpl<$Res, _$UpcomingListImpl>
    implements _$$UpcomingListImplCopyWith<$Res> {
  __$$UpcomingListImplCopyWithImpl(
      _$UpcomingListImpl _value, $Res Function(_$UpcomingListImpl) _then)
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
    return _then(_$UpcomingListImpl(
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
class _$UpcomingListImpl implements _UpcomingList {
  const _$UpcomingListImpl(
      {@JsonKey(name: "podcast_id") this.podcastId,
      @JsonKey(name: "podcast_unique_id") this.podcastUniqueId,
      @JsonKey(name: "podcast_title") this.podcastTitle,
      @JsonKey(name: "rj_podcast_category_title") this.rjPodcastCategoryTitle,
      @JsonKey(name: "rj_podcast_type") this.rjPodcastType,
      @JsonKey(name: "live_time") this.liveTime,
      @JsonKey(name: "scheduled_date") this.scheduledDate,
      @JsonKey(name: "scheduled_time") this.scheduledTime,
      @JsonKey(name: "cover") this.cover,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "live_status") this.liveStatus,
      @JsonKey(name: "pod_status") this.podStatus,
      @JsonKey(name: "podcast_end_time") this.podcastEndTime});

  factory _$UpcomingListImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingListImplFromJson(json);

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
    return 'UpcomingList(podcastId: $podcastId, podcastUniqueId: $podcastUniqueId, podcastTitle: $podcastTitle, rjPodcastCategoryTitle: $rjPodcastCategoryTitle, rjPodcastType: $rjPodcastType, liveTime: $liveTime, scheduledDate: $scheduledDate, scheduledTime: $scheduledTime, cover: $cover, status: $status, liveStatus: $liveStatus, podStatus: $podStatus, podcastEndTime: $podcastEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingListImpl &&
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
  _$$UpcomingListImplCopyWith<_$UpcomingListImpl> get copyWith =>
      __$$UpcomingListImplCopyWithImpl<_$UpcomingListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingListImplToJson(
      this,
    );
  }
}

abstract class _UpcomingList implements UpcomingList {
  const factory _UpcomingList(
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
      _$UpcomingListImpl;

  factory _UpcomingList.fromJson(Map<String, dynamic> json) =
      _$UpcomingListImpl.fromJson;

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
  _$$UpcomingListImplCopyWith<_$UpcomingListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Follow _$FollowFromJson(Map<String, dynamic> json) {
  return _Follow.fromJson(json);
}

/// @nodoc
mixin _$Follow {
  @JsonKey(name: "artist_id")
  int? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_name")
  String? get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_cover")
  String? get artistCover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowCopyWith<Follow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowCopyWith<$Res> {
  factory $FollowCopyWith(Follow value, $Res Function(Follow) then) =
      _$FollowCopyWithImpl<$Res, Follow>;
  @useResult
  $Res call(
      {@JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "artist_name") String? artistName,
      @JsonKey(name: "artist_cover") String? artistCover});
}

/// @nodoc
class _$FollowCopyWithImpl<$Res, $Val extends Follow>
    implements $FollowCopyWith<$Res> {
  _$FollowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = freezed,
    Object? artistName = freezed,
    Object? artistCover = freezed,
  }) {
    return _then(_value.copyWith(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistCover: freezed == artistCover
          ? _value.artistCover
          : artistCover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowImplCopyWith<$Res> implements $FollowCopyWith<$Res> {
  factory _$$FollowImplCopyWith(
          _$FollowImpl value, $Res Function(_$FollowImpl) then) =
      __$$FollowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "artist_name") String? artistName,
      @JsonKey(name: "artist_cover") String? artistCover});
}

/// @nodoc
class __$$FollowImplCopyWithImpl<$Res>
    extends _$FollowCopyWithImpl<$Res, _$FollowImpl>
    implements _$$FollowImplCopyWith<$Res> {
  __$$FollowImplCopyWithImpl(
      _$FollowImpl _value, $Res Function(_$FollowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = freezed,
    Object? artistName = freezed,
    Object? artistCover = freezed,
  }) {
    return _then(_$FollowImpl(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistCover: freezed == artistCover
          ? _value.artistCover
          : artistCover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowImpl implements _Follow {
  const _$FollowImpl(
      {@JsonKey(name: "artist_id") this.artistId,
      @JsonKey(name: "artist_name") this.artistName,
      @JsonKey(name: "artist_cover") this.artistCover});

  factory _$FollowImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowImplFromJson(json);

  @override
  @JsonKey(name: "artist_id")
  final int? artistId;
  @override
  @JsonKey(name: "artist_name")
  final String? artistName;
  @override
  @JsonKey(name: "artist_cover")
  final String? artistCover;

  @override
  String toString() {
    return 'Follow(artistId: $artistId, artistName: $artistName, artistCover: $artistCover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.artistCover, artistCover) ||
                other.artistCover == artistCover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, artistId, artistName, artistCover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowImplCopyWith<_$FollowImpl> get copyWith =>
      __$$FollowImplCopyWithImpl<_$FollowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowImplToJson(
      this,
    );
  }
}

abstract class _Follow implements Follow {
  const factory _Follow(
      {@JsonKey(name: "artist_id") final int? artistId,
      @JsonKey(name: "artist_name") final String? artistName,
      @JsonKey(name: "artist_cover") final String? artistCover}) = _$FollowImpl;

  factory _Follow.fromJson(Map<String, dynamic> json) = _$FollowImpl.fromJson;

  @override
  @JsonKey(name: "artist_id")
  int? get artistId;
  @override
  @JsonKey(name: "artist_name")
  String? get artistName;
  @override
  @JsonKey(name: "artist_cover")
  String? get artistCover;
  @override
  @JsonKey(ignore: true)
  _$$FollowImplCopyWith<_$FollowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentPodcast _$RecentPodcastFromJson(Map<String, dynamic> json) {
  return _RecentPodcast.fromJson(json);
}

/// @nodoc
mixin _$RecentPodcast {
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
  $RecentPodcastCopyWith<RecentPodcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentPodcastCopyWith<$Res> {
  factory $RecentPodcastCopyWith(
          RecentPodcast value, $Res Function(RecentPodcast) then) =
      _$RecentPodcastCopyWithImpl<$Res, RecentPodcast>;
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
class _$RecentPodcastCopyWithImpl<$Res, $Val extends RecentPodcast>
    implements $RecentPodcastCopyWith<$Res> {
  _$RecentPodcastCopyWithImpl(this._value, this._then);

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
abstract class _$$RecentPodcastImplCopyWith<$Res>
    implements $RecentPodcastCopyWith<$Res> {
  factory _$$RecentPodcastImplCopyWith(
          _$RecentPodcastImpl value, $Res Function(_$RecentPodcastImpl) then) =
      __$$RecentPodcastImplCopyWithImpl<$Res>;
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
class __$$RecentPodcastImplCopyWithImpl<$Res>
    extends _$RecentPodcastCopyWithImpl<$Res, _$RecentPodcastImpl>
    implements _$$RecentPodcastImplCopyWith<$Res> {
  __$$RecentPodcastImplCopyWithImpl(
      _$RecentPodcastImpl _value, $Res Function(_$RecentPodcastImpl) _then)
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
    return _then(_$RecentPodcastImpl(
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
class _$RecentPodcastImpl implements _RecentPodcast {
  const _$RecentPodcastImpl(
      {@JsonKey(name: "podcast_id") this.podcastId,
      @JsonKey(name: "podcast_title") this.podcastTitle,
      @JsonKey(name: "rj_podcast_type") this.rjPodcastType,
      @JsonKey(name: "live_time") this.liveTime,
      @JsonKey(name: "podcast_link") this.podcastLink,
      @JsonKey(name: "cover") this.cover});

  factory _$RecentPodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentPodcastImplFromJson(json);

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
    return 'RecentPodcast(podcastId: $podcastId, podcastTitle: $podcastTitle, rjPodcastType: $rjPodcastType, liveTime: $liveTime, podcastLink: $podcastLink, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentPodcastImpl &&
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
  _$$RecentPodcastImplCopyWith<_$RecentPodcastImpl> get copyWith =>
      __$$RecentPodcastImplCopyWithImpl<_$RecentPodcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentPodcastImplToJson(
      this,
    );
  }
}

abstract class _RecentPodcast implements RecentPodcast {
  const factory _RecentPodcast(
      {@JsonKey(name: "podcast_id") final int? podcastId,
      @JsonKey(name: "podcast_title") final String? podcastTitle,
      @JsonKey(name: "rj_podcast_type") final String? rjPodcastType,
      @JsonKey(name: "live_time") final String? liveTime,
      @JsonKey(name: "podcast_link") final String? podcastLink,
      @JsonKey(name: "cover") final String? cover}) = _$RecentPodcastImpl;

  factory _RecentPodcast.fromJson(Map<String, dynamic> json) =
      _$RecentPodcastImpl.fromJson;

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
  _$$RecentPodcastImplCopyWith<_$RecentPodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PodcastList _$PodcastListFromJson(Map<String, dynamic> json) {
  return _PodcastList.fromJson(json);
}

/// @nodoc
mixin _$PodcastList {
  @JsonKey(name: "Heading")
  String? get heading => throw _privateConstructorUsedError;
  @JsonKey(name: "Category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "Podcast List")
  List<PodcastListRecent>? get podcastList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastListCopyWith<PodcastList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastListCopyWith<$Res> {
  factory $PodcastListCopyWith(
          PodcastList value, $Res Function(PodcastList) then) =
      _$PodcastListCopyWithImpl<$Res, PodcastList>;
  @useResult
  $Res call(
      {@JsonKey(name: "Heading") String? heading,
      @JsonKey(name: "Category_id") int? categoryId,
      @JsonKey(name: "Podcast List") List<PodcastListRecent>? podcastList});
}

/// @nodoc
class _$PodcastListCopyWithImpl<$Res, $Val extends PodcastList>
    implements $PodcastListCopyWith<$Res> {
  _$PodcastListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = freezed,
    Object? categoryId = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_value.copyWith(
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      podcastList: freezed == podcastList
          ? _value.podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<PodcastListRecent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastListImplCopyWith<$Res>
    implements $PodcastListCopyWith<$Res> {
  factory _$$PodcastListImplCopyWith(
          _$PodcastListImpl value, $Res Function(_$PodcastListImpl) then) =
      __$$PodcastListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Heading") String? heading,
      @JsonKey(name: "Category_id") int? categoryId,
      @JsonKey(name: "Podcast List") List<PodcastListRecent>? podcastList});
}

/// @nodoc
class __$$PodcastListImplCopyWithImpl<$Res>
    extends _$PodcastListCopyWithImpl<$Res, _$PodcastListImpl>
    implements _$$PodcastListImplCopyWith<$Res> {
  __$$PodcastListImplCopyWithImpl(
      _$PodcastListImpl _value, $Res Function(_$PodcastListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = freezed,
    Object? categoryId = freezed,
    Object? podcastList = freezed,
  }) {
    return _then(_$PodcastListImpl(
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      podcastList: freezed == podcastList
          ? _value._podcastList
          : podcastList // ignore: cast_nullable_to_non_nullable
              as List<PodcastListRecent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastListImpl implements _PodcastList {
  const _$PodcastListImpl(
      {@JsonKey(name: "Heading") this.heading,
      @JsonKey(name: "Category_id") this.categoryId,
      @JsonKey(name: "Podcast List")
      final List<PodcastListRecent>? podcastList})
      : _podcastList = podcastList;

  factory _$PodcastListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastListImplFromJson(json);

  @override
  @JsonKey(name: "Heading")
  final String? heading;
  @override
  @JsonKey(name: "Category_id")
  final int? categoryId;
  final List<PodcastListRecent>? _podcastList;
  @override
  @JsonKey(name: "Podcast List")
  List<PodcastListRecent>? get podcastList {
    final value = _podcastList;
    if (value == null) return null;
    if (_podcastList is EqualUnmodifiableListView) return _podcastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PodcastList(heading: $heading, categoryId: $categoryId, podcastList: $podcastList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastListImpl &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality()
                .equals(other._podcastList, _podcastList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, heading, categoryId,
      const DeepCollectionEquality().hash(_podcastList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastListImplCopyWith<_$PodcastListImpl> get copyWith =>
      __$$PodcastListImplCopyWithImpl<_$PodcastListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastListImplToJson(
      this,
    );
  }
}

abstract class _PodcastList implements PodcastList {
  const factory _PodcastList(
      {@JsonKey(name: "Heading") final String? heading,
      @JsonKey(name: "Category_id") final int? categoryId,
      @JsonKey(name: "Podcast List")
      final List<PodcastListRecent>? podcastList}) = _$PodcastListImpl;

  factory _PodcastList.fromJson(Map<String, dynamic> json) =
      _$PodcastListImpl.fromJson;

  @override
  @JsonKey(name: "Heading")
  String? get heading;
  @override
  @JsonKey(name: "Category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "Podcast List")
  List<PodcastListRecent>? get podcastList;
  @override
  @JsonKey(ignore: true)
  _$$PodcastListImplCopyWith<_$PodcastListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PodcastListRecent _$PodcastListRecentFromJson(Map<String, dynamic> json) {
  return _PodcastListRecent.fromJson(json);
}

/// @nodoc
mixin _$PodcastListRecent {
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
  $PodcastListRecentCopyWith<PodcastListRecent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastListRecentCopyWith<$Res> {
  factory $PodcastListRecentCopyWith(
          PodcastListRecent value, $Res Function(PodcastListRecent) then) =
      _$PodcastListRecentCopyWithImpl<$Res, PodcastListRecent>;
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
class _$PodcastListRecentCopyWithImpl<$Res, $Val extends PodcastListRecent>
    implements $PodcastListRecentCopyWith<$Res> {
  _$PodcastListRecentCopyWithImpl(this._value, this._then);

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
abstract class _$$PodcastListRecentImplCopyWith<$Res>
    implements $PodcastListRecentCopyWith<$Res> {
  factory _$$PodcastListRecentImplCopyWith(_$PodcastListRecentImpl value,
          $Res Function(_$PodcastListRecentImpl) then) =
      __$$PodcastListRecentImplCopyWithImpl<$Res>;
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
class __$$PodcastListRecentImplCopyWithImpl<$Res>
    extends _$PodcastListRecentCopyWithImpl<$Res, _$PodcastListRecentImpl>
    implements _$$PodcastListRecentImplCopyWith<$Res> {
  __$$PodcastListRecentImplCopyWithImpl(_$PodcastListRecentImpl _value,
      $Res Function(_$PodcastListRecentImpl) _then)
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
    return _then(_$PodcastListRecentImpl(
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
class _$PodcastListRecentImpl implements _PodcastListRecent {
  const _$PodcastListRecentImpl(
      {@JsonKey(name: "podcast_id") this.podcastId,
      @JsonKey(name: "podcast_title") this.podcastTitle,
      @JsonKey(name: "rj_podcast_type") this.rjPodcastType,
      @JsonKey(name: "live_time") this.liveTime,
      @JsonKey(name: "podcast_link") this.podcastLink,
      @JsonKey(name: "cover") this.cover});

  factory _$PodcastListRecentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastListRecentImplFromJson(json);

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
    return 'PodcastListRecent(podcastId: $podcastId, podcastTitle: $podcastTitle, rjPodcastType: $rjPodcastType, liveTime: $liveTime, podcastLink: $podcastLink, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastListRecentImpl &&
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
  _$$PodcastListRecentImplCopyWith<_$PodcastListRecentImpl> get copyWith =>
      __$$PodcastListRecentImplCopyWithImpl<_$PodcastListRecentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastListRecentImplToJson(
      this,
    );
  }
}

abstract class _PodcastListRecent implements PodcastListRecent {
  const factory _PodcastListRecent(
      {@JsonKey(name: "podcast_id") final int? podcastId,
      @JsonKey(name: "podcast_title") final String? podcastTitle,
      @JsonKey(name: "rj_podcast_type") final String? rjPodcastType,
      @JsonKey(name: "live_time") final String? liveTime,
      @JsonKey(name: "podcast_link") final String? podcastLink,
      @JsonKey(name: "cover") final String? cover}) = _$PodcastListRecentImpl;

  factory _PodcastListRecent.fromJson(Map<String, dynamic> json) =
      _$PodcastListRecentImpl.fromJson;

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
  _$$PodcastListRecentImplCopyWith<_$PodcastListRecentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
