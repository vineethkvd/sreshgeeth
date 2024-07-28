// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MusicLibraryModel _$MusicLibraryModelFromJson(Map<String, dynamic> json) {
  return _MusicLibraryModel.fromJson(json);
}

/// @nodoc
mixin _$MusicLibraryModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Artist_List')
  List<ArtistList>? get artistList => throw _privateConstructorUsedError;
  @JsonKey(name: 'SongList')
  List<SongList>? get songList => throw _privateConstructorUsedError;
  @JsonKey(name: 'PlayList')
  List<PlayList>? get playList => throw _privateConstructorUsedError;
  @JsonKey(name: 'DownlaodList')
  List<DownloadList>? get downloadList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicLibraryModelCopyWith<MusicLibraryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicLibraryModelCopyWith<$Res> {
  factory $MusicLibraryModelCopyWith(
          MusicLibraryModel value, $Res Function(MusicLibraryModel) then) =
      _$MusicLibraryModelCopyWithImpl<$Res, MusicLibraryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'Artist_List') List<ArtistList>? artistList,
      @JsonKey(name: 'SongList') List<SongList>? songList,
      @JsonKey(name: 'PlayList') List<PlayList>? playList,
      @JsonKey(name: 'DownlaodList') List<DownloadList>? downloadList});
}

/// @nodoc
class _$MusicLibraryModelCopyWithImpl<$Res, $Val extends MusicLibraryModel>
    implements $MusicLibraryModelCopyWith<$Res> {
  _$MusicLibraryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? artistList = freezed,
    Object? songList = freezed,
    Object? playList = freezed,
    Object? downloadList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      artistList: freezed == artistList
          ? _value.artistList
          : artistList // ignore: cast_nullable_to_non_nullable
              as List<ArtistList>?,
      songList: freezed == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<SongList>?,
      playList: freezed == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<PlayList>?,
      downloadList: freezed == downloadList
          ? _value.downloadList
          : downloadList // ignore: cast_nullable_to_non_nullable
              as List<DownloadList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicLibraryModelImplCopyWith<$Res>
    implements $MusicLibraryModelCopyWith<$Res> {
  factory _$$MusicLibraryModelImplCopyWith(_$MusicLibraryModelImpl value,
          $Res Function(_$MusicLibraryModelImpl) then) =
      __$$MusicLibraryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'Artist_List') List<ArtistList>? artistList,
      @JsonKey(name: 'SongList') List<SongList>? songList,
      @JsonKey(name: 'PlayList') List<PlayList>? playList,
      @JsonKey(name: 'DownlaodList') List<DownloadList>? downloadList});
}

