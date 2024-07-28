// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PodcastLibraryModel _$PodcastLibraryModelFromJson(Map<String, dynamic> json) {
  return _PodcastLibraryModel.fromJson(json);
}

/// @nodoc
mixin _$PodcastLibraryModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'RecentPodcast')
  List<RecentPodcast>? get recentPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'DownlaodList')
  List<DownlaodList>? get downlaodList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastLibraryModelCopyWith<PodcastLibraryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastLibraryModelCopyWith<$Res> {
  factory $PodcastLibraryModelCopyWith(
          PodcastLibraryModel value, $Res Function(PodcastLibraryModel) then) =
      _$PodcastLibraryModelCopyWithImpl<$Res, PodcastLibraryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'RecentPodcast') List<RecentPodcast>? recentPodcast,
      @JsonKey(name: 'DownlaodList') List<DownlaodList>? downlaodList});
}

/// @nodoc
class _$PodcastLibraryModelCopyWithImpl<$Res, $Val extends PodcastLibraryModel>
    implements $PodcastLibraryModelCopyWith<$Res> {
  _$PodcastLibraryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? recentPodcast = freezed,
    Object? downlaodList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      recentPodcast: freezed == recentPodcast
          ? _value.recentPodcast
          : recentPodcast // ignore: cast_nullable_to_non_nullable
              as List<RecentPodcast>?,
      downlaodList: freezed == downlaodList
          ? _value.downlaodList
          : downlaodList // ignore: cast_nullable_to_non_nullable
              as List<DownlaodList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastLibraryModelImplCopyWith<$Res>
    implements $PodcastLibraryModelCopyWith<$Res> {
  factory _$$PodcastLibraryModelImplCopyWith(_$PodcastLibraryModelImpl value,
          $Res Function(_$PodcastLibraryModelImpl) then) =
      __$$PodcastLibraryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'RecentPodcast') List<RecentPodcast>? recentPodcast,
      @JsonKey(name: 'DownlaodList') List<DownlaodList>? downlaodList});
}

/// @nodoc
class __$$PodcastLibraryModelImplCopyWithImpl<$Res>
    extends _$PodcastLibraryModelCopyWithImpl<$Res, _$PodcastLibraryModelImpl>
    implements _$$PodcastLibraryModelImplCopyWith<$Res> {
  __$$PodcastLibraryModelImplCopyWithImpl(_$PodcastLibraryModelImpl _value,
      $Res Function(_$PodcastLibraryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? recentPodcast = freezed,
    Object? downlaodList = freezed,
  }) {
    return _then(_$PodcastLibraryModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      recentPodcast: freezed == recentPodcast
          ? _value._recentPodcast
          : recentPodcast // ignore: cast_nullable_to_non_nullable
              as List<RecentPodcast>?,
      downlaodList: freezed == downlaodList
          ? _value._downlaodList
          : downlaodList // ignore: cast_nullable_to_non_nullable
              as List<DownlaodList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastLibraryModelImpl implements _PodcastLibraryModel {
  const _$PodcastLibraryModelImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'RecentPodcast')
      final List<RecentPodcast>? recentPodcast = const [],
      @JsonKey(name: 'DownlaodList')
      final List<DownlaodList>? downlaodList = const []})
      : _recentPodcast = recentPodcast,
        _downlaodList = downlaodList;

  factory _$PodcastLibraryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastLibraryModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  final List<RecentPodcast>? _recentPodcast;
  @override
  @JsonKey(name: 'RecentPodcast')
  List<RecentPodcast>? get recentPodcast {
    final value = _recentPodcast;
    if (value == null) return null;
    if (_recentPodcast is EqualUnmodifiableListView) return _recentPodcast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DownlaodList>? _downlaodList;
  @override
  @JsonKey(name: 'DownlaodList')
  List<DownlaodList>? get downlaodList {
    final value = _downlaodList;
    if (value == null) return null;
    if (_downlaodList is EqualUnmodifiableListView) return _downlaodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PodcastLibraryModel(status: $status, recentPodcast: $recentPodcast, downlaodList: $downlaodList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastLibraryModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._recentPodcast, _recentPodcast) &&
            const DeepCollectionEquality()
                .equals(other._downlaodList, _downlaodList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_recentPodcast),
      const DeepCollectionEquality().hash(_downlaodList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastLibraryModelImplCopyWith<_$PodcastLibraryModelImpl> get copyWith =>
      __$$PodcastLibraryModelImplCopyWithImpl<_$PodcastLibraryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastLibraryModelImplToJson(
      this,
    );
  }
}

abstract class _PodcastLibraryModel implements PodcastLibraryModel {
  const factory _PodcastLibraryModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'RecentPodcast') final List<RecentPodcast>? recentPodcast,
      @JsonKey(name: 'DownlaodList')
      final List<DownlaodList>? downlaodList}) = _$PodcastLibraryModelImpl;

  factory _PodcastLibraryModel.fromJson(Map<String, dynamic> json) =
      _$PodcastLibraryModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'RecentPodcast')
  List<RecentPodcast>? get recentPodcast;
  @override
  @JsonKey(name: 'DownlaodList')
  List<DownlaodList>? get downlaodList;
  @override
  @JsonKey(ignore: true)
  _$$PodcastLibraryModelImplCopyWith<_$PodcastLibraryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentPodcast _$RecentPodcastFromJson(Map<String, dynamic> json) {
  return _RecentPodcast.fromJson(json);
}

