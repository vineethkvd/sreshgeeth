// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlbumModel _$AlbumModelFromJson(Map<String, dynamic> json) {
  return _AlbumModel.fromJson(json);
}

/// @nodoc
mixin _$AlbumModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  String? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'Album')
  List<Album>? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'Song')
  List<Song>? get song => throw _privateConstructorUsedError;
  @JsonKey(name: 'Other_album')
  List<OtherAlbum>? get otherAlbum => throw _privateConstructorUsedError;
  @JsonKey(name: "Geners Songs List")
  List<GenersSongsList>? get genersSongsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumModelCopyWith<AlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumModelCopyWith<$Res> {
  factory $AlbumModelCopyWith(
          AlbumModel value, $Res Function(AlbumModel) then) =
      _$AlbumModelCopyWithImpl<$Res, AlbumModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'total_count') String? totalCount,
      @JsonKey(name: 'Album') List<Album>? album,
      @JsonKey(name: 'Song') List<Song>? song,
      @JsonKey(name: 'Other_album') List<OtherAlbum>? otherAlbum,
      @JsonKey(name: "Geners Songs List")
      List<GenersSongsList>? genersSongsList});
}

/// @nodoc
class _$AlbumModelCopyWithImpl<$Res, $Val extends AlbumModel>
    implements $AlbumModelCopyWith<$Res> {
  _$AlbumModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalCount = freezed,
    Object? album = freezed,
    Object? song = freezed,
    Object? otherAlbum = freezed,
    Object? genersSongsList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as String?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Album>?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Song>?,
      otherAlbum: freezed == otherAlbum
          ? _value.otherAlbum
          : otherAlbum // ignore: cast_nullable_to_non_nullable
              as List<OtherAlbum>?,
      genersSongsList: freezed == genersSongsList
          ? _value.genersSongsList
          : genersSongsList // ignore: cast_nullable_to_non_nullable
              as List<GenersSongsList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumModelImplCopyWith<$Res>
    implements $AlbumModelCopyWith<$Res> {
  factory _$$AlbumModelImplCopyWith(
          _$AlbumModelImpl value, $Res Function(_$AlbumModelImpl) then) =
      __$$AlbumModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'total_count') String? totalCount,
      @JsonKey(name: 'Album') List<Album>? album,
      @JsonKey(name: 'Song') List<Song>? song,
      @JsonKey(name: 'Other_album') List<OtherAlbum>? otherAlbum,
      @JsonKey(name: "Geners Songs List")
      List<GenersSongsList>? genersSongsList});
}

/// @nodoc
class __$$AlbumModelImplCopyWithImpl<$Res>
    extends _$AlbumModelCopyWithImpl<$Res, _$AlbumModelImpl>
    implements _$$AlbumModelImplCopyWith<$Res> {
  __$$AlbumModelImplCopyWithImpl(
      _$AlbumModelImpl _value, $Res Function(_$AlbumModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalCount = freezed,
    Object? album = freezed,
    Object? song = freezed,
    Object? otherAlbum = freezed,
    Object? genersSongsList = freezed,
  }) {
    return _then(_$AlbumModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as String?,
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Album>?,
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Song>?,
      otherAlbum: freezed == otherAlbum
          ? _value._otherAlbum
          : otherAlbum // ignore: cast_nullable_to_non_nullable
              as List<OtherAlbum>?,
      genersSongsList: freezed == genersSongsList
          ? _value._genersSongsList
          : genersSongsList // ignore: cast_nullable_to_non_nullable
              as List<GenersSongsList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumModelImpl implements _AlbumModel {
  const _$AlbumModelImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'total_count') this.totalCount = '',
      @JsonKey(name: 'Album') final List<Album>? album = const [],
      @JsonKey(name: 'Song') final List<Song>? song = const [],
      @JsonKey(name: 'Other_album')
      final List<OtherAlbum>? otherAlbum = const [],
      @JsonKey(name: "Geners Songs List")
      final List<GenersSongsList>? genersSongsList = const []})
      : _album = album,
        _song = song,
        _otherAlbum = otherAlbum,
        _genersSongsList = genersSongsList;

  factory _$AlbumModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'total_count')
  final String? totalCount;
  final List<Album>? _album;
  @override
  @JsonKey(name: 'Album')
  List<Album>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Song>? _song;
  @override
  @JsonKey(name: 'Song')
  List<Song>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OtherAlbum>? _otherAlbum;
  @override
  @JsonKey(name: 'Other_album')
  List<OtherAlbum>? get otherAlbum {
    final value = _otherAlbum;
    if (value == null) return null;
    if (_otherAlbum is EqualUnmodifiableListView) return _otherAlbum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GenersSongsList>? _genersSongsList;
  @override
  @JsonKey(name: "Geners Songs List")
  List<GenersSongsList>? get genersSongsList {
    final value = _genersSongsList;
    if (value == null) return null;
    if (_genersSongsList is EqualUnmodifiableListView) return _genersSongsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AlbumModel(status: $status, totalCount: $totalCount, album: $album, song: $song, otherAlbum: $otherAlbum, genersSongsList: $genersSongsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality().equals(other._song, _song) &&
            const DeepCollectionEquality()
                .equals(other._otherAlbum, _otherAlbum) &&
            const DeepCollectionEquality()
                .equals(other._genersSongsList, _genersSongsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      totalCount,
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_song),
      const DeepCollectionEquality().hash(_otherAlbum),
      const DeepCollectionEquality().hash(_genersSongsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumModelImplCopyWith<_$AlbumModelImpl> get copyWith =>
      __$$AlbumModelImplCopyWithImpl<_$AlbumModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumModelImplToJson(
      this,
    );
  }
}

abstract class _AlbumModel implements AlbumModel {
  const factory _AlbumModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'total_count') final String? totalCount,
      @JsonKey(name: 'Album') final List<Album>? album,
      @JsonKey(name: 'Song') final List<Song>? song,
      @JsonKey(name: 'Other_album') final List<OtherAlbum>? otherAlbum,
      @JsonKey(name: "Geners Songs List")
      final List<GenersSongsList>? genersSongsList}) = _$AlbumModelImpl;

  factory _AlbumModel.fromJson(Map<String, dynamic> json) =
      _$AlbumModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'total_count')
  String? get totalCount;
  @override
  @JsonKey(name: 'Album')
  List<Album>? get album;
  @override
  @JsonKey(name: 'Song')
  List<Song>? get song;
  @override
  @JsonKey(name: 'Other_album')
  List<OtherAlbum>? get otherAlbum;
  @override
  @JsonKey(name: "Geners Songs List")
  List<GenersSongsList>? get genersSongsList;
  @override
  @JsonKey(ignore: true)
  _$$AlbumModelImplCopyWith<_$AlbumModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  @JsonKey(name: 'album_id')
  int? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ablum_title')
  String? get ablumTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist_name')
  String? get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover')
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
      {@JsonKey(name: 'album_id') int? albumId,
      @JsonKey(name: 'ablum_title') String? ablumTitle,
      @JsonKey(name: 'artist_name') String? artistName,
      @JsonKey(name: 'cover') String? cover});
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
    Object? ablumTitle = freezed,
    Object? artistName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      ablumTitle: freezed == ablumTitle
          ? _value.ablumTitle
          : ablumTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'album_id') int? albumId,
      @JsonKey(name: 'ablum_title') String? ablumTitle,
      @JsonKey(name: 'artist_name') String? artistName,
      @JsonKey(name: 'cover') String? cover});
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
    Object? ablumTitle = freezed,
    Object? artistName = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$AlbumImpl(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      ablumTitle: freezed == ablumTitle
          ? _value.ablumTitle
          : ablumTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'album_id') this.albumId = 0,
      @JsonKey(name: 'ablum_title') this.ablumTitle = '',
      @JsonKey(name: 'artist_name') this.artistName = '',
      @JsonKey(name: 'cover') this.cover = ''});

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  @JsonKey(name: 'album_id')
  final int? albumId;
  @override
  @JsonKey(name: 'ablum_title')
  final String? ablumTitle;
  @override
  @JsonKey(name: 'artist_name')
  final String? artistName;
  @override
  @JsonKey(name: 'cover')
  final String? cover;

  @override
  String toString() {
    return 'Album(albumId: $albumId, ablumTitle: $ablumTitle, artistName: $artistName, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.ablumTitle, ablumTitle) ||
                other.ablumTitle == ablumTitle) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, albumId, ablumTitle, artistName, cover);

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
      {@JsonKey(name: 'album_id') final int? albumId,
      @JsonKey(name: 'ablum_title') final String? ablumTitle,
      @JsonKey(name: 'artist_name') final String? artistName,
      @JsonKey(name: 'cover') final String? cover}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  @JsonKey(name: 'album_id')
  int? get albumId;
  @override
  @JsonKey(name: 'ablum_title')
  String? get ablumTitle;
  @override
  @JsonKey(name: 'artist_name')
  String? get artistName;
  @override
  @JsonKey(name: 'cover')
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  @JsonKey(name: "song_id")
  int? get songId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_title")
  String? get songTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "song_artist")
  String? get songArtist => throw _privateConstructorUsedError;
  @JsonKey(name: "song_album_id")
  String? get songAlbumId => throw _privateConstructorUsedError;
  @JsonKey(name: "song_link")
  String? get songLink => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;
  @JsonKey(name: "like_status")
  bool? get likeStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "song_album_id") String? songAlbumId,
      @JsonKey(name: "song_link") String? songLink,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "like_status") bool? likeStatus});
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

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
    Object? songAlbumId = freezed,
    Object? songLink = freezed,
    Object? type = freezed,
    Object? cover = freezed,
    Object? likeStatus = freezed,
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
      songAlbumId: freezed == songAlbumId
          ? _value.songAlbumId
          : songAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      songLink: freezed == songLink
          ? _value.songLink
          : songLink // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      likeStatus: freezed == likeStatus
          ? _value.likeStatus
          : likeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongImplCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$SongImplCopyWith(
          _$SongImpl value, $Res Function(_$SongImpl) then) =
      __$$SongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "song_id") int? songId,
      @JsonKey(name: "song_title") String? songTitle,
      @JsonKey(name: "song_artist") String? songArtist,
      @JsonKey(name: "song_album_id") String? songAlbumId,
      @JsonKey(name: "song_link") String? songLink,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "like_status") bool? likeStatus});
}