/// @nodoc
class __$$MusicLibraryModelImplCopyWithImpl<$Res>
    extends _$MusicLibraryModelCopyWithImpl<$Res, _$MusicLibraryModelImpl>
    implements _$$MusicLibraryModelImplCopyWith<$Res> {
  __$$MusicLibraryModelImplCopyWithImpl(_$MusicLibraryModelImpl _value,
      $Res Function(_$MusicLibraryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? artistList = freezed,
    Object? songList = freezed,
    Object? playList = freezed,
    Object? downloadList = freezed,
  }) {
    return _then(_$MusicLibraryModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      artistList: freezed == artistList
          ? _value._artistList
          : artistList // ignore: cast_nullable_to_non_nullable
              as List<ArtistList>?,
      songList: freezed == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<SongList>?,
      playList: freezed == playList
          ? _value._playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<PlayList>?,
      downloadList: freezed == downloadList
          ? _value._downloadList
          : downloadList // ignore: cast_nullable_to_non_nullable
              as List<DownloadList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MusicLibraryModelImpl implements _MusicLibraryModel {
  const _$MusicLibraryModelImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'Artist_List')
      final List<ArtistList>? artistList = const [],
      @JsonKey(name: 'SongList') final List<SongList>? songList = const [],
      @JsonKey(name: 'PlayList') final List<PlayList>? playList = const [],
      @JsonKey(name: 'DownlaodList')
      final List<DownloadList>? downloadList = const []})
      : _artistList = artistList,
        _songList = songList,
        _playList = playList,
        _downloadList = downloadList;

  factory _$MusicLibraryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicLibraryModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  final List<ArtistList>? _artistList;
  @override
  @JsonKey(name: 'Artist_List')
  List<ArtistList>? get artistList {
    final value = _artistList;
    if (value == null) return null;
    if (_artistList is EqualUnmodifiableListView) return _artistList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SongList>? _songList;
  @override
  @JsonKey(name: 'SongList')
  List<SongList>? get songList {
    final value = _songList;
    if (value == null) return null;
    if (_songList is EqualUnmodifiableListView) return _songList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PlayList>? _playList;
  @override
  @JsonKey(name: 'PlayList')
  List<PlayList>? get playList {
    final value = _playList;
    if (value == null) return null;
    if (_playList is EqualUnmodifiableListView) return _playList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DownloadList>? _downloadList;
  @override
  @JsonKey(name: 'DownlaodList')
  List<DownloadList>? get downloadList {
    final value = _downloadList;
    if (value == null) return null;
    if (_downloadList is EqualUnmodifiableListView) return _downloadList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MusicLibraryModel(status: $status, artistList: $artistList, songList: $songList, playList: $playList, downloadList: $downloadList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicLibraryModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._artistList, _artistList) &&
            const DeepCollectionEquality().equals(other._songList, _songList) &&
            const DeepCollectionEquality().equals(other._playList, _playList) &&
            const DeepCollectionEquality()
                .equals(other._downloadList, _downloadList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_artistList),
      const DeepCollectionEquality().hash(_songList),
      const DeepCollectionEquality().hash(_playList),
      const DeepCollectionEquality().hash(_downloadList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicLibraryModelImplCopyWith<_$MusicLibraryModelImpl> get copyWith =>
      __$$MusicLibraryModelImplCopyWithImpl<_$MusicLibraryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicLibraryModelImplToJson(
      this,
    );
  }
}

abstract class _MusicLibraryModel implements MusicLibraryModel {
  const factory _MusicLibraryModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'Artist_List') final List<ArtistList>? artistList,
      @JsonKey(name: 'SongList') final List<SongList>? songList,
      @JsonKey(name: 'PlayList') final List<PlayList>? playList,
      @JsonKey(name: 'DownlaodList')
      final List<DownloadList>? downloadList}) = _$MusicLibraryModelImpl;

  factory _MusicLibraryModel.fromJson(Map<String, dynamic> json) =
      _$MusicLibraryModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'Artist_List')
  List<ArtistList>? get artistList;
  @override
  @JsonKey(name: 'SongList')
  List<SongList>? get songList;
  @override
  @JsonKey(name: 'PlayList')
  List<PlayList>? get playList;
  @override
  @JsonKey(name: 'DownlaodList')
  List<DownloadList>? get downloadList;
  @override
  @JsonKey(ignore: true)
  _$$MusicLibraryModelImplCopyWith<_$MusicLibraryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistList _$ArtistListFromJson(Map<String, dynamic> json) {
  return _ArtistList.fromJson(json);
}

/// @nodoc
mixin _$ArtistList {
  @JsonKey(name: 'artist_id')
  int? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist_name')
  String? get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist_cover')
  String? get artistCover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistListCopyWith<ArtistList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistListCopyWith<$Res> {
  factory $ArtistListCopyWith(
          ArtistList value, $Res Function(ArtistList) then) =
      _$ArtistListCopyWithImpl<$Res, ArtistList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artist_id') int? artistId,
      @JsonKey(name: 'artist_name') String? artistName,
      @JsonKey(name: 'artist_cover') String? artistCover});
}

/// @nodoc
class _$ArtistListCopyWithImpl<$Res, $Val extends ArtistList>
    implements $ArtistListCopyWith<$Res> {
  _$ArtistListCopyWithImpl(this._value, this._then);

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
abstract class _$$ArtistListImplCopyWith<$Res>
    implements $ArtistListCopyWith<$Res> {
  factory _$$ArtistListImplCopyWith(
          _$ArtistListImpl value, $Res Function(_$ArtistListImpl) then) =
      __$$ArtistListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artist_id') int? artistId,
      @JsonKey(name: 'artist_name') String? artistName,
      @JsonKey(name: 'artist_cover') String? artistCover});
}

