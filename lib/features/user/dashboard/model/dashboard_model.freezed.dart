// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) {
  return _DashboardModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Banner")
  List<Banner>? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: "Album")
  List<Album>? get album => throw _privateConstructorUsedError;
  @JsonKey(name: "Trending_song")
  List<TrendingSong>? get trendingSong => throw _privateConstructorUsedError;
  @JsonKey(name: "Ads_banner")
  List<AdsBanner>? get adsBanner => throw _privateConstructorUsedError;
  @JsonKey(name: "Artist")
  List<Artist>? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: "Gener")
  List<Gener>? get gener => throw _privateConstructorUsedError;
  @JsonKey(name: "PlayList")
  List<PlayList>? get playList => throw _privateConstructorUsedError;
  @JsonKey(name: "Live_podcast")
  List<LivePodcast>? get livePodcast => throw _privateConstructorUsedError;
  @JsonKey(name: "Popular_song")
  List<PopularSong>? get popularSong => throw _privateConstructorUsedError;
  @JsonKey(name: "Top_artist")
  List<TopArtist>? get topArtist => throw _privateConstructorUsedError;
  @JsonKey(name: "Workship_songs")
  List<WorkshipSong>? get workshipSongs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardModelCopyWith<DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res, DashboardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "Banner") List<Banner>? banner,
      @JsonKey(name: "Album") List<Album>? album,
      @JsonKey(name: "Trending_song") List<TrendingSong>? trendingSong,
      @JsonKey(name: "Ads_banner") List<AdsBanner>? adsBanner,
      @JsonKey(name: "Artist") List<Artist>? artist,
      @JsonKey(name: "Gener") List<Gener>? gener,
      @JsonKey(name: "PlayList") List<PlayList>? playList,
      @JsonKey(name: "Live_podcast") List<LivePodcast>? livePodcast,
      @JsonKey(name: "Popular_song") List<PopularSong>? popularSong,
      @JsonKey(name: "Top_artist") List<TopArtist>? topArtist,
      @JsonKey(name: "Workship_songs") List<WorkshipSong>? workshipSongs});
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res, $Val extends DashboardModel>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? banner = freezed,
    Object? album = freezed,
    Object? trendingSong = freezed,
    Object? adsBanner = freezed,
    Object? artist = freezed,
    Object? gener = freezed,
    Object? playList = freezed,
    Object? livePodcast = freezed,
    Object? popularSong = freezed,
    Object? topArtist = freezed,
    Object? workshipSongs = freezed,
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
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Album>?,
      trendingSong: freezed == trendingSong
          ? _value.trendingSong
          : trendingSong // ignore: cast_nullable_to_non_nullable
              as List<TrendingSong>?,
      adsBanner: freezed == adsBanner
          ? _value.adsBanner
          : adsBanner // ignore: cast_nullable_to_non_nullable
              as List<AdsBanner>?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      gener: freezed == gener
          ? _value.gener
          : gener // ignore: cast_nullable_to_non_nullable
              as List<Gener>?,
      playList: freezed == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<PlayList>?,
      livePodcast: freezed == livePodcast
          ? _value.livePodcast
          : livePodcast // ignore: cast_nullable_to_non_nullable
              as List<LivePodcast>?,
      popularSong: freezed == popularSong
          ? _value.popularSong
          : popularSong // ignore: cast_nullable_to_non_nullable
              as List<PopularSong>?,
      topArtist: freezed == topArtist
          ? _value.topArtist
          : topArtist // ignore: cast_nullable_to_non_nullable
              as List<TopArtist>?,
      workshipSongs: freezed == workshipSongs
          ? _value.workshipSongs
          : workshipSongs // ignore: cast_nullable_to_non_nullable
              as List<WorkshipSong>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardModelImplCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$$DashboardModelImplCopyWith(_$DashboardModelImpl value,
          $Res Function(_$DashboardModelImpl) then) =
      __$$DashboardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "Banner") List<Banner>? banner,
      @JsonKey(name: "Album") List<Album>? album,
      @JsonKey(name: "Trending_song") List<TrendingSong>? trendingSong,
      @JsonKey(name: "Ads_banner") List<AdsBanner>? adsBanner,
      @JsonKey(name: "Artist") List<Artist>? artist,
      @JsonKey(name: "Gener") List<Gener>? gener,
      @JsonKey(name: "PlayList") List<PlayList>? playList,
      @JsonKey(name: "Live_podcast") List<LivePodcast>? livePodcast,
      @JsonKey(name: "Popular_song") List<PopularSong>? popularSong,
      @JsonKey(name: "Top_artist") List<TopArtist>? topArtist,
      @JsonKey(name: "Workship_songs") List<WorkshipSong>? workshipSongs});
}