/// @nodoc
class __$$SongImplCopyWithImpl<$Res>
    extends _$SongCopyWithImpl<$Res, _$SongImpl>
    implements _$$SongImplCopyWith<$Res> {
  __$$SongImplCopyWithImpl(_$SongImpl _value, $Res Function(_$SongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = freezed,
    Object? songTitle = freezed,
    Object? songArtist = freezed,
    Object? songAlbumId = freezed,
    Object? songLink = freezed,
    Object? type = freezed,
    Object? cover = freezed,
    Object? likeStatus = freezed,
  }) {
    return _then(_$SongImpl(
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
      songAlbumId: freezed == songAlbumId
          ? _value.songAlbumId
          : songAlbumId // ignore: cast_nullable_to_non_nullable
              as String?,
      songLink: freezed == songLink
          ? _value.songLink
          : songLink // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      likeStatus: freezed == likeStatus
          ? _value.likeStatus
          : likeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongImpl implements _Song {
  const _$SongImpl(
      {@JsonKey(name: "song_id") this.songId = 0,
      @JsonKey(name: "song_title") this.songTitle = '',
      @JsonKey(name: "song_artist") this.songArtist = '',
      @JsonKey(name: "song_album_id") this.songAlbumId = '',
      @JsonKey(name: "song_link") this.songLink = '',
      @JsonKey(name: "type") this.type = '',
      @JsonKey(name: "cover") this.cover = '',
      @JsonKey(name: "like_status") this.likeStatus = false});

  factory _$SongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongImplFromJson(json);

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
  @JsonKey(name: "song_album_id")
  final String? songAlbumId;
  @override
  @JsonKey(name: "song_link")
  final String? songLink;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "cover")
  final String? cover;
  @override
  @JsonKey(name: "like_status")
  final bool? likeStatus;

  @override
  String toString() {
    return 'Song(songId: $songId, songTitle: $songTitle, songArtist: $songArtist, songAlbumId: $songAlbumId, songLink: $songLink, type: $type, cover: $cover, likeStatus: $likeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle) &&
            (identical(other.songArtist, songArtist) ||
                other.songArtist == songArtist) &&
            (identical(other.songAlbumId, songAlbumId) ||
                other.songAlbumId == songAlbumId) &&
            (identical(other.songLink, songLink) ||
                other.songLink == songLink) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.likeStatus, likeStatus) ||
                other.likeStatus == likeStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, songTitle, songArtist,
      songAlbumId, songLink, type, cover, likeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      __$$SongImplCopyWithImpl<_$SongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongImplToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  const factory _Song(
      {@JsonKey(name: "song_id") final int? songId,
      @JsonKey(name: "song_title") final String? songTitle,
      @JsonKey(name: "song_artist") final String? songArtist,
      @JsonKey(name: "song_album_id") final String? songAlbumId,
      @JsonKey(name: "song_link") final String? songLink,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "cover") final String? cover,
      @JsonKey(name: "like_status") final bool? likeStatus}) = _$SongImpl;

  factory _Song.fromJson(Map<String, dynamic> json) = _$SongImpl.fromJson;

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
  @JsonKey(name: "song_album_id")
  String? get songAlbumId;
  @override
  @JsonKey(name: "song_link")
  String? get songLink;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(name: "like_status")
  bool? get likeStatus;
  @override
  @JsonKey(ignore: true)
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherAlbum _$OtherAlbumFromJson(Map<String, dynamic> json) {
  return _OtherAlbum.fromJson(json);
}

/// @nodoc
mixin _$OtherAlbum {
  @JsonKey(name: 'album_id')
  int? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ablum_title')
  String? get ablumTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover')
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherAlbumCopyWith<OtherAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherAlbumCopyWith<$Res> {
  factory $OtherAlbumCopyWith(
          OtherAlbum value, $Res Function(OtherAlbum) then) =
      _$OtherAlbumCopyWithImpl<$Res, OtherAlbum>;
  @useResult
  $Res call(
      {@JsonKey(name: 'album_id') int? albumId,
      @JsonKey(name: 'ablum_title') String? ablumTitle,
      @JsonKey(name: 'cover') String? cover});
}

/// @nodoc
class _$OtherAlbumCopyWithImpl<$Res, $Val extends OtherAlbum>
    implements $OtherAlbumCopyWith<$Res> {
  _$OtherAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = freezed,
    Object? ablumTitle = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      ablumTitle: freezed == ablumTitle
          ? _value.ablumTitle
          : ablumTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherAlbumImplCopyWith<$Res>
    implements $OtherAlbumCopyWith<$Res> {
  factory _$$OtherAlbumImplCopyWith(
          _$OtherAlbumImpl value, $Res Function(_$OtherAlbumImpl) then) =
      __$$OtherAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'album_id') int? albumId,
      @JsonKey(name: 'ablum_title') String? ablumTitle,
      @JsonKey(name: 'cover') String? cover});
}

/// @nodoc
class __$$OtherAlbumImplCopyWithImpl<$Res>
    extends _$OtherAlbumCopyWithImpl<$Res, _$OtherAlbumImpl>
    implements _$$OtherAlbumImplCopyWith<$Res> {
  __$$OtherAlbumImplCopyWithImpl(
      _$OtherAlbumImpl _value, $Res Function(_$OtherAlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = freezed,
    Object? ablumTitle = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$OtherAlbumImpl(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      ablumTitle: freezed == ablumTitle
          ? _value.ablumTitle
          : ablumTitle // ignore: cast_nullable_to_non_nullable
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
class _$OtherAlbumImpl implements _OtherAlbum {
  const _$OtherAlbumImpl(
      {@JsonKey(name: 'album_id') this.albumId = 0,
      @JsonKey(name: 'ablum_title') this.ablumTitle = '',
      @JsonKey(name: 'cover') this.cover = ''});

  factory _$OtherAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherAlbumImplFromJson(json);

  @override
  @JsonKey(name: 'album_id')
  final int? albumId;
  @override
  @JsonKey(name: 'ablum_title')
  final String? ablumTitle;
  @override
  @JsonKey(name: 'cover')
  final String? cover;

  @override
  String toString() {
    return 'OtherAlbum(albumId: $albumId, ablumTitle: $ablumTitle, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherAlbumImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.ablumTitle, ablumTitle) ||
                other.ablumTitle == ablumTitle) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, albumId, ablumTitle, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherAlbumImplCopyWith<_$OtherAlbumImpl> get copyWith =>
      __$$OtherAlbumImplCopyWithImpl<_$OtherAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherAlbumImplToJson(
      this,
    );
  }
}

abstract class _OtherAlbum implements OtherAlbum {
  const factory _OtherAlbum(
      {@JsonKey(name: 'album_id') final int? albumId,
      @JsonKey(name: 'ablum_title') final String? ablumTitle,
      @JsonKey(name: 'cover') final String? cover}) = _$OtherAlbumImpl;

  factory _OtherAlbum.fromJson(Map<String, dynamic> json) =
      _$OtherAlbumImpl.fromJson;

  @override
  @JsonKey(name: 'album_id')
  int? get albumId;
  @override
  @JsonKey(name: 'ablum_title')
  String? get ablumTitle;
  @override
  @JsonKey(name: 'cover')
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$OtherAlbumImplCopyWith<_$OtherAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenersSongsList _$GenersSongsListFromJson(Map<String, dynamic> json) {
  return _GenersSongsList.fromJson(json);
}

/// @nodoc
mixin _$GenersSongsList {
  @JsonKey(name: "rj_song_id")
  int? get rjSongId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_ablum_id")
  String? get rjSongAblumId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_artist_id")
  int? get rjArtistId => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_track_type")
  String? get rjSongTrackType => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_instrument_type")
  String? get rjSongInstrumentType => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_title")
  String? get rjSongTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_production_house")
  String? get rjSongProductionHouse => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_artist")
  String? get rjSongArtist => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_featuring")
  String? get rjSongFeaturing => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_lyricist")
  String? get rjSongLyricist => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_composition")
  String? get rjSongComposition => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_music")
  String? get rjSongMusic => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_production_year")
  String? get rjSongProductionYear => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_isrc_code")
  String? get rjSongIsrcCode => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_genere")
  String? get rjSongGenere => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_parental_advisory")
  String? get rjSongParentalAdvisory => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_lyrics_language")
  String? get rjSongLyricsLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_label_name")
  String? get rjSongLabelName => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_date_of_production")
  String? get rjSongDateOfProduction => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_audio")
  String? get rjSongAudio => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_vocals")
  String? get rjSongVocals => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_cover")
  String? get rjSongCover => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_added_date")
  String? get rjSongAddedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_approved_status")
  int? get rjSongApprovedStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_approved_by")
  int? get rjSongApprovedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_status")
  int? get rjSongStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_song_isDeleted")
  int? get rjSongIsDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: "rj_singers_name")
  String? get rjSingersName => throw _privateConstructorUsedError;
  @JsonKey(name: "approve_status")
  int? get approveStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "update_date")
  String? get updateDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenersSongsListCopyWith<GenersSongsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenersSongsListCopyWith<$Res> {
  factory $GenersSongsListCopyWith(
          GenersSongsList value, $Res Function(GenersSongsList) then) =
      _$GenersSongsListCopyWithImpl<$Res, GenersSongsList>;
  @useResult
  $Res call(
      {@JsonKey(name: "rj_song_id") int? rjSongId,
      @JsonKey(name: "rj_song_ablum_id") String? rjSongAblumId,
      @JsonKey(name: "rj_artist_id") int? rjArtistId,
      @JsonKey(name: "rj_song_track_type") String? rjSongTrackType,
      @JsonKey(name: "rj_song_instrument_type") String? rjSongInstrumentType,
      @JsonKey(name: "rj_song_title") String? rjSongTitle,
      @JsonKey(name: "rj_song_production_house") String? rjSongProductionHouse,
      @JsonKey(name: "rj_song_artist") String? rjSongArtist,
      @JsonKey(name: "rj_song_featuring") String? rjSongFeaturing,
      @JsonKey(name: "rj_song_lyricist") String? rjSongLyricist,
      @JsonKey(name: "rj_song_composition") String? rjSongComposition,
      @JsonKey(name: "rj_song_music") String? rjSongMusic,
      @JsonKey(name: "rj_song_production_year") String? rjSongProductionYear,
      @JsonKey(name: "rj_song_isrc_code") String? rjSongIsrcCode,
      @JsonKey(name: "rj_song_genere") String? rjSongGenere,
      @JsonKey(name: "rj_song_parental_advisory")
      String? rjSongParentalAdvisory,
      @JsonKey(name: "rj_song_lyrics_language") String? rjSongLyricsLanguage,
      @JsonKey(name: "rj_song_label_name") String? rjSongLabelName,
      @JsonKey(name: "rj_song_date_of_production")
      String? rjSongDateOfProduction,
      @JsonKey(name: "rj_song_audio") String? rjSongAudio,
      @JsonKey(name: "rj_song_vocals") String? rjSongVocals,
      @JsonKey(name: "rj_song_cover") String? rjSongCover,
      @JsonKey(name: "rj_song_added_date") String? rjSongAddedDate,
      @JsonKey(name: "rj_song_approved_status") int? rjSongApprovedStatus,
      @JsonKey(name: "rj_song_approved_by") int? rjSongApprovedBy,
      @JsonKey(name: "rj_song_status") int? rjSongStatus,
      @JsonKey(name: "rj_song_isDeleted") int? rjSongIsDeleted,
      @JsonKey(name: "rj_singers_name") String? rjSingersName,
      @JsonKey(name: "approve_status") int? approveStatus,
      @JsonKey(name: "update_date") String? updateDate});
}

/// @nodoc
class _$GenersSongsListCopyWithImpl<$Res, $Val extends GenersSongsList>
    implements $GenersSongsListCopyWith<$Res> {
  _$GenersSongsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjSongId = freezed,
    Object? rjSongAblumId = freezed,
    Object? rjArtistId = freezed,
    Object? rjSongTrackType = freezed,
    Object? rjSongInstrumentType = freezed,
    Object? rjSongTitle = freezed,
    Object? rjSongProductionHouse = freezed,
    Object? rjSongArtist = freezed,
    Object? rjSongFeaturing = freezed,
    Object? rjSongLyricist = freezed,
    Object? rjSongComposition = freezed,
    Object? rjSongMusic = freezed,
    Object? rjSongProductionYear = freezed,
    Object? rjSongIsrcCode = freezed,
    Object? rjSongGenere = freezed,
    Object? rjSongParentalAdvisory = freezed,
    Object? rjSongLyricsLanguage = freezed,
    Object? rjSongLabelName = freezed,
    Object? rjSongDateOfProduction = freezed,
    Object? rjSongAudio = freezed,
    Object? rjSongVocals = freezed,
    Object? rjSongCover = freezed,
    Object? rjSongAddedDate = freezed,
    Object? rjSongApprovedStatus = freezed,
    Object? rjSongApprovedBy = freezed,
    Object? rjSongStatus = freezed,
    Object? rjSongIsDeleted = freezed,
    Object? rjSingersName = freezed,
    Object? approveStatus = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_value.copyWith(
      rjSongId: freezed == rjSongId
          ? _value.rjSongId
          : rjSongId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongAblumId: freezed == rjSongAblumId
          ? _value.rjSongAblumId
          : rjSongAblumId // ignore: cast_nullable_to_non_nullable
              as String?,
      rjArtistId: freezed == rjArtistId
          ? _value.rjArtistId
          : rjArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongTrackType: freezed == rjSongTrackType
          ? _value.rjSongTrackType
          : rjSongTrackType // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongInstrumentType: freezed == rjSongInstrumentType
          ? _value.rjSongInstrumentType
          : rjSongInstrumentType // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongTitle: freezed == rjSongTitle
          ? _value.rjSongTitle
          : rjSongTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongProductionHouse: freezed == rjSongProductionHouse
          ? _value.rjSongProductionHouse
          : rjSongProductionHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongArtist: freezed == rjSongArtist
          ? _value.rjSongArtist
          : rjSongArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongFeaturing: freezed == rjSongFeaturing
          ? _value.rjSongFeaturing
          : rjSongFeaturing // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongLyricist: freezed == rjSongLyricist
          ? _value.rjSongLyricist
          : rjSongLyricist // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongComposition: freezed == rjSongComposition
          ? _value.rjSongComposition
          : rjSongComposition // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongMusic: freezed == rjSongMusic
          ? _value.rjSongMusic
          : rjSongMusic // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongProductionYear: freezed == rjSongProductionYear
          ? _value.rjSongProductionYear
          : rjSongProductionYear // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongIsrcCode: freezed == rjSongIsrcCode
          ? _value.rjSongIsrcCode
          : rjSongIsrcCode // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongGenere: freezed == rjSongGenere
          ? _value.rjSongGenere
          : rjSongGenere // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongParentalAdvisory: freezed == rjSongParentalAdvisory
          ? _value.rjSongParentalAdvisory
          : rjSongParentalAdvisory // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongLyricsLanguage: freezed == rjSongLyricsLanguage
          ? _value.rjSongLyricsLanguage
          : rjSongLyricsLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongLabelName: freezed == rjSongLabelName
          ? _value.rjSongLabelName
          : rjSongLabelName // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongDateOfProduction: freezed == rjSongDateOfProduction
          ? _value.rjSongDateOfProduction
          : rjSongDateOfProduction // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongAudio: freezed == rjSongAudio
          ? _value.rjSongAudio
          : rjSongAudio // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongVocals: freezed == rjSongVocals
          ? _value.rjSongVocals
          : rjSongVocals // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongCover: freezed == rjSongCover
          ? _value.rjSongCover
          : rjSongCover // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongAddedDate: freezed == rjSongAddedDate
          ? _value.rjSongAddedDate
          : rjSongAddedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongApprovedStatus: freezed == rjSongApprovedStatus
          ? _value.rjSongApprovedStatus
          : rjSongApprovedStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongApprovedBy: freezed == rjSongApprovedBy
          ? _value.rjSongApprovedBy
          : rjSongApprovedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongStatus: freezed == rjSongStatus
          ? _value.rjSongStatus
          : rjSongStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongIsDeleted: freezed == rjSongIsDeleted
          ? _value.rjSongIsDeleted
          : rjSongIsDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSingersName: freezed == rjSingersName
          ? _value.rjSingersName
          : rjSingersName // ignore: cast_nullable_to_non_nullable
              as String?,
      approveStatus: freezed == approveStatus
          ? _value.approveStatus
          : approveStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      updateDate: freezed == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenersSongsListImplCopyWith<$Res>
    implements $GenersSongsListCopyWith<$Res> {
  factory _$$GenersSongsListImplCopyWith(_$GenersSongsListImpl value,
          $Res Function(_$GenersSongsListImpl) then) =
      __$$GenersSongsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rj_song_id") int? rjSongId,
      @JsonKey(name: "rj_song_ablum_id") String? rjSongAblumId,
      @JsonKey(name: "rj_artist_id") int? rjArtistId,
      @JsonKey(name: "rj_song_track_type") String? rjSongTrackType,
      @JsonKey(name: "rj_song_instrument_type") String? rjSongInstrumentType,
      @JsonKey(name: "rj_song_title") String? rjSongTitle,
      @JsonKey(name: "rj_song_production_house") String? rjSongProductionHouse,
      @JsonKey(name: "rj_song_artist") String? rjSongArtist,
      @JsonKey(name: "rj_song_featuring") String? rjSongFeaturing,
      @JsonKey(name: "rj_song_lyricist") String? rjSongLyricist,
      @JsonKey(name: "rj_song_composition") String? rjSongComposition,
      @JsonKey(name: "rj_song_music") String? rjSongMusic,
      @JsonKey(name: "rj_song_production_year") String? rjSongProductionYear,
      @JsonKey(name: "rj_song_isrc_code") String? rjSongIsrcCode,
      @JsonKey(name: "rj_song_genere") String? rjSongGenere,
      @JsonKey(name: "rj_song_parental_advisory")
      String? rjSongParentalAdvisory,
      @JsonKey(name: "rj_song_lyrics_language") String? rjSongLyricsLanguage,
      @JsonKey(name: "rj_song_label_name") String? rjSongLabelName,
      @JsonKey(name: "rj_song_date_of_production")
      String? rjSongDateOfProduction,
      @JsonKey(name: "rj_song_audio") String? rjSongAudio,
      @JsonKey(name: "rj_song_vocals") String? rjSongVocals,
      @JsonKey(name: "rj_song_cover") String? rjSongCover,
      @JsonKey(name: "rj_song_added_date") String? rjSongAddedDate,
      @JsonKey(name: "rj_song_approved_status") int? rjSongApprovedStatus,
      @JsonKey(name: "rj_song_approved_by") int? rjSongApprovedBy,
      @JsonKey(name: "rj_song_status") int? rjSongStatus,
      @JsonKey(name: "rj_song_isDeleted") int? rjSongIsDeleted,
      @JsonKey(name: "rj_singers_name") String? rjSingersName,
      @JsonKey(name: "approve_status") int? approveStatus,
      @JsonKey(name: "update_date") String? updateDate});
}

/// @nodoc
class __$$GenersSongsListImplCopyWithImpl<$Res>
    extends _$GenersSongsListCopyWithImpl<$Res, _$GenersSongsListImpl>
    implements _$$GenersSongsListImplCopyWith<$Res> {
  __$$GenersSongsListImplCopyWithImpl(
      _$GenersSongsListImpl _value, $Res Function(_$GenersSongsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rjSongId = freezed,
    Object? rjSongAblumId = freezed,
    Object? rjArtistId = freezed,
    Object? rjSongTrackType = freezed,
    Object? rjSongInstrumentType = freezed,
    Object? rjSongTitle = freezed,
    Object? rjSongProductionHouse = freezed,
    Object? rjSongArtist = freezed,
    Object? rjSongFeaturing = freezed,
    Object? rjSongLyricist = freezed,
    Object? rjSongComposition = freezed,
    Object? rjSongMusic = freezed,
    Object? rjSongProductionYear = freezed,
    Object? rjSongIsrcCode = freezed,
    Object? rjSongGenere = freezed,
    Object? rjSongParentalAdvisory = freezed,
    Object? rjSongLyricsLanguage = freezed,
    Object? rjSongLabelName = freezed,
    Object? rjSongDateOfProduction = freezed,
    Object? rjSongAudio = freezed,
    Object? rjSongVocals = freezed,
    Object? rjSongCover = freezed,
    Object? rjSongAddedDate = freezed,
    Object? rjSongApprovedStatus = freezed,
    Object? rjSongApprovedBy = freezed,
    Object? rjSongStatus = freezed,
    Object? rjSongIsDeleted = freezed,
    Object? rjSingersName = freezed,
    Object? approveStatus = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_$GenersSongsListImpl(
      rjSongId: freezed == rjSongId
          ? _value.rjSongId
          : rjSongId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongAblumId: freezed == rjSongAblumId
          ? _value.rjSongAblumId
          : rjSongAblumId // ignore: cast_nullable_to_non_nullable
              as String?,
      rjArtistId: freezed == rjArtistId
          ? _value.rjArtistId
          : rjArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongTrackType: freezed == rjSongTrackType
          ? _value.rjSongTrackType
          : rjSongTrackType // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongInstrumentType: freezed == rjSongInstrumentType
          ? _value.rjSongInstrumentType
          : rjSongInstrumentType // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongTitle: freezed == rjSongTitle
          ? _value.rjSongTitle
          : rjSongTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongProductionHouse: freezed == rjSongProductionHouse
          ? _value.rjSongProductionHouse
          : rjSongProductionHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongArtist: freezed == rjSongArtist
          ? _value.rjSongArtist
          : rjSongArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongFeaturing: freezed == rjSongFeaturing
          ? _value.rjSongFeaturing
          : rjSongFeaturing // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongLyricist: freezed == rjSongLyricist
          ? _value.rjSongLyricist
          : rjSongLyricist // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongComposition: freezed == rjSongComposition
          ? _value.rjSongComposition
          : rjSongComposition // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongMusic: freezed == rjSongMusic
          ? _value.rjSongMusic
          : rjSongMusic // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongProductionYear: freezed == rjSongProductionYear
          ? _value.rjSongProductionYear
          : rjSongProductionYear // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongIsrcCode: freezed == rjSongIsrcCode
          ? _value.rjSongIsrcCode
          : rjSongIsrcCode // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongGenere: freezed == rjSongGenere
          ? _value.rjSongGenere
          : rjSongGenere // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongParentalAdvisory: freezed == rjSongParentalAdvisory
          ? _value.rjSongParentalAdvisory
          : rjSongParentalAdvisory // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongLyricsLanguage: freezed == rjSongLyricsLanguage
          ? _value.rjSongLyricsLanguage
          : rjSongLyricsLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongLabelName: freezed == rjSongLabelName
          ? _value.rjSongLabelName
          : rjSongLabelName // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongDateOfProduction: freezed == rjSongDateOfProduction
          ? _value.rjSongDateOfProduction
          : rjSongDateOfProduction // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongAudio: freezed == rjSongAudio
          ? _value.rjSongAudio
          : rjSongAudio // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongVocals: freezed == rjSongVocals
          ? _value.rjSongVocals
          : rjSongVocals // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongCover: freezed == rjSongCover
          ? _value.rjSongCover
          : rjSongCover // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongAddedDate: freezed == rjSongAddedDate
          ? _value.rjSongAddedDate
          : rjSongAddedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      rjSongApprovedStatus: freezed == rjSongApprovedStatus
          ? _value.rjSongApprovedStatus
          : rjSongApprovedStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongApprovedBy: freezed == rjSongApprovedBy
          ? _value.rjSongApprovedBy
          : rjSongApprovedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongStatus: freezed == rjSongStatus
          ? _value.rjSongStatus
          : rjSongStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSongIsDeleted: freezed == rjSongIsDeleted
          ? _value.rjSongIsDeleted
          : rjSongIsDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      rjSingersName: freezed == rjSingersName
          ? _value.rjSingersName
          : rjSingersName // ignore: cast_nullable_to_non_nullable
              as String?,
      approveStatus: freezed == approveStatus
          ? _value.approveStatus
          : approveStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      updateDate: freezed == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenersSongsListImpl implements _GenersSongsList {
  const _$GenersSongsListImpl(
      {@JsonKey(name: "rj_song_id") this.rjSongId = 0,
      @JsonKey(name: "rj_song_ablum_id") this.rjSongAblumId = '',
      @JsonKey(name: "rj_artist_id") this.rjArtistId = 0,
      @JsonKey(name: "rj_song_track_type") this.rjSongTrackType = '',
      @JsonKey(name: "rj_song_instrument_type") this.rjSongInstrumentType = '',
      @JsonKey(name: "rj_song_title") this.rjSongTitle = '',
      @JsonKey(name: "rj_song_production_house")
      this.rjSongProductionHouse = '',
      @JsonKey(name: "rj_song_artist") this.rjSongArtist = '',
      @JsonKey(name: "rj_song_featuring") this.rjSongFeaturing = '',
      @JsonKey(name: "rj_song_lyricist") this.rjSongLyricist = '',
      @JsonKey(name: "rj_song_composition") this.rjSongComposition = '',
      @JsonKey(name: "rj_song_music") this.rjSongMusic = '',
      @JsonKey(name: "rj_song_production_year") this.rjSongProductionYear = '',
      @JsonKey(name: "rj_song_isrc_code") this.rjSongIsrcCode = '',
      @JsonKey(name: "rj_song_genere") this.rjSongGenere = '',
      @JsonKey(name: "rj_song_parental_advisory")
      this.rjSongParentalAdvisory = '',
      @JsonKey(name: "rj_song_lyrics_language") this.rjSongLyricsLanguage = '',
      @JsonKey(name: "rj_song_label_name") this.rjSongLabelName = '',
      @JsonKey(name: "rj_song_date_of_production")
      this.rjSongDateOfProduction = '',
      @JsonKey(name: "rj_song_audio") this.rjSongAudio = '',
      @JsonKey(name: "rj_song_vocals") this.rjSongVocals = '',
      @JsonKey(name: "rj_song_cover") this.rjSongCover = '',
      @JsonKey(name: "rj_song_added_date") this.rjSongAddedDate = '',
      @JsonKey(name: "rj_song_approved_status") this.rjSongApprovedStatus = 0,
      @JsonKey(name: "rj_song_approved_by") this.rjSongApprovedBy = 0,
      @JsonKey(name: "rj_song_status") this.rjSongStatus = 0,
      @JsonKey(name: "rj_song_isDeleted") this.rjSongIsDeleted = 0,
      @JsonKey(name: "rj_singers_name") this.rjSingersName = '',
      @JsonKey(name: "approve_status") this.approveStatus = 0,
      @JsonKey(name: "update_date") this.updateDate = ''});

  factory _$GenersSongsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenersSongsListImplFromJson(json);

  @override
  @JsonKey(name: "rj_song_id")
  final int? rjSongId;
  @override
  @JsonKey(name: "rj_song_ablum_id")
  final String? rjSongAblumId;
  @override
  @JsonKey(name: "rj_artist_id")
  final int? rjArtistId;
  @override
  @JsonKey(name: "rj_song_track_type")
  final String? rjSongTrackType;
  @override
  @JsonKey(name: "rj_song_instrument_type")
  final String? rjSongInstrumentType;
  @override
  @JsonKey(name: "rj_song_title")
  final String? rjSongTitle;
  @override
  @JsonKey(name: "rj_song_production_house")
  final String? rjSongProductionHouse;
  @override
  @JsonKey(name: "rj_song_artist")
  final String? rjSongArtist;
  @override
  @JsonKey(name: "rj_song_featuring")
  final String? rjSongFeaturing;
  @override
  @JsonKey(name: "rj_song_lyricist")
  final String? rjSongLyricist;
  @override
  @JsonKey(name: "rj_song_composition")
  final String? rjSongComposition;
  @override
  @JsonKey(name: "rj_song_music")
  final String? rjSongMusic;
  @override
  @JsonKey(name: "rj_song_production_year")
  final String? rjSongProductionYear;
  @override
  @JsonKey(name: "rj_song_isrc_code")
  final String? rjSongIsrcCode;
  @override
  @JsonKey(name: "rj_song_genere")
  final String? rjSongGenere;
  @override
  @JsonKey(name: "rj_song_parental_advisory")
  final String? rjSongParentalAdvisory;
  @override
  @JsonKey(name: "rj_song_lyrics_language")
  final String? rjSongLyricsLanguage;
  @override
  @JsonKey(name: "rj_song_label_name")
  final String? rjSongLabelName;
  @override
  @JsonKey(name: "rj_song_date_of_production")
  final String? rjSongDateOfProduction;
  @override
  @JsonKey(name: "rj_song_audio")
  final String? rjSongAudio;
  @override
  @JsonKey(name: "rj_song_vocals")
  final String? rjSongVocals;
  @override
  @JsonKey(name: "rj_song_cover")
  final String? rjSongCover;
  @override
  @JsonKey(name: "rj_song_added_date")
  final String? rjSongAddedDate;
  @override
  @JsonKey(name: "rj_song_approved_status")
  final int? rjSongApprovedStatus;
  @override
  @JsonKey(name: "rj_song_approved_by")
  final int? rjSongApprovedBy;
  @override
  @JsonKey(name: "rj_song_status")
  final int? rjSongStatus;
  @override
  @JsonKey(name: "rj_song_isDeleted")
  final int? rjSongIsDeleted;
  @override
  @JsonKey(name: "rj_singers_name")
  final String? rjSingersName;
  @override
  @JsonKey(name: "approve_status")
  final int? approveStatus;
  @override
  @JsonKey(name: "update_date")
  final String? updateDate;

  @override
  String toString() {
    return 'GenersSongsList(rjSongId: $rjSongId, rjSongAblumId: $rjSongAblumId, rjArtistId: $rjArtistId, rjSongTrackType: $rjSongTrackType, rjSongInstrumentType: $rjSongInstrumentType, rjSongTitle: $rjSongTitle, rjSongProductionHouse: $rjSongProductionHouse, rjSongArtist: $rjSongArtist, rjSongFeaturing: $rjSongFeaturing, rjSongLyricist: $rjSongLyricist, rjSongComposition: $rjSongComposition, rjSongMusic: $rjSongMusic, rjSongProductionYear: $rjSongProductionYear, rjSongIsrcCode: $rjSongIsrcCode, rjSongGenere: $rjSongGenere, rjSongParentalAdvisory: $rjSongParentalAdvisory, rjSongLyricsLanguage: $rjSongLyricsLanguage, rjSongLabelName: $rjSongLabelName, rjSongDateOfProduction: $rjSongDateOfProduction, rjSongAudio: $rjSongAudio, rjSongVocals: $rjSongVocals, rjSongCover: $rjSongCover, rjSongAddedDate: $rjSongAddedDate, rjSongApprovedStatus: $rjSongApprovedStatus, rjSongApprovedBy: $rjSongApprovedBy, rjSongStatus: $rjSongStatus, rjSongIsDeleted: $rjSongIsDeleted, rjSingersName: $rjSingersName, approveStatus: $approveStatus, updateDate: $updateDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenersSongsListImpl &&
            (identical(other.rjSongId, rjSongId) ||
                other.rjSongId == rjSongId) &&
            (identical(other.rjSongAblumId, rjSongAblumId) ||
                other.rjSongAblumId == rjSongAblumId) &&
            (identical(other.rjArtistId, rjArtistId) ||
                other.rjArtistId == rjArtistId) &&
            (identical(other.rjSongTrackType, rjSongTrackType) ||
                other.rjSongTrackType == rjSongTrackType) &&
            (identical(other.rjSongInstrumentType, rjSongInstrumentType) ||
                other.rjSongInstrumentType == rjSongInstrumentType) &&
            (identical(other.rjSongTitle, rjSongTitle) ||
                other.rjSongTitle == rjSongTitle) &&
            (identical(other.rjSongProductionHouse, rjSongProductionHouse) ||
                other.rjSongProductionHouse == rjSongProductionHouse) &&
            (identical(other.rjSongArtist, rjSongArtist) ||
                other.rjSongArtist == rjSongArtist) &&
            (identical(other.rjSongFeaturing, rjSongFeaturing) ||
                other.rjSongFeaturing == rjSongFeaturing) &&
            (identical(other.rjSongLyricist, rjSongLyricist) ||
                other.rjSongLyricist == rjSongLyricist) &&
            (identical(other.rjSongComposition, rjSongComposition) ||
                other.rjSongComposition == rjSongComposition) &&
            (identical(other.rjSongMusic, rjSongMusic) ||
                other.rjSongMusic == rjSongMusic) &&
            (identical(other.rjSongProductionYear, rjSongProductionYear) ||
                other.rjSongProductionYear == rjSongProductionYear) &&
            (identical(other.rjSongIsrcCode, rjSongIsrcCode) ||
                other.rjSongIsrcCode == rjSongIsrcCode) &&
            (identical(other.rjSongGenere, rjSongGenere) ||
                other.rjSongGenere == rjSongGenere) &&
            (identical(other.rjSongParentalAdvisory, rjSongParentalAdvisory) ||
                other.rjSongParentalAdvisory == rjSongParentalAdvisory) &&
            (identical(other.rjSongLyricsLanguage, rjSongLyricsLanguage) ||
                other.rjSongLyricsLanguage == rjSongLyricsLanguage) &&
            (identical(other.rjSongLabelName, rjSongLabelName) ||
                other.rjSongLabelName == rjSongLabelName) &&
            (identical(other.rjSongDateOfProduction, rjSongDateOfProduction) ||
                other.rjSongDateOfProduction == rjSongDateOfProduction) &&
            (identical(other.rjSongAudio, rjSongAudio) ||
                other.rjSongAudio == rjSongAudio) &&
            (identical(other.rjSongVocals, rjSongVocals) ||
                other.rjSongVocals == rjSongVocals) &&
            (identical(other.rjSongCover, rjSongCover) ||
                other.rjSongCover == rjSongCover) &&
            (identical(other.rjSongAddedDate, rjSongAddedDate) ||
                other.rjSongAddedDate == rjSongAddedDate) &&
            (identical(other.rjSongApprovedStatus, rjSongApprovedStatus) ||
                other.rjSongApprovedStatus == rjSongApprovedStatus) &&
            (identical(other.rjSongApprovedBy, rjSongApprovedBy) ||
                other.rjSongApprovedBy == rjSongApprovedBy) &&
            (identical(other.rjSongStatus, rjSongStatus) ||
                other.rjSongStatus == rjSongStatus) &&
            (identical(other.rjSongIsDeleted, rjSongIsDeleted) ||
                other.rjSongIsDeleted == rjSongIsDeleted) &&
            (identical(other.rjSingersName, rjSingersName) ||
                other.rjSingersName == rjSingersName) &&
            (identical(other.approveStatus, approveStatus) ||
                other.approveStatus == approveStatus) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        rjSongId,
        rjSongAblumId,
        rjArtistId,
        rjSongTrackType,
        rjSongInstrumentType,
        rjSongTitle,
        rjSongProductionHouse,
        rjSongArtist,
        rjSongFeaturing,
        rjSongLyricist,
        rjSongComposition,
        rjSongMusic,
        rjSongProductionYear,
        rjSongIsrcCode,
        rjSongGenere,
        rjSongParentalAdvisory,
        rjSongLyricsLanguage,
        rjSongLabelName,
        rjSongDateOfProduction,
        rjSongAudio,
        rjSongVocals,
        rjSongCover,
        rjSongAddedDate,
        rjSongApprovedStatus,
        rjSongApprovedBy,
        rjSongStatus,
        rjSongIsDeleted,
        rjSingersName,
        approveStatus,
        updateDate
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenersSongsListImplCopyWith<_$GenersSongsListImpl> get copyWith =>
      __$$GenersSongsListImplCopyWithImpl<_$GenersSongsListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenersSongsListImplToJson(
      this,
    );
  }
}

abstract class _GenersSongsList implements GenersSongsList {
  const factory _GenersSongsList(
      {@JsonKey(name: "rj_song_id") final int? rjSongId,
      @JsonKey(name: "rj_song_ablum_id") final String? rjSongAblumId,
      @JsonKey(name: "rj_artist_id") final int? rjArtistId,
      @JsonKey(name: "rj_song_track_type") final String? rjSongTrackType,
      @JsonKey(name: "rj_song_instrument_type")
      final String? rjSongInstrumentType,
      @JsonKey(name: "rj_song_title") final String? rjSongTitle,
      @JsonKey(name: "rj_song_production_house")
      final String? rjSongProductionHouse,
      @JsonKey(name: "rj_song_artist") final String? rjSongArtist,
      @JsonKey(name: "rj_song_featuring") final String? rjSongFeaturing,
      @JsonKey(name: "rj_song_lyricist") final String? rjSongLyricist,
      @JsonKey(name: "rj_song_composition") final String? rjSongComposition,
      @JsonKey(name: "rj_song_music") final String? rjSongMusic,
      @JsonKey(name: "rj_song_production_year")
      final String? rjSongProductionYear,
      @JsonKey(name: "rj_song_isrc_code") final String? rjSongIsrcCode,
      @JsonKey(name: "rj_song_genere") final String? rjSongGenere,
      @JsonKey(name: "rj_song_parental_advisory")
      final String? rjSongParentalAdvisory,
      @JsonKey(name: "rj_song_lyrics_language")
      final String? rjSongLyricsLanguage,
      @JsonKey(name: "rj_song_label_name") final String? rjSongLabelName,
      @JsonKey(name: "rj_song_date_of_production")
      final String? rjSongDateOfProduction,
      @JsonKey(name: "rj_song_audio") final String? rjSongAudio,
      @JsonKey(name: "rj_song_vocals") final String? rjSongVocals,
      @JsonKey(name: "rj_song_cover") final String? rjSongCover,
      @JsonKey(name: "rj_song_added_date") final String? rjSongAddedDate,
      @JsonKey(name: "rj_song_approved_status") final int? rjSongApprovedStatus,
      @JsonKey(name: "rj_song_approved_by") final int? rjSongApprovedBy,
      @JsonKey(name: "rj_song_status") final int? rjSongStatus,
      @JsonKey(name: "rj_song_isDeleted") final int? rjSongIsDeleted,
      @JsonKey(name: "rj_singers_name") final String? rjSingersName,
      @JsonKey(name: "approve_status") final int? approveStatus,
      @JsonKey(name: "update_date")
      final String? updateDate}) = _$GenersSongsListImpl;

  factory _GenersSongsList.fromJson(Map<String, dynamic> json) =
      _$GenersSongsListImpl.fromJson;

  @override
  @JsonKey(name: "rj_song_id")
  int? get rjSongId;
  @override
  @JsonKey(name: "rj_song_ablum_id")
  String? get rjSongAblumId;
  @override
  @JsonKey(name: "rj_artist_id")
  int? get rjArtistId;
  @override
  @JsonKey(name: "rj_song_track_type")
  String? get rjSongTrackType;
  @override
  @JsonKey(name: "rj_song_instrument_type")
  String? get rjSongInstrumentType;
  @override
  @JsonKey(name: "rj_song_title")
  String? get rjSongTitle;
  @override
  @JsonKey(name: "rj_song_production_house")
  String? get rjSongProductionHouse;
  @override
  @JsonKey(name: "rj_song_artist")
  String? get rjSongArtist;
  @override
  @JsonKey(name: "rj_song_featuring")
  String? get rjSongFeaturing;
  @override
  @JsonKey(name: "rj_song_lyricist")
  String? get rjSongLyricist;
  @override
  @JsonKey(name: "rj_song_composition")
  String? get rjSongComposition;
  @override
  @JsonKey(name: "rj_song_music")
  String? get rjSongMusic;
  @override
  @JsonKey(name: "rj_song_production_year")
  String? get rjSongProductionYear;
  @override
  @JsonKey(name: "rj_song_isrc_code")
  String? get rjSongIsrcCode;
  @override
  @JsonKey(name: "rj_song_genere")
  String? get rjSongGenere;
  @override
  @JsonKey(name: "rj_song_parental_advisory")
  String? get rjSongParentalAdvisory;
  @override
  @JsonKey(name: "rj_song_lyrics_language")
  String? get rjSongLyricsLanguage;
  @override
  @JsonKey(name: "rj_song_label_name")
  String? get rjSongLabelName;
  @override
  @JsonKey(name: "rj_song_date_of_production")
  String? get rjSongDateOfProduction;
  @override
  @JsonKey(name: "rj_song_audio")
  String? get rjSongAudio;
  @override
  @JsonKey(name: "rj_song_vocals")
  String? get rjSongVocals;
  @override
  @JsonKey(name: "rj_song_cover")
  String? get rjSongCover;
  @override
  @JsonKey(name: "rj_song_added_date")
  String? get rjSongAddedDate;
  @override
  @JsonKey(name: "rj_song_approved_status")
  int? get rjSongApprovedStatus;
  @override
  @JsonKey(name: "rj_song_approved_by")
  int? get rjSongApprovedBy;
  @override
  @JsonKey(name: "rj_song_status")
  int? get rjSongStatus;
  @override
  @JsonKey(name: "rj_song_isDeleted")
  int? get rjSongIsDeleted;
  @override
  @JsonKey(name: "rj_singers_name")
  String? get rjSingersName;
  @override
  @JsonKey(name: "approve_status")
  int? get approveStatus;
  @override
  @JsonKey(name: "update_date")
  String? get updateDate;
  @override
  @JsonKey(ignore: true)
  _$$GenersSongsListImplCopyWith<_$GenersSongsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