/// @nodoc
class __$$ArtistListImplCopyWithImpl<$Res>
    extends _$ArtistListCopyWithImpl<$Res, _$ArtistListImpl>
    implements _$$ArtistListImplCopyWith<$Res> {
  __$$ArtistListImplCopyWithImpl(
      _$ArtistListImpl _value, $Res Function(_$ArtistListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = freezed,
    Object? artistName = freezed,
    Object? artistCover = freezed,
  }) {
    return _then(_$ArtistListImpl(
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
class _$ArtistListImpl implements _ArtistList {
  const _$ArtistListImpl(
      {@JsonKey(name: 'artist_id') this.artistId = 0,
      @JsonKey(name: 'artist_name') this.artistName = '',
      @JsonKey(name: 'artist_cover') this.artistCover = ''});

  factory _$ArtistListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistListImplFromJson(json);

  @override
  @JsonKey(name: 'artist_id')
  final int? artistId;
  @override
  @JsonKey(name: 'artist_name')
  final String? artistName;
  @override
  @JsonKey(name: 'artist_cover')
  final String? artistCover;

  @override
  String toString() {
    return 'ArtistList(artistId: $artistId, artistName: $artistName, artistCover: $artistCover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistListImpl &&
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
  _$$ArtistListImplCopyWith<_$ArtistListImpl> get copyWith =>
      __$$ArtistListImplCopyWithImpl<_$ArtistListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistListImplToJson(
      this,
    );
  }
}

abstract class _ArtistList implements ArtistList {
  const factory _ArtistList(
          {@JsonKey(name: 'artist_id') final int? artistId,
          @JsonKey(name: 'artist_name') final String? artistName,
          @JsonKey(name: 'artist_cover') final String? artistCover}) =
      _$ArtistListImpl;

  factory _ArtistList.fromJson(Map<String, dynamic> json) =
      _$ArtistListImpl.fromJson;

  @override
  @JsonKey(name: 'artist_id')
  int? get artistId;
  @override
  @JsonKey(name: 'artist_name')
  String? get artistName;
  @override
  @JsonKey(name: 'artist_cover')
  String? get artistCover;
  @override
  @JsonKey(ignore: true)
  _$$ArtistListImplCopyWith<_$ArtistListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongList _$SongListFromJson(Map<String, dynamic> json) {
  return _SongList.fromJson(json);
}

/// @nodoc
mixin _$SongList {
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
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongListCopyWith<SongList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongListCopyWith<$Res> {
  factory $SongListCopyWith(SongList value, $Res Function(SongList) then) =
      _$SongListCopyWithImpl<$Res, SongList>;
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$SongListCopyWithImpl<$Res, $Val extends SongList>
    implements $SongListCopyWith<$Res> {
  _$SongListCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
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
abstract class _$$SongListImplCopyWith<$Res>
    implements $SongListCopyWith<$Res> {
  factory _$$SongListImplCopyWith(
          _$SongListImpl value, $Res Function(_$SongListImpl) then) =
      __$$SongListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$SongListImplCopyWithImpl<$Res>
    extends _$SongListCopyWithImpl<$Res, _$SongListImpl>
    implements _$$SongListImplCopyWith<$Res> {
  __$$SongListImplCopyWithImpl(
      _$SongListImpl _value, $Res Function(_$SongListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? type = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$SongListImpl(
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
class _$SongListImpl implements _SongList {
  const _$SongListImpl(
      {@JsonKey(name: "song_id") this.songId = 0,
      @JsonKey(name: "song_title") this.songTitle = '',
      @JsonKey(name: "song_artist") this.songArtist = '',
      @JsonKey(name: "album_id") this.albumId = '',
      @JsonKey(name: "artist_id") this.artistId = 0,
      @JsonKey(name: "type") this.type = '',
      @JsonKey(name: "cover") this.cover = ''});

  factory _$SongListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongListImplFromJson(json);

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
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'SongList(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, albumId: $albumId, artistId: $artistId, type: $type, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongListImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle) &&
            (identical(other.songArtist, songArtist) ||
                other.songArtist == songArtist) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, songTitle, songArtist,
      albumId, artistId, type, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongListImplCopyWith<_$SongListImpl> get copyWith =>
      __$$SongListImplCopyWithImpl<_$SongListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongListImplToJson(
      this,
    );
  }
}

abstract class _SongList implements SongList {
  const factory _SongList(
      {@JsonKey(name: "song_id") final int? songId,
      @JsonKey(name: "song_title") final String? songTitle,
      @JsonKey(name: "song_artist") final String? songArtist,
      @JsonKey(name: "album_id") final String? albumId,
      @JsonKey(name: "artist_id") final int? artistId,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "cover") final String? cover}) = _$SongListImpl;

  factory _SongList.fromJson(Map<String, dynamic> json) =
      _$SongListImpl.fromJson;

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
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$SongListImplCopyWith<_$SongListImpl> get copyWith =>
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
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
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
      @JsonKey(name: "type") String? type,
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
    Object? type = freezed,
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
      @JsonKey(name: "type") String? type,
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
    Object? type = freezed,
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
class _$PlayListImpl implements _PlayList {
  const _$PlayListImpl(
      {@JsonKey(name: "song_id") this.songId = 0,
      @JsonKey(name: "song_title") this.songTitle = '',
      @JsonKey(name: "song_artist") this.songArtist = '',
      @JsonKey(name: "album_id") this.albumId = '',
      @JsonKey(name: "artist_id") this.artistId = 0,
      @JsonKey(name: "type") this.type = '',
      @JsonKey(name: "cover") this.cover = ''});

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
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'PlayList(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, albumId: $albumId, artistId: $artistId, type: $type, cover: $cover)';
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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, songTitle, songArtist,
      albumId, artistId, type, cover);

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
      @JsonKey(name: "type") final String? type,
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
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$PlayListImplCopyWith<_$PlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DownloadList _$DownloadListFromJson(Map<String, dynamic> json) {
  return _DownloadList.fromJson(json);
}

/// @nodoc
mixin _$DownloadList {
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
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadListCopyWith<DownloadList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadListCopyWith<$Res> {
  factory $DownloadListCopyWith(
          DownloadList value, $Res Function(DownloadList) then) =
      _$DownloadListCopyWithImpl<$Res, DownloadList>;
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class _$DownloadListCopyWithImpl<$Res, $Val extends DownloadList>
    implements $DownloadListCopyWith<$Res> {
  _$DownloadListCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
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
abstract class _$$DownloadListImplCopyWith<$Res>
    implements $DownloadListCopyWith<$Res> {
  factory _$$DownloadListImplCopyWith(
          _$DownloadListImpl value, $Res Function(_$DownloadListImpl) then) =
      __$$DownloadListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "album_id") String? albumId,
      @JsonKey(name: "artist_id") int? artistId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover});
}

/// @nodoc
class __$$DownloadListImplCopyWithImpl<$Res>
    extends _$DownloadListCopyWithImpl<$Res, _$DownloadListImpl>
    implements _$$DownloadListImplCopyWith<$Res> {
  __$$DownloadListImplCopyWithImpl(
      _$DownloadListImpl _value, $Res Function(_$DownloadListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? type = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$DownloadListImpl(
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
class _$DownloadListImpl implements _DownloadList {
  const _$DownloadListImpl(
      {@JsonKey(name: "song_id") this.songId = 0,
      @JsonKey(name: "song_title") this.songTitle = '',
      @JsonKey(name: "song_artist") this.songArtist = '',
      @JsonKey(name: "album_id") this.albumId = '',
      @JsonKey(name: "artist_id") this.artistId = 0,
      @JsonKey(name: "type") this.type = '',
      @JsonKey(name: "cover") this.cover = ''});

  factory _$DownloadListImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadListImplFromJson(json);

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
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "cover")
  final String? cover;

  @override
  String toString() {
    return 'DownloadList(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, albumId: $albumId, artistId: $artistId, type: $type, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadListImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle) &&
            (identical(other.songArtist, songArtist) ||
                other.songArtist == songArtist) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, songTitle, songArtist,
      albumId, artistId, type, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadListImplCopyWith<_$DownloadListImpl> get copyWith =>
      __$$DownloadListImplCopyWithImpl<_$DownloadListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadListImplToJson(
      this,
    );
  }
}

abstract class _DownloadList implements DownloadList {
  const factory _DownloadList(
      {@JsonKey(name: "song_id") final int? songId,
      @JsonKey(name: "song_title") final String? songTitle,
      @JsonKey(name: "song_artist") final String? songArtist,
      @JsonKey(name: "album_id") final String? albumId,
      @JsonKey(name: "artist_id") final int? artistId,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "cover") final String? cover}) = _$DownloadListImpl;

  factory _DownloadList.fromJson(Map<String, dynamic> json) =
      _$DownloadListImpl.fromJson;

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
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$DownloadListImplCopyWith<_$DownloadListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