/// @nodoc
class __$$DashboardModelImplCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res, _$DashboardModelImpl>
    implements _$$DashboardModelImplCopyWith<$Res> {
  __$$DashboardModelImplCopyWithImpl(
      _$DashboardModelImpl _value, $Res Function(_$DashboardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? banner = freezed,
    Object? album = freezed,
    Object? trendingSong = freezed,
    Object? adsBanner = freezed,
    Object? artist = freezed,
    Object? gener = freezed,
    Object? playList = freezed,
    Object? livePodcast = freezed,
    Object? popularSong = freezed,
    Object? topArtist = freezed,
    Object? workshipSongs = freezed,
  }) {
    return _then(_$DashboardModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value._banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<Banner>?,
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Album>?,
      trendingSong: freezed == trendingSong
          ? _value._trendingSong
          : trendingSong // ignore: cast_nullable_to_non_nullable
              as List<TrendingSong>?,
      adsBanner: freezed == adsBanner
          ? _value._adsBanner
          : adsBanner // ignore: cast_nullable_to_non_nullable
              as List<AdsBanner>?,
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      gener: freezed == gener
          ? _value._gener
          : gener // ignore: cast_nullable_to_non_nullable
              as List<Gener>?,
      playList: freezed == playList
          ? _value._playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<PlayList>?,
      livePodcast: freezed == livePodcast
          ? _value._livePodcast
          : livePodcast // ignore: cast_nullable_to_non_nullable
              as List<LivePodcast>?,
      popularSong: freezed == popularSong
          ? _value._popularSong
          : popularSong // ignore: cast_nullable_to_non_nullable
              as List<PopularSong>?,
      topArtist: freezed == topArtist
          ? _value._topArtist
          : topArtist // ignore: cast_nullable_to_non_nullable
              as List<TopArtist>?,
      workshipSongs: freezed == workshipSongs
          ? _value._workshipSongs
          : workshipSongs // ignore: cast_nullable_to_non_nullable
              as List<WorkshipSong>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardModelImpl implements _DashboardModel {
  const _$DashboardModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "Banner") final List<Banner>? banner,
      @JsonKey(name: "Album") final List<Album>? album,
      @JsonKey(name: "Trending_song") final List<TrendingSong>? trendingSong,
      @JsonKey(name: "Ads_banner") final List<AdsBanner>? adsBanner,
      @JsonKey(name: "Artist") final List<Artist>? artist,
      @JsonKey(name: "Gener") final List<Gener>? gener,
      @JsonKey(name: "PlayList") final List<PlayList>? playList,
      @JsonKey(name: "Live_podcast") final List<LivePodcast>? livePodcast,
      @JsonKey(name: "Popular_song") final List<PopularSong>? popularSong,
      @JsonKey(name: "Top_artist") final List<TopArtist>? topArtist,
      @JsonKey(name: "Workship_songs") final List<WorkshipSong>? workshipSongs})
      : _banner = banner,
        _album = album,
        _trendingSong = trendingSong,
        _adsBanner = adsBanner,
        _artist = artist,
        _gener = gener,
        _playList = playList,
        _livePodcast = livePodcast,
        _popularSong = popularSong,
        _topArtist = topArtist,
        _workshipSongs = workshipSongs;

  factory _$DashboardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<Banner>? _banner;
  @override
  @JsonKey(name: "Banner")
  List<Banner>? get banner {
    final value = _banner;
    if (value == null) return null;
    if (_banner is EqualUnmodifiableListView) return _banner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Album>? _album;
  @override
  @JsonKey(name: "Album")
  List<Album>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TrendingSong>? _trendingSong;
  @override
  @JsonKey(name: "Trending_song")
  List<TrendingSong>? get trendingSong {
    final value = _trendingSong;
    if (value == null) return null;
    if (_trendingSong is EqualUnmodifiableListView) return _trendingSong;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdsBanner>? _adsBanner;
  @override
  @JsonKey(name: "Ads_banner")
  List<AdsBanner>? get adsBanner {
    final value = _adsBanner;
    if (value == null) return null;
    if (_adsBanner is EqualUnmodifiableListView) return _adsBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Artist>? _artist;
  @override
  @JsonKey(name: "Artist")
  List<Artist>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Gener>? _gener;
  @override
  @JsonKey(name: "Gener")
  List<Gener>? get gener {
    final value = _gener;
    if (value == null) return null;
    if (_gener is EqualUnmodifiableListView) return _gener;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PlayList>? _playList;
  @override
  @JsonKey(name: "PlayList")
  List<PlayList>? get playList {
    final value = _playList;
    if (value == null) return null;
    if (_playList is EqualUnmodifiableListView) return _playList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LivePodcast>? _livePodcast;
  @override
  @JsonKey(name: "Live_podcast")
  List<LivePodcast>? get livePodcast {
    final value = _livePodcast;
    if (value == null) return null;
    if (_livePodcast is EqualUnmodifiableListView) return _livePodcast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PopularSong>? _popularSong;
  @override
  @JsonKey(name: "Popular_song")
  List<PopularSong>? get popularSong {
    final value = _popularSong;
    if (value == null) return null;
    if (_popularSong is EqualUnmodifiableListView) return _popularSong;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopArtist>? _topArtist;
  @override
  @JsonKey(name: "Top_artist")
  List<TopArtist>? get topArtist {
    final value = _topArtist;
    if (value == null) return null;
    if (_topArtist is EqualUnmodifiableListView) return _topArtist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkshipSong>? _workshipSongs;
  @override
  @JsonKey(name: "Workship_songs")
  List<WorkshipSong>? get workshipSongs {
    final value = _workshipSongs;
    if (value == null) return null;
    if (_workshipSongs is EqualUnmodifiableListView) return _workshipSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardModel(status: $status, banner: $banner, album: $album, trendingSong: $trendingSong, adsBanner: $adsBanner, artist: $artist, gener: $gener, playList: $playList, livePodcast: $livePodcast, popularSong: $popularSong, topArtist: $topArtist, workshipSongs: $workshipSongs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._banner, _banner) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality()
                .equals(other._trendingSong, _trendingSong) &&
            const DeepCollectionEquality()
                .equals(other._adsBanner, _adsBanner) &&
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality().equals(other._gener, _gener) &&
            const DeepCollectionEquality().equals(other._playList, _playList) &&
            const DeepCollectionEquality()
                .equals(other._livePodcast, _livePodcast) &&
            const DeepCollectionEquality()
                .equals(other._popularSong, _popularSong) &&
            const DeepCollectionEquality()
                .equals(other._topArtist, _topArtist) &&
            const DeepCollectionEquality()
                .equals(other._workshipSongs, _workshipSongs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_banner),
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_trendingSong),
      const DeepCollectionEquality().hash(_adsBanner),
      const DeepCollectionEquality().hash(_artist),
      const DeepCollectionEquality().hash(_gener),
      const DeepCollectionEquality().hash(_playList),
      const DeepCollectionEquality().hash(_livePodcast),
      const DeepCollectionEquality().hash(_popularSong),
      const DeepCollectionEquality().hash(_topArtist),
      const DeepCollectionEquality().hash(_workshipSongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardModelImplCopyWith<_$DashboardModelImpl> get copyWith =>
      __$$DashboardModelImplCopyWithImpl<_$DashboardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardModelImplToJson(
      this,
    );
  }
}

abstract class _DashboardModel implements DashboardModel {
  const factory _DashboardModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "Banner") final List<Banner>? banner,
      @JsonKey(name: "Album") final List<Album>? album,
      @JsonKey(name: "Trending_song") final List<TrendingSong>? trendingSong,
      @JsonKey(name: "Ads_banner") final List<AdsBanner>? adsBanner,
      @JsonKey(name: "Artist") final List<Artist>? artist,
      @JsonKey(name: "Gener") final List<Gener>? gener,
      @JsonKey(name: "PlayList") final List<PlayList>? playList,
      @JsonKey(name: "Live_podcast") final List<LivePodcast>? livePodcast,
      @JsonKey(name: "Popular_song") final List<PopularSong>? popularSong,
      @JsonKey(name: "Top_artist") final List<TopArtist>? topArtist,
      @JsonKey(name: "Workship_songs")
      final List<WorkshipSong>? workshipSongs}) = _$DashboardModelImpl;

  factory _DashboardModel.fromJson(Map<String, dynamic> json) =
      _$DashboardModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "Banner")
  List<Banner>? get banner;
  @override
  @JsonKey(name: "Album")
  List<Album>? get album;
  @override
  @JsonKey(name: "Trending_song")
  List<TrendingSong>? get trendingSong;
  @override
  @JsonKey(name: "Ads_banner")
  List<AdsBanner>? get adsBanner;
  @override
  @JsonKey(name: "Artist")
  List<Artist>? get artist;
  @override
  @JsonKey(name: "Gener")
  List<Gener>? get gener;
  @override
  @JsonKey(name: "PlayList")
  List<PlayList>? get playList;
  @override
  @JsonKey(name: "Live_podcast")
  List<LivePodcast>? get livePodcast;
  @override
  @JsonKey(name: "Popular_song")
  List<PopularSong>? get popularSong;
  @override
  @JsonKey(name: "Top_artist")
  List<TopArtist>? get topArtist;
  @override
  @JsonKey(name: "Workship_songs")
  List<WorkshipSong>? get workshipSongs;
  @override
  @JsonKey(ignore: true)
  _$$DashboardModelImplCopyWith<_$DashboardModelImpl> get copyWith =>
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

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  @JsonKey(name: "album_id")
  int? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: "ablum_title")
  String? get albumTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {@JsonKey(name: "album_id") int? albumId,
      @JsonKey(name: "ablum_title") String? albumTitle,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = freezed,
    Object? albumTitle = freezed,
    Object? type = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      albumTitle: freezed == albumTitle
          ? _value.albumTitle
          : albumTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "album_id") int? albumId,
      @JsonKey(name: "ablum_title") String? albumTitle,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = freezed,
    Object? albumTitle = freezed,
    Object? type = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$AlbumImpl(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      albumTitle: freezed == albumTitle
          ? _value.albumTitle
          : albumTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      {@JsonKey(name: "album_id") this.albumId,
      @JsonKey(name: "ablum_title") this.albumTitle,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "cover") this.cover});

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  @JsonKey(name: "album_id")
  final int? albumId;
  @override
  @JsonKey(name: "ablum_title")
  final String? albumTitle;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'Album(albumId: $albumId, albumTitle: $albumTitle, type: $type, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.albumTitle, albumTitle) ||
                other.albumTitle == albumTitle) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, albumId, albumTitle, type, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {@JsonKey(name: "album_id") final int? albumId,
      @JsonKey(name: "ablum_title") final String? albumTitle,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "cover") final String? cover}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  @JsonKey(name: "album_id")
  int? get albumId;
  @override
  @JsonKey(name: "ablum_title")
  String? get albumTitle;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayList _$PlayListFromJson(Map<String, dynamic> json) {
  return _PlayList.fromJson(json);
}

/// @nodoc
mixin _$PlayList {
  @JsonKey(name: "song_id")
  int? get songId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_title")
  String? get songTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "song_artist")
  String? get songArtist => throw _privateConstructorUsedError;
  @JsonKey(name: "album_id")
  String? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_id")
  int? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_type")
  String? get songType => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayListCopyWith<PlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListCopyWith<$Res> {
  factory $PlayListCopyWith(PlayList value, $Res Function(PlayList) then) =
      _$PlayListCopyWithImpl<$Res, PlayList>;
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "song_type") String? songType,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$PlayListCopyWithImpl<$Res, $Val extends PlayList>
    implements $PlayListCopyWith<$Res> {
  _$PlayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? songType = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      songType: freezed == songType
          ? _value.songType
          : songType // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayListImplCopyWith<$Res>
    implements $PlayListCopyWith<$Res> {
  factory _$$PlayListImplCopyWith(
          _$PlayListImpl value, $Res Function(_$PlayListImpl) then) =
      __$$PlayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "song_type") String? songType,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$PlayListImplCopyWithImpl<$Res>
    extends _$PlayListCopyWithImpl<$Res, _$PlayListImpl>
    implements _$$PlayListImplCopyWith<$Res> {
  __$$PlayListImplCopyWithImpl(
      _$PlayListImpl _value, $Res Function(_$PlayListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? songType = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$PlayListImpl(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      songType: freezed == songType
          ? _value.songType
          : songType // ignore: cast_nullable_to_non_nullable
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
class _$PlayListImpl implements _PlayList {
  const _$PlayListImpl(
      {@JsonKey(name: "song_id") this.songId,
      @JsonKey(name: "song_title") this.songTitle,
      @JsonKey(name: "song_artist") this.songArtist,
      @JsonKey(name: "album_id") this.albumId,
      @JsonKey(name: "artist_id") this.artistId,
      @JsonKey(name: "song_type") this.songType,
      @JsonKey(name: "cover") this.cover});

  factory _$PlayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayListImplFromJson(json);

  @override
  @JsonKey(name: "song_id")
  final int? songId;
  @override
  @JsonKey(name: "song_title")
  final String? songTitle;
  @override
  @JsonKey(name: "song_artist")
  final String? songArtist;
  @override
  @JsonKey(name: "album_id")
  final String? albumId;
  @override
  @JsonKey(name: "artist_id")
  final int? artistId;
  @override
  @JsonKey(name: "song_type")
  final String? songType;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'PlayList(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, albumId: $albumId, artistId: $artistId, songType: $songType, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle) &&
            (identical(other.songArtist, songArtist) ||
                other.songArtist == songArtist) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.songType, songType) ||
                other.songType == songType) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, songTitle, songArtist,
      albumId, artistId, songType, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListImplCopyWith<_$PlayListImpl> get copyWith =>
      __$$PlayListImplCopyWithImpl<_$PlayListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayListImplToJson(
      this,
    );
  }
}

abstract class _PlayList implements PlayList {
  const factory _PlayList(
      {@JsonKey(name: "song_id") final int? songId,
      @JsonKey(name: "song_title") final String? songTitle,
      @JsonKey(name: "song_artist") final String? songArtist,
      @JsonKey(name: "album_id") final String? albumId,
      @JsonKey(name: "artist_id") final int? artistId,
      @JsonKey(name: "song_type") final String? songType,
      @JsonKey(name: "cover") final String? cover}) = _$PlayListImpl;

  factory _PlayList.fromJson(Map<String, dynamic> json) =
      _$PlayListImpl.fromJson;

  @override
  @JsonKey(name: "song_id")
  int? get songId;
  @override
  @JsonKey(name: "song_title")
  String? get songTitle;
  @override
  @JsonKey(name: "song_artist")
  String? get songArtist;
  @override
  @JsonKey(name: "album_id")
  String? get albumId;
  @override
  @JsonKey(name: "artist_id")
  int? get artistId;
  @override
  @JsonKey(name: "song_type")
  String? get songType;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$PlayListImplCopyWith<_$PlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  @JsonKey(name: "rj_artist_id")
  int? get rjArtistId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_artist_name")
  String? get rjArtistName => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {@JsonKey(name: "rj_artist_id") int? rjArtistId,
      @JsonKey(name: "rj_artist_name") String? rjArtistName,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjArtistId = freezed,
    Object? rjArtistName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      rjArtistId: freezed == rjArtistId
          ? _value.rjArtistId
          : rjArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjArtistName: freezed == rjArtistName
          ? _value.rjArtistName
          : rjArtistName // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rj_artist_id") int? rjArtistId,
      @JsonKey(name: "rj_artist_name") String? rjArtistName,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjArtistId = freezed,
    Object? rjArtistName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$ArtistImpl(
      rjArtistId: freezed == rjArtistId
          ? _value.rjArtistId
          : rjArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjArtistName: freezed == rjArtistName
          ? _value.rjArtistName
          : rjArtistName // ignore: cast_nullable_to_non_nullable
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
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {@JsonKey(name: "rj_artist_id") this.rjArtistId,
      @JsonKey(name: "rj_artist_name") this.rjArtistName,
      @JsonKey(name: "cover") this.cover});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  @JsonKey(name: "rj_artist_id")
  final int? rjArtistId;
  @override
  @JsonKey(name: "rj_artist_name")
  final String? rjArtistName;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'Artist(rjArtistId: $rjArtistId, rjArtistName: $rjArtistName, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.rjArtistId, rjArtistId) ||
                other.rjArtistId == rjArtistId) &&
            (identical(other.rjArtistName, rjArtistName) ||
                other.rjArtistName == rjArtistName) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rjArtistId, rjArtistName, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {@JsonKey(name: "rj_artist_id") final int? rjArtistId,
      @JsonKey(name: "rj_artist_name") final String? rjArtistName,
      @JsonKey(name: "cover") final String? cover}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  @JsonKey(name: "rj_artist_id")
  int? get rjArtistId;
  @override
  @JsonKey(name: "rj_artist_name")
  String? get rjArtistName;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gener _$GenerFromJson(Map<String, dynamic> json) {
  return _Gener.fromJson(json);
}

/// @nodoc
mixin _$Gener {
  @JsonKey(name: "rj_geners_id")
  int? get rjGenersId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_geners_name")
  String? get rjGenersName => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerCopyWith<Gener> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerCopyWith<$Res> {
  factory $GenerCopyWith(Gener value, $Res Function(Gener) then) =
      _$GenerCopyWithImpl<$Res, Gener>;
  @useResult
  $Res call(
      {@JsonKey(name: "rj_geners_id") int? rjGenersId,
      @JsonKey(name: "rj_geners_name") String? rjGenersName,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$GenerCopyWithImpl<$Res, $Val extends Gener>
    implements $GenerCopyWith<$Res> {
  _$GenerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjGenersId = freezed,
    Object? rjGenersName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      rjGenersId: freezed == rjGenersId
          ? _value.rjGenersId
          : rjGenersId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjGenersName: freezed == rjGenersName
          ? _value.rjGenersName
          : rjGenersName // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerImplCopyWith<$Res> implements $GenerCopyWith<$Res> {
  factory _$$GenerImplCopyWith(
          _$GenerImpl value, $Res Function(_$GenerImpl) then) =
      __$$GenerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rj_geners_id") int? rjGenersId,
      @JsonKey(name: "rj_geners_name") String? rjGenersName,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$GenerImplCopyWithImpl<$Res>
    extends _$GenerCopyWithImpl<$Res, _$GenerImpl>
    implements _$$GenerImplCopyWith<$Res> {
  __$$GenerImplCopyWithImpl(
      _$GenerImpl _value, $Res Function(_$GenerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjGenersId = freezed,
    Object? rjGenersName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$GenerImpl(
      rjGenersId: freezed == rjGenersId
          ? _value.rjGenersId
          : rjGenersId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjGenersName: freezed == rjGenersName
          ? _value.rjGenersName
          : rjGenersName // ignore: cast_nullable_to_non_nullable
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
class _$GenerImpl implements _Gener {
  const _$GenerImpl(
      {@JsonKey(name: "rj_geners_id") this.rjGenersId,
      @JsonKey(name: "rj_geners_name") this.rjGenersName,
      @JsonKey(name: "cover") this.cover});

  factory _$GenerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerImplFromJson(json);

  @override
  @JsonKey(name: "rj_geners_id")
  final int? rjGenersId;
  @override
  @JsonKey(name: "rj_geners_name")
  final String? rjGenersName;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'Gener(rjGenersId: $rjGenersId, rjGenersName: $rjGenersName, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerImpl &&
            (identical(other.rjGenersId, rjGenersId) ||
                other.rjGenersId == rjGenersId) &&
            (identical(other.rjGenersName, rjGenersName) ||
                other.rjGenersName == rjGenersName) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rjGenersId, rjGenersName, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerImplCopyWith<_$GenerImpl> get copyWith =>
      __$$GenerImplCopyWithImpl<_$GenerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerImplToJson(
      this,
    );
  }
}

abstract class _Gener implements Gener {
  const factory _Gener(
      {@JsonKey(name: "rj_geners_id") final int? rjGenersId,
      @JsonKey(name: "rj_geners_name") final String? rjGenersName,
      @JsonKey(name: "cover") final String? cover}) = _$GenerImpl;

  factory _Gener.fromJson(Map<String, dynamic> json) = _$GenerImpl.fromJson;

  @override
  @JsonKey(name: "rj_geners_id")
  int? get rjGenersId;
  @override
  @JsonKey(name: "rj_geners_name")
  String? get rjGenersName;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$GenerImplCopyWith<_$GenerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LivePodcast _$LivePodcastFromJson(Map<String, dynamic> json) {
  return _LivePodcast.fromJson(json);
}

/// @nodoc
mixin _$LivePodcast {
  @JsonKey(name: "podcast_id")
  String? get podcastId => throw _privateConstructorUsedError;
  @JsonKey(name: "podcast_title")
  String? get podcastTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LivePodcastCopyWith<LivePodcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivePodcastCopyWith<$Res> {
  factory $LivePodcastCopyWith(
          LivePodcast value, $Res Function(LivePodcast) then) =
      _$LivePodcastCopyWithImpl<$Res, LivePodcast>;
  @useResult
  $Res call(
      {@JsonKey(name: "podcast_id") String? podcastId,
      @JsonKey(name: "podcast_title") String? podcastTitle,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$LivePodcastCopyWithImpl<$Res, $Val extends LivePodcast>
    implements $LivePodcastCopyWith<$Res> {
  _$LivePodcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? podcastTitle = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastTitle: freezed == podcastTitle
          ? _value.podcastTitle
          : podcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LivePodcastImplCopyWith<$Res>
    implements $LivePodcastCopyWith<$Res> {
  factory _$$LivePodcastImplCopyWith(
          _$LivePodcastImpl value, $Res Function(_$LivePodcastImpl) then) =
      __$$LivePodcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "podcast_id") String? podcastId,
      @JsonKey(name: "podcast_title") String? podcastTitle,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$LivePodcastImplCopyWithImpl<$Res>
    extends _$LivePodcastCopyWithImpl<$Res, _$LivePodcastImpl>
    implements _$$LivePodcastImplCopyWith<$Res> {
  __$$LivePodcastImplCopyWithImpl(
      _$LivePodcastImpl _value, $Res Function(_$LivePodcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? podcastTitle = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$LivePodcastImpl(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastTitle: freezed == podcastTitle
          ? _value.podcastTitle
          : podcastTitle // ignore: cast_nullable_to_non_nullable
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
class _$LivePodcastImpl implements _LivePodcast {
  const _$LivePodcastImpl(
      {@JsonKey(name: "podcast_id") this.podcastId,
      @JsonKey(name: "podcast_title") this.podcastTitle,
      @JsonKey(name: "cover") this.cover});

  factory _$LivePodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivePodcastImplFromJson(json);

  @override
  @JsonKey(name: "podcast_id")
  final String? podcastId;
  @override
  @JsonKey(name: "podcast_title")
  final String? podcastTitle;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'LivePodcast(podcastId: $podcastId, podcastTitle: $podcastTitle, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivePodcastImpl &&
            (identical(other.podcastId, podcastId) ||
                other.podcastId == podcastId) &&
            (identical(other.podcastTitle, podcastTitle) ||
                other.podcastTitle == podcastTitle) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, podcastId, podcastTitle, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LivePodcastImplCopyWith<_$LivePodcastImpl> get copyWith =>
      __$$LivePodcastImplCopyWithImpl<_$LivePodcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivePodcastImplToJson(
      this,
    );
  }
}

abstract class _LivePodcast implements LivePodcast {
  const factory _LivePodcast(
      {@JsonKey(name: "podcast_id") final String? podcastId,
      @JsonKey(name: "podcast_title") final String? podcastTitle,
      @JsonKey(name: "cover") final String? cover}) = _$LivePodcastImpl;

  factory _LivePodcast.fromJson(Map<String, dynamic> json) =
      _$LivePodcastImpl.fromJson;

  @override
  @JsonKey(name: "podcast_id")
  String? get podcastId;
  @override
  @JsonKey(name: "podcast_title")
  String? get podcastTitle;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$LivePodcastImplCopyWith<_$LivePodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkshipSong _$WorkshipSongFromJson(Map<String, dynamic> json) {
  return _WorkshipSong.fromJson(json);
}

/// @nodoc
mixin _$WorkshipSong {
  @JsonKey(name: "song_id")
  String? get songId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_title")
  String? get songTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "song_artist")
  String? get songArtist => throw _privateConstructorUsedError;
  @JsonKey(name: "album_id")
  String? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_id")
  String? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkshipSongCopyWith<WorkshipSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkshipSongCopyWith<$Res> {
  factory $WorkshipSongCopyWith(
          WorkshipSong value, $Res Function(WorkshipSong) then) =
      _$WorkshipSongCopyWithImpl<$Res, WorkshipSong>;
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") String? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") String? artistId,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$WorkshipSongCopyWithImpl<$Res, $Val extends WorkshipSong>
    implements $WorkshipSongCopyWith<$Res> {
  _$WorkshipSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkshipSongImplCopyWith<$Res>
    implements $WorkshipSongCopyWith<$Res> {
  factory _$$WorkshipSongImplCopyWith(
          _$WorkshipSongImpl value, $Res Function(_$WorkshipSongImpl) then) =
      __$$WorkshipSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") String? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") String? artistId,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$WorkshipSongImplCopyWithImpl<$Res>
    extends _$WorkshipSongCopyWithImpl<$Res, _$WorkshipSongImpl>
    implements _$$WorkshipSongImplCopyWith<$Res> {
  __$$WorkshipSongImplCopyWithImpl(
      _$WorkshipSongImpl _value, $Res Function(_$WorkshipSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$WorkshipSongImpl(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
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
class _$WorkshipSongImpl implements _WorkshipSong {
  const _$WorkshipSongImpl(
      {@JsonKey(name: "song_id") this.songId,
      @JsonKey(name: "song_title") this.songTitle,
      @JsonKey(name: "song_artist") this.songArtist,
      @JsonKey(name: "album_id") this.albumId,
      @JsonKey(name: "artist_id") this.artistId,
      @JsonKey(name: "cover") this.cover});

  factory _$WorkshipSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkshipSongImplFromJson(json);

  @override
  @JsonKey(name: "song_id")
  final String? songId;
  @override
  @JsonKey(name: "song_title")
  final String? songTitle;
  @override
  @JsonKey(name: "song_artist")
  final String? songArtist;
  @override
  @JsonKey(name: "album_id")
  final String? albumId;
  @override
  @JsonKey(name: "artist_id")
  final String? artistId;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'WorkshipSong(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, albumId: $albumId, artistId: $artistId, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkshipSongImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle) &&
            (identical(other.songArtist, songArtist) ||
                other.songArtist == songArtist) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, songId, songTitle, songArtist, albumId, artistId, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkshipSongImplCopyWith<_$WorkshipSongImpl> get copyWith =>
      __$$WorkshipSongImplCopyWithImpl<_$WorkshipSongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkshipSongImplToJson(
      this,
    );
  }
}

abstract class _WorkshipSong implements WorkshipSong {
  const factory _WorkshipSong(
      {@JsonKey(name: "song_id") final String? songId,
      @JsonKey(name: "song_title") final String? songTitle,
      @JsonKey(name: "song_artist") final String? songArtist,
      @JsonKey(name: "album_id") final String? albumId,
      @JsonKey(name: "artist_id") final String? artistId,
      @JsonKey(name: "cover") final String? cover}) = _$WorkshipSongImpl;

  factory _WorkshipSong.fromJson(Map<String, dynamic> json) =
      _$WorkshipSongImpl.fromJson;

  @override
  @JsonKey(name: "song_id")
  String? get songId;
  @override
  @JsonKey(name: "song_title")
  String? get songTitle;
  @override
  @JsonKey(name: "song_artist")
  String? get songArtist;
  @override
  @JsonKey(name: "album_id")
  String? get albumId;
  @override
  @JsonKey(name: "artist_id")
  String? get artistId;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$WorkshipSongImplCopyWith<_$WorkshipSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdsBanner _$AdsBannerFromJson(Map<String, dynamic> json) {
  return _AdsBanner.fromJson(json);
}

/// @nodoc
mixin _$AdsBanner {
  @JsonKey(name: "banner_id")
  int? get bannerId => throw _privateConstructorUsedError;
  @JsonKey(name: "banner_title")
  String? get bannerTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "banner")
  String? get banner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdsBannerCopyWith<AdsBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsBannerCopyWith<$Res> {
  factory $AdsBannerCopyWith(AdsBanner value, $Res Function(AdsBanner) then) =
      _$AdsBannerCopyWithImpl<$Res, AdsBanner>;
  @useResult
  $Res call(
      {@JsonKey(name: "banner_id") int? bannerId,
      @JsonKey(name: "banner_title") String? bannerTitle,
      @JsonKey(name: "banner") String? banner});
}

/// @nodoc
class _$AdsBannerCopyWithImpl<$Res, $Val extends AdsBanner>
    implements $AdsBannerCopyWith<$Res> {
  _$AdsBannerCopyWithImpl(this._value, this._then);

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
abstract class _$$AdsBannerImplCopyWith<$Res>
    implements $AdsBannerCopyWith<$Res> {
  factory _$$AdsBannerImplCopyWith(
          _$AdsBannerImpl value, $Res Function(_$AdsBannerImpl) then) =
      __$$AdsBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "banner_id") int? bannerId,
      @JsonKey(name: "banner_title") String? bannerTitle,
      @JsonKey(name: "banner") String? banner});
}

/// @nodoc
class __$$AdsBannerImplCopyWithImpl<$Res>
    extends _$AdsBannerCopyWithImpl<$Res, _$AdsBannerImpl>
    implements _$$AdsBannerImplCopyWith<$Res> {
  __$$AdsBannerImplCopyWithImpl(
      _$AdsBannerImpl _value, $Res Function(_$AdsBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerId = freezed,
    Object? bannerTitle = freezed,
    Object? banner = freezed,
  }) {
    return _then(_$AdsBannerImpl(
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
class _$AdsBannerImpl implements _AdsBanner {
  const _$AdsBannerImpl(
      {@JsonKey(name: "banner_id") this.bannerId,
      @JsonKey(name: "banner_title") this.bannerTitle,
      @JsonKey(name: "banner") this.banner});

  factory _$AdsBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdsBannerImplFromJson(json);

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
    return 'AdsBanner(bannerId: $bannerId, bannerTitle: $bannerTitle, banner: $banner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsBannerImpl &&
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
  _$$AdsBannerImplCopyWith<_$AdsBannerImpl> get copyWith =>
      __$$AdsBannerImplCopyWithImpl<_$AdsBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdsBannerImplToJson(
      this,
    );
  }
}

abstract class _AdsBanner implements AdsBanner {
  const factory _AdsBanner(
      {@JsonKey(name: "banner_id") final int? bannerId,
      @JsonKey(name: "banner_title") final String? bannerTitle,
      @JsonKey(name: "banner") final String? banner}) = _$AdsBannerImpl;

  factory _AdsBanner.fromJson(Map<String, dynamic> json) =
      _$AdsBannerImpl.fromJson;

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
  _$$AdsBannerImplCopyWith<_$AdsBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingSong _$TrendingSongFromJson(Map<String, dynamic> json) {
  return _TrendingSong.fromJson(json);
}

/// @nodoc
mixin _$TrendingSong {
  @JsonKey(name: "song_id")
  int? get songId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_title")
  String? get songTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "song_artist")
  String? get songArtist => throw _privateConstructorUsedError;
  @JsonKey(name: "album_id")
  String? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_id")
  int? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_type")
  String? get songType => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingSongCopyWith<TrendingSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingSongCopyWith<$Res> {
  factory $TrendingSongCopyWith(
          TrendingSong value, $Res Function(TrendingSong) then) =
      _$TrendingSongCopyWithImpl<$Res, TrendingSong>;
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "song_type") String? songType,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$TrendingSongCopyWithImpl<$Res, $Val extends TrendingSong>
    implements $TrendingSongCopyWith<$Res> {
  _$TrendingSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? songType = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      songType: freezed == songType
          ? _value.songType
          : songType // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingSongImplCopyWith<$Res>
    implements $TrendingSongCopyWith<$Res> {
  factory _$$TrendingSongImplCopyWith(
          _$TrendingSongImpl value, $Res Function(_$TrendingSongImpl) then) =
      __$$TrendingSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "song_type") String? songType,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$TrendingSongImplCopyWithImpl<$Res>
    extends _$TrendingSongCopyWithImpl<$Res, _$TrendingSongImpl>
    implements _$$TrendingSongImplCopyWith<$Res> {
  __$$TrendingSongImplCopyWithImpl(
      _$TrendingSongImpl _value, $Res Function(_$TrendingSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? songType = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$TrendingSongImpl(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      songType: freezed == songType
          ? _value.songType
          : songType // ignore: cast_nullable_to_non_nullable
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
class _$TrendingSongImpl implements _TrendingSong {
  const _$TrendingSongImpl(
      {@JsonKey(name: "song_id") this.songId,
      @JsonKey(name: "song_title") this.songTitle,
      @JsonKey(name: "song_artist") this.songArtist,
      @JsonKey(name: "album_id") this.albumId,
      @JsonKey(name: "artist_id") this.artistId,
      @JsonKey(name: "song_type") this.songType,
      @JsonKey(name: "cover") this.cover});

  factory _$TrendingSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingSongImplFromJson(json);

  @override
  @JsonKey(name: "song_id")
  final int? songId;
  @override
  @JsonKey(name: "song_title")
  final String? songTitle;
  @override
  @JsonKey(name: "song_artist")
  final String? songArtist;
  @override
  @JsonKey(name: "album_id")
  final String? albumId;
  @override
  @JsonKey(name: "artist_id")
  final int? artistId;
  @override
  @JsonKey(name: "song_type")
  final String? songType;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'TrendingSong(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, albumId: $albumId, artistId: $artistId, songType: $songType, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingSongImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle) &&
            (identical(other.songArtist, songArtist) ||
                other.songArtist == songArtist) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.songType, songType) ||
                other.songType == songType) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, songTitle, songArtist,
      albumId, artistId, songType, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingSongImplCopyWith<_$TrendingSongImpl> get copyWith =>
      __$$TrendingSongImplCopyWithImpl<_$TrendingSongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingSongImplToJson(
      this,
    );
  }
}

abstract class _TrendingSong implements TrendingSong {
  const factory _TrendingSong(
      {@JsonKey(name: "song_id") final int? songId,
      @JsonKey(name: "song_title") final String? songTitle,
      @JsonKey(name: "song_artist") final String? songArtist,
      @JsonKey(name: "album_id") final String? albumId,
      @JsonKey(name: "artist_id") final int? artistId,
      @JsonKey(name: "song_type") final String? songType,
      @JsonKey(name: "cover") final String? cover}) = _$TrendingSongImpl;

  factory _TrendingSong.fromJson(Map<String, dynamic> json) =
      _$TrendingSongImpl.fromJson;

  @override
  @JsonKey(name: "song_id")
  int? get songId;
  @override
  @JsonKey(name: "song_title")
  String? get songTitle;
  @override
  @JsonKey(name: "song_artist")
  String? get songArtist;
  @override
  @JsonKey(name: "album_id")
  String? get albumId;
  @override
  @JsonKey(name: "artist_id")
  int? get artistId;
  @override
  @JsonKey(name: "song_type")
  String? get songType;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$TrendingSongImplCopyWith<_$TrendingSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PopularSong _$PopularSongFromJson(Map<String, dynamic> json) {
  return _PopularSong.fromJson(json);
}

/// @nodoc
mixin _$PopularSong {
  @JsonKey(name: "song_id")
  int? get songId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_title")
  String? get songTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "song_artist")
  String? get songArtist => throw _privateConstructorUsedError;
  @JsonKey(name: "album_id")
  String? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_id")
  int? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_type")
  String? get songType => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularSongCopyWith<PopularSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularSongCopyWith<$Res> {
  factory $PopularSongCopyWith(
          PopularSong value, $Res Function(PopularSong) then) =
      _$PopularSongCopyWithImpl<$Res, PopularSong>;
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "song_type") String? songType,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$PopularSongCopyWithImpl<$Res, $Val extends PopularSong>
    implements $PopularSongCopyWith<$Res> {
  _$PopularSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? songType = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      songType: freezed == songType
          ? _value.songType
          : songType // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularSongImplCopyWith<$Res>
    implements $PopularSongCopyWith<$Res> {
  factory _$$PopularSongImplCopyWith(
          _$PopularSongImpl value, $Res Function(_$PopularSongImpl) then) =
      __$$PopularSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "song_type") String? songType,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$PopularSongImplCopyWithImpl<$Res>
    extends _$PopularSongCopyWithImpl<$Res, _$PopularSongImpl>
    implements _$$PopularSongImplCopyWith<$Res> {
  __$$PopularSongImplCopyWithImpl(
      _$PopularSongImpl _value, $Res Function(_$PopularSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? songType = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$PopularSongImpl(
      songId: freezed == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int?,
      songTitle: freezed == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      songArtist: freezed == songArtist
          ? _value.songArtist
          : songArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      songType: freezed == songType
          ? _value.songType
          : songType // ignore: cast_nullable_to_non_nullable
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
class _$PopularSongImpl implements _PopularSong {
  const _$PopularSongImpl(
      {@JsonKey(name: "song_id") this.songId,
      @JsonKey(name: "song_title") this.songTitle,
      @JsonKey(name: "song_artist") this.songArtist,
      @JsonKey(name: "album_id") this.albumId,
      @JsonKey(name: "artist_id") this.artistId,
      @JsonKey(name: "song_type") this.songType,
      @JsonKey(name: "cover") this.cover});

  factory _$PopularSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularSongImplFromJson(json);

  @override
  @JsonKey(name: "song_id")
  final int? songId;
  @override
  @JsonKey(name: "song_title")
  final String? songTitle;
  @override
  @JsonKey(name: "song_artist")
  final String? songArtist;
  @override
  @JsonKey(name: "album_id")
  final String? albumId;
  @override
  @JsonKey(name: "artist_id")
  final int? artistId;
  @override
  @JsonKey(name: "song_type")
  final String? songType;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'PopularSong(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, albumId: $albumId, artistId: $artistId, songType: $songType, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularSongImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle) &&
            (identical(other.songArtist, songArtist) ||
                other.songArtist == songArtist) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.songType, songType) ||
                other.songType == songType) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, songTitle, songArtist,
      albumId, artistId, songType, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularSongImplCopyWith<_$PopularSongImpl> get copyWith =>
      __$$PopularSongImplCopyWithImpl<_$PopularSongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularSongImplToJson(
      this,
    );
  }
}

abstract class _PopularSong implements PopularSong {
  const factory _PopularSong(
      {@JsonKey(name: "song_id") final int? songId,
      @JsonKey(name: "song_title") final String? songTitle,
      @JsonKey(name: "song_artist") final String? songArtist,
      @JsonKey(name: "album_id") final String? albumId,
      @JsonKey(name: "artist_id") final int? artistId,
      @JsonKey(name: "song_type") final String? songType,
      @JsonKey(name: "cover") final String? cover}) = _$PopularSongImpl;

  factory _PopularSong.fromJson(Map<String, dynamic> json) =
      _$PopularSongImpl.fromJson;

  @override
  @JsonKey(name: "song_id")
  int? get songId;
  @override
  @JsonKey(name: "song_title")
  String? get songTitle;
  @override
  @JsonKey(name: "song_artist")
  String? get songArtist;
  @override
  @JsonKey(name: "album_id")
  String? get albumId;
  @override
  @JsonKey(name: "artist_id")
  int? get artistId;
  @override
  @JsonKey(name: "song_type")
  String? get songType;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$PopularSongImplCopyWith<_$PopularSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopArtist _$TopArtistFromJson(Map<String, dynamic> json) {
  return _TopArtist.fromJson(json);
}

/// @nodoc
mixin _$TopArtist {
  @JsonKey(name: "rj_artist_id")
  int? get rjArtistId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_artist_name")
  String? get rjArtistName => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopArtistCopyWith<TopArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopArtistCopyWith<$Res> {
  factory $TopArtistCopyWith(TopArtist value, $Res Function(TopArtist) then) =
      _$TopArtistCopyWithImpl<$Res, TopArtist>;
  @useResult
  $Res call(
      {@JsonKey(name: "rj_artist_id") int? rjArtistId,
      @JsonKey(name: "rj_artist_name") String? rjArtistName,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$TopArtistCopyWithImpl<$Res, $Val extends TopArtist>
    implements $TopArtistCopyWith<$Res> {
  _$TopArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjArtistId = freezed,
    Object? rjArtistName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      rjArtistId: freezed == rjArtistId
          ? _value.rjArtistId
          : rjArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjArtistName: freezed == rjArtistName
          ? _value.rjArtistName
          : rjArtistName // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopArtistImplCopyWith<$Res>
    implements $TopArtistCopyWith<$Res> {
  factory _$$TopArtistImplCopyWith(
          _$TopArtistImpl value, $Res Function(_$TopArtistImpl) then) =
      __$$TopArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rj_artist_id") int? rjArtistId,
      @JsonKey(name: "rj_artist_name") String? rjArtistName,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$TopArtistImplCopyWithImpl<$Res>
    extends _$TopArtistCopyWithImpl<$Res, _$TopArtistImpl>
    implements _$$TopArtistImplCopyWith<$Res> {
  __$$TopArtistImplCopyWithImpl(
      _$TopArtistImpl _value, $Res Function(_$TopArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjArtistId = freezed,
    Object? rjArtistName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$TopArtistImpl(
      rjArtistId: freezed == rjArtistId
          ? _value.rjArtistId
          : rjArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjArtistName: freezed == rjArtistName
          ? _value.rjArtistName
          : rjArtistName // ignore: cast_nullable_to_non_nullable
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
class _$TopArtistImpl implements _TopArtist {
  const _$TopArtistImpl(
      {@JsonKey(name: "rj_artist_id") this.rjArtistId,
      @JsonKey(name: "rj_artist_name") this.rjArtistName,
      @JsonKey(name: "cover") this.cover});

  factory _$TopArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopArtistImplFromJson(json);

  @override
  @JsonKey(name: "rj_artist_id")
  final int? rjArtistId;
  @override
  @JsonKey(name: "rj_artist_name")
  final String? rjArtistName;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'TopArtist(rjArtistId: $rjArtistId, rjArtistName: $rjArtistName, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopArtistImpl &&
            (identical(other.rjArtistId, rjArtistId) ||
                other.rjArtistId == rjArtistId) &&
            (identical(other.rjArtistName, rjArtistName) ||
                other.rjArtistName == rjArtistName) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rjArtistId, rjArtistName, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopArtistImplCopyWith<_$TopArtistImpl> get copyWith =>
      __$$TopArtistImplCopyWithImpl<_$TopArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopArtistImplToJson(
      this,
    );
  }
}

abstract class _TopArtist implements TopArtist {
  const factory _TopArtist(
      {@JsonKey(name: "rj_artist_id") final int? rjArtistId,
      @JsonKey(name: "rj_artist_name") final String? rjArtistName,
      @JsonKey(name: "cover") final String? cover}) = _$TopArtistImpl;

  factory _TopArtist.fromJson(Map<String, dynamic> json) =
      _$TopArtistImpl.fromJson;

  @override
  @JsonKey(name: "rj_artist_id")
  int? get rjArtistId;
  @override
  @JsonKey(name: "rj_artist_name")
  String? get rjArtistName;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$TopArtistImplCopyWith<_$TopArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