/// @nodoc
mixin _$RecentPodcast {
  @JsonKey(name: 'podcast_id')
  int? get podcastId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rj_podcast_title')
  String? get rjPodcastTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcast_cover')
  String? get podcastCover => throw _privateConstructorUsedError;
  @JsonKey(name: 'play_date')
  String? get playDate => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'podcast_id') int? podcastId,
      @JsonKey(name: 'rj_podcast_title') String? rjPodcastTitle,
      @JsonKey(name: 'podcast_cover') String? podcastCover,
      @JsonKey(name: 'play_date') String? playDate});
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
    Object? rjPodcastTitle = freezed,
    Object? podcastCover = freezed,
    Object? playDate = freezed,
  }) {
    return _then(_value.copyWith(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjPodcastTitle: freezed == rjPodcastTitle
          ? _value.rjPodcastTitle
          : rjPodcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastCover: freezed == podcastCover
          ? _value.podcastCover
          : podcastCover // ignore: cast_nullable_to_non_nullable
              as String?,
      playDate: freezed == playDate
          ? _value.playDate
          : playDate // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'podcast_id') int? podcastId,
      @JsonKey(name: 'rj_podcast_title') String? rjPodcastTitle,
      @JsonKey(name: 'podcast_cover') String? podcastCover,
      @JsonKey(name: 'play_date') String? playDate});
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
    Object? rjPodcastTitle = freezed,
    Object? podcastCover = freezed,
    Object? playDate = freezed,
  }) {
    return _then(_$RecentPodcastImpl(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjPodcastTitle: freezed == rjPodcastTitle
          ? _value.rjPodcastTitle
          : rjPodcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastCover: freezed == podcastCover
          ? _value.podcastCover
          : podcastCover // ignore: cast_nullable_to_non_nullable
              as String?,
      playDate: freezed == playDate
          ? _value.playDate
          : playDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentPodcastImpl implements _RecentPodcast {
  const _$RecentPodcastImpl(
      {@JsonKey(name: 'podcast_id') this.podcastId = 0,
      @JsonKey(name: 'rj_podcast_title') this.rjPodcastTitle = '',
      @JsonKey(name: 'podcast_cover') this.podcastCover = '',
      @JsonKey(name: 'play_date') this.playDate = ''});

  factory _$RecentPodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentPodcastImplFromJson(json);

  @override
  @JsonKey(name: 'podcast_id')
  final int? podcastId;
  @override
  @JsonKey(name: 'rj_podcast_title')
  final String? rjPodcastTitle;
  @override
  @JsonKey(name: 'podcast_cover')
  final String? podcastCover;
  @override
  @JsonKey(name: 'play_date')
  final String? playDate;

  @override
  String toString() {
    return 'RecentPodcast(podcastId: $podcastId, rjPodcastTitle: $rjPodcastTitle, podcastCover: $podcastCover, playDate: $playDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentPodcastImpl &&
            (identical(other.podcastId, podcastId) ||
                other.podcastId == podcastId) &&
            (identical(other.rjPodcastTitle, rjPodcastTitle) ||
                other.rjPodcastTitle == rjPodcastTitle) &&
            (identical(other.podcastCover, podcastCover) ||
                other.podcastCover == podcastCover) &&
            (identical(other.playDate, playDate) ||
                other.playDate == playDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, podcastId, rjPodcastTitle, podcastCover, playDate);

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
          {@JsonKey(name: 'podcast_id') final int? podcastId,
          @JsonKey(name: 'rj_podcast_title') final String? rjPodcastTitle,
          @JsonKey(name: 'podcast_cover') final String? podcastCover,
          @JsonKey(name: 'play_date') final String? playDate}) =
      _$RecentPodcastImpl;

  factory _RecentPodcast.fromJson(Map<String, dynamic> json) =
      _$RecentPodcastImpl.fromJson;

  @override
  @JsonKey(name: 'podcast_id')
  int? get podcastId;
  @override
  @JsonKey(name: 'rj_podcast_title')
  String? get rjPodcastTitle;
  @override
  @JsonKey(name: 'podcast_cover')
  String? get podcastCover;
  @override
  @JsonKey(name: 'play_date')
  String? get playDate;
  @override
  @JsonKey(ignore: true)
  _$$RecentPodcastImplCopyWith<_$RecentPodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DownlaodList _$DownlaodListFromJson(Map<String, dynamic> json) {
  return _DownlaodList.fromJson(json);
}

/// @nodoc
mixin _$DownlaodList {
  @JsonKey(name: 'podcast_id')
  int? get podcastId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rj_podcast_title')
  String? get rjPodcastTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcast_cover')
  String? get podcastCover => throw _privateConstructorUsedError;
  @JsonKey(name: 'play_date')
  String? get playDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownlaodListCopyWith<DownlaodList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownlaodListCopyWith<$Res> {
  factory $DownlaodListCopyWith(
          DownlaodList value, $Res Function(DownlaodList) then) =
      _$DownlaodListCopyWithImpl<$Res, DownlaodList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'podcast_id') int? podcastId,
      @JsonKey(name: 'rj_podcast_title') String? rjPodcastTitle,
      @JsonKey(name: 'podcast_cover') String? podcastCover,
      @JsonKey(name: 'play_date') String? playDate});
}

/// @nodoc
class _$DownlaodListCopyWithImpl<$Res, $Val extends DownlaodList>
    implements $DownlaodListCopyWith<$Res> {
  _$DownlaodListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? rjPodcastTitle = freezed,
    Object? podcastCover = freezed,
    Object? playDate = freezed,
  }) {
    return _then(_value.copyWith(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjPodcastTitle: freezed == rjPodcastTitle
          ? _value.rjPodcastTitle
          : rjPodcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastCover: freezed == podcastCover
          ? _value.podcastCover
          : podcastCover // ignore: cast_nullable_to_non_nullable
              as String?,
      playDate: freezed == playDate
          ? _value.playDate
          : playDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownlaodListImplCopyWith<$Res>
    implements $DownlaodListCopyWith<$Res> {
  factory _$$DownlaodListImplCopyWith(
          _$DownlaodListImpl value, $Res Function(_$DownlaodListImpl) then) =
      __$$DownlaodListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'podcast_id') int? podcastId,
      @JsonKey(name: 'rj_podcast_title') String? rjPodcastTitle,
      @JsonKey(name: 'podcast_cover') String? podcastCover,
      @JsonKey(name: 'play_date') String? playDate});
}

/// @nodoc
class __$$DownlaodListImplCopyWithImpl<$Res>
    extends _$DownlaodListCopyWithImpl<$Res, _$DownlaodListImpl>
    implements _$$DownlaodListImplCopyWith<$Res> {
  __$$DownlaodListImplCopyWithImpl(
      _$DownlaodListImpl _value, $Res Function(_$DownlaodListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastId = freezed,
    Object? rjPodcastTitle = freezed,
    Object? podcastCover = freezed,
    Object? playDate = freezed,
  }) {
    return _then(_$DownlaodListImpl(
      podcastId: freezed == podcastId
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjPodcastTitle: freezed == rjPodcastTitle
          ? _value.rjPodcastTitle
          : rjPodcastTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      podcastCover: freezed == podcastCover
          ? _value.podcastCover
          : podcastCover // ignore: cast_nullable_to_non_nullable
              as String?,
      playDate: freezed == playDate
          ? _value.playDate
          : playDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownlaodListImpl implements _DownlaodList {
  const _$DownlaodListImpl(
      {@JsonKey(name: 'podcast_id') this.podcastId = 0,
      @JsonKey(name: 'rj_podcast_title') this.rjPodcastTitle = '',
      @JsonKey(name: 'podcast_cover') this.podcastCover = '',
      @JsonKey(name: 'play_date') this.playDate = ''});

  factory _$DownlaodListImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownlaodListImplFromJson(json);

  @override
  @JsonKey(name: 'podcast_id')
  final int? podcastId;
  @override
  @JsonKey(name: 'rj_podcast_title')
  final String? rjPodcastTitle;
  @override
  @JsonKey(name: 'podcast_cover')
  final String? podcastCover;
  @override
  @JsonKey(name: 'play_date')
  final String? playDate;

  @override
  String toString() {
    return 'DownlaodList(podcastId: $podcastId, rjPodcastTitle: $rjPodcastTitle, podcastCover: $podcastCover, playDate: $playDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownlaodListImpl &&
            (identical(other.podcastId, podcastId) ||
                other.podcastId == podcastId) &&
            (identical(other.rjPodcastTitle, rjPodcastTitle) ||
                other.rjPodcastTitle == rjPodcastTitle) &&
            (identical(other.podcastCover, podcastCover) ||
                other.podcastCover == podcastCover) &&
            (identical(other.playDate, playDate) ||
                other.playDate == playDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, podcastId, rjPodcastTitle, podcastCover, playDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownlaodListImplCopyWith<_$DownlaodListImpl> get copyWith =>
      __$$DownlaodListImplCopyWithImpl<_$DownlaodListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownlaodListImplToJson(
      this,
    );
  }
}

abstract class _DownlaodList implements DownlaodList {
  const factory _DownlaodList(
      {@JsonKey(name: 'podcast_id') final int? podcastId,
      @JsonKey(name: 'rj_podcast_title') final String? rjPodcastTitle,
      @JsonKey(name: 'podcast_cover') final String? podcastCover,
      @JsonKey(name: 'play_date') final String? playDate}) = _$DownlaodListImpl;

  factory _DownlaodList.fromJson(Map<String, dynamic> json) =
      _$DownlaodListImpl.fromJson;

  @override
  @JsonKey(name: 'podcast_id')
  int? get podcastId;
  @override
  @JsonKey(name: 'rj_podcast_title')
  String? get rjPodcastTitle;
  @override
  @JsonKey(name: 'podcast_cover')
  String? get podcastCover;
  @override
  @JsonKey(name: 'play_date')
  String? get playDate;
  @override
  @JsonKey(ignore: true)
  _$$DownlaodListImplCopyWith<_$DownlaodListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
