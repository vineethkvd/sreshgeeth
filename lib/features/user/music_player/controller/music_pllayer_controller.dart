import 'dart:convert';
import 'dart:io';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:http/http.dart' as http;
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/add_to_playlist_model.dart';
import '../model/album/album_model.dart';
import '../model/check_playlist_model.dart';
import '../model/hit_song_model.dart';
import '../model/like_count_model.dart';
import '../model/remove_playlist_model.dart';
import '../model/song_count_model.dart';
import '../model/song_time_model.dart';
import '../model/update_song_count_model.dart';

class MusicPlayerController extends GetxController {
  final albumModel = const AlbumModel().obs;
  var showMiniPlayer = false.obs;
  var suggestionList = <AudioSource>[].obs;
  late AudioPlayer audioPlayer;
  var duration = const Duration().obs;
  var position = const Duration().obs;
  var isPlaying = false.obs;
  var currentArtistName = ''.obs;
  var currentTitle = ''.obs;
  var imgUrl = ''.obs;
  final isShuffling = false.obs;
  var time = ''.obs;
  var chkPosition = ''.obs;
  var chkDuration = ''.obs;
  var isLoading = false.obs;
  var isChkCount = false.obs;

  @override
  void onInit() {
    super.onInit();

    audioPlayer = AudioPlayer();
    audioPlayer.durationStream.listen((d) {
      duration.value = d ?? Duration.zero;
    });
    audioPlayer.positionStream.listen((p) {
      position.value = p;
      final currentIndex = audioPlayer.currentIndex;
      final audioSource = suggestionList[currentIndex!];
      final mediaItem = (audioSource as UriAudioSource).tag as MediaItem;
      checkSongCount(songId: mediaItem.id.toString());
      checkPlayList(songId: mediaItem.id.toString());
      songLikeCount(songId: mediaItem.id.toString());
      chkPosition.value =
          '${position.value.inMinutes.toString().padLeft(2, '0') ?? '00'}:${position.value.inSeconds.remainder(60).toString().padLeft(2, '0') ?? '00'} ';
      chkDuration.value =
          '${duration.value.inMinutes.toString().padLeft(2, '0') ?? '00'}:${duration.value.inSeconds.remainder(60).toString().padLeft(2, '0') ?? '00'} ';

      if (chkPosition == chkDuration) {
        if (position.value != Duration.zero &&
            duration.value != Duration.zero) {
          isChkCount.value == true;
          final currentIndex = audioPlayer.currentIndex;
          if (currentIndex != null && currentIndex < suggestionList.length) {
            final audioSource = suggestionList[currentIndex];
            final mediaItem = (audioSource as UriAudioSource).tag as MediaItem;
            var times =
                '${position.value.inMinutes.toString().padLeft(2, '0') ?? '00'}:${position.value.inSeconds.remainder(60).toString().padLeft(2, '0') ?? '00'}'
                    .trim();

            updateSongPlayTime(
              songId: mediaItem.id.toString(),
              albumId: mediaItem.extras!['album_id'] as String,
              time: times.toString(),
            );
            updateSongPlayCount(
              songId: mediaItem.id.toString(),
              albumId: mediaItem.extras!['album_id'] as String,
            );
            chkPosition.value = chkPosition.value + chkDuration.value;
            audioPlayer.seekToNext();
            final newAudioSource = suggestionList[currentIndex! + 1];
            final currentSong =
                (newAudioSource as UriAudioSource).tag as MediaItem;
            isChkCount.value == false;
            currentTitle.value = currentSong.title;
            currentArtistName.value = currentSong.artist ?? '';
            imgUrl.value = currentSong.artUri.toString();
          }
        }
      }
    });
    audioPlayer.playerStateStream.listen((state) {
      isPlaying.value = state.playing;
    });
    audioPlayer.currentIndexStream.listen((index) {
      if (index != null && index < suggestionList.length) {
        final currentIndex = audioPlayer.currentIndex;
        final audioSource = suggestionList[currentIndex!];
        final currentSong = (audioSource as UriAudioSource).tag as MediaItem;
        // updateBackgroundNotification();
        isChkCount.value == false;
        currentTitle.value = currentSong.title;
        currentArtistName.value = currentSong.artist ?? '';
        imgUrl.value = currentSong.artUri.toString();
      }
    });
  }

  void updateBackgroundNotification() {
    final currentIndex = audioPlayer.currentIndex;
    final audioSource = suggestionList[currentIndex!];
    final mediaItem = (audioSource as UriAudioSource).tag as MediaItem;

    AudioServiceBackground.setMediaItem(mediaItem);
    AudioServiceBackground.setState(
      controls: [
        MediaControl.skipToPrevious,
        isPlaying.value ? MediaControl.pause : MediaControl.play,
        MediaControl.skipToNext,
      ],
      systemActions: [
        MediaAction.seek,
      ],
      processingState: AudioProcessingState.ready,
      position: position.value,
      bufferedPosition: position.value,
      speed: 1.0,
    );
  }

//fetch album
  Future<void> fetchAlbumDetail(
      {required String albumId,
      required String type,
      required String songId,
      required String genersName}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.albumDetail;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "cus_id": cusId,
        "album_id": albumId,
        "type": type,
        "song_id": songId,
        "geners_name": genersName
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          albumModel(AlbumModel.fromJson(responseData));

          if (albumModel.value.status == "Success") {
            _addToSuggestionList(type: type).then((_) {
              if (kDebugMode) {
                print("add to suggestion list");
              }
            });
            if (kDebugMode) {
              print("Success to fetch");
            }
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          albumModel(AlbumModel.fromJson(responseData));

          if (albumModel.value.status == "Failed") {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  Future<void> _addToSuggestionList({required String type}) async {
    if (type == "gener") {
      suggestionList.value = albumModel.value.genersSongsList!.where((song) {
        return song.rjSongAudio != null && song.rjSongAudio!.isNotEmpty;
      }).map((song) {
        return AudioSource.uri(
          Uri.parse(song.rjSongAudio!),
          tag: MediaItem(
            id: song.rjSongId.toString(),
            title: song.rjSongTitle ?? '',
            artist: song.rjSongArtist ?? '',
            artUri: Uri.parse(song.rjSongCover ?? ''),
            playable: true,
            extras: {
              'album_id': song.rjSongAblumId.toString() ?? '',
              'type': type.toString() ?? '',
              'song_artist': song.rjSongArtist.toString() ?? ''
            },
          ),
        );
      }).toList();
    } else {
      suggestionList.value = albumModel.value.song!.where((song) {
        return song.songLink != null && song.songLink!.isNotEmpty;
      }).map((song) {
        return AudioSource.uri(
          Uri.parse(song.songLink!),
          tag: MediaItem(
            id: song.songId.toString(),
            title: song.songTitle ?? '',
            artist: song.songArtist ?? '',
            artUri: Uri.parse(song.cover ?? ''),
            playable: true,
            extras: {
              'album_id': song.songAlbumId.toString() ?? '',
              'type': song.type.toString() ?? '',
              'song_artist': song.songArtist.toString() ?? ''
            },
          ),
        );
      }).toList();
    }
  }

  // Set song to loop
  var isLoop = false.obs;

  Future<void> loopAudio() async {
    isLoop.value = !isLoop.value;
    print("loop ${isLoop.value}");
    if (isLoop.value) {
      await audioPlayer.setLoopMode(LoopMode.one);
    } else {
      await audioPlayer.setLoopMode(LoopMode.off);
    }
  }

  // Shuffle song
  var isShuffle = false.obs;
  Future<void> toggleShuffle() async {
    isShuffle.value = !isShuffle.value;
    print(isShuffle.value);

    // Set the shuffle mode based on the current value of isShuffle
    if (isShuffle.value) {
      await audioPlayer.setShuffleModeEnabled(true);
    } else {
      await audioPlayer.setShuffleModeEnabled(false);
    }
  }

  // Download song with progress
  var downloadProgress = 0.0.obs;
  Future<void> downloadSong({
    required String url,
    required String fileName,
    required String songID,
  }) async {
    try {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String appDocPath = appDocDir.path;
      String filePath = '$appDocPath/$fileName.mp3';
      File file = File(filePath);

      if (await file.exists()) {
        Fluttertoast.showToast(msg: 'The song already exists in $filePath');
        return;
      }

      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: const Text(
            'Downloading...',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontFamily: "poppinsSemiBold",
            ),
          ),
          content: Obx(() => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinearProgressIndicator(
                    value: downloadProgress.value,
                    color: const Color(0xffe50829),
                  ),
                  const SizedBox(height: 10),
                  Text('${(downloadProgress.value * 100).toStringAsFixed(2)}%'),
                ],
              )),
        ),
        barrierDismissible: false,
      );

      var response =
          await http.Client().send(http.Request('GET', Uri.parse(url)));
      if (response.statusCode == 200) {
        var totalBytes = response.contentLength ?? 0;
        var bytesDownloaded = 0;

        var sink = file.openWrite();

        response.stream.listen(
          (chunk) {
            bytesDownloaded += chunk.length;
            sink.add(chunk);

            // Update progress
            downloadProgress.value = bytesDownloaded / totalBytes;
          },
          onDone: () async {
            await sink.close();
            Get.back();
            hitDownloadedSong(songId: songID);
            Fluttertoast.showToast(msg: 'The song already exists in $filePath');
          },
          onError: (e) {
            Get.back(); // Close the dialog
            Fluttertoast.showToast(
                msg: 'An error occurred while downloading the song');
          },
          cancelOnError: true,
        );
      } else {
        Get.back(); // Close the dialog
        Fluttertoast.showToast(msg: "Failed to download song");
      }
    } catch (e) {
      Get.back(); // Close the dialog
      Fluttertoast.showToast(
          msg: 'An error occurred while downloading the song');
    }
  }

  //hit download song
  var hitDownloadedSongModel = HitDownloadedSongModel().obs;
  Future<void> hitDownloadedSong({required String songId}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.download;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "cus_id": cusId,
        "song_id": songId
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          hitDownloadedSongModel(HitDownloadedSongModel.fromJson(responseData));

          if (hitDownloadedSongModel.value.status == true) {
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          hitDownloadedSongModel(HitDownloadedSongModel.fromJson(responseData));

          if (hitDownloadedSongModel.value.status == false) {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  //like count
  var likeCountModel = LikeCountModel().obs;
  Future<void> songLikeCount({required String songId}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.songLikeCount;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {"api_key": apiToken, "song_id": songId};

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          likeCountModel(LikeCountModel.fromJson(responseData));

          if (hitDownloadedSongModel.value.status == true) {
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          likeCountModel(LikeCountModel.fromJson(responseData));

          if (hitDownloadedSongModel.value.status == false) {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  //view song count
  var songCountModel = SongsCountModel().obs;
  Future<void> checkSongCount({required String songId}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.songViewCount;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "song_id": songId,
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          songCountModel(SongsCountModel.fromJson(responseData));

          if (songCountModel.value.status == "Success") {
            if (kDebugMode) {
              print("Success to fetch");
            }
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          songCountModel(SongsCountModel.fromJson(responseData));

          if (songCountModel.value.status == "Failed") {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  //update song count
  var updateSongCountModel = UpdateSongCountModel().obs;
  Future<void> updateSongPlayCount(
      {required String songId, required String albumId}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.songCount;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "cus_id": cusId,
        "song_id": songId,
        "album_id": albumId
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          updateSongCountModel(UpdateSongCountModel.fromJson(responseData));

          if (updateSongCountModel.value.status == true) {
            if (kDebugMode) {
              print("Success to fetch");
            }
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          updateSongCountModel(UpdateSongCountModel.fromJson(responseData));

          if (updateSongCountModel.value.status == false) {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  var updateSongTimeModel = UpdateSongTimeModel().obs;
  Future<void> updateSongPlayTime(
      {required String songId,
      required String albumId,
      required String time}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.updateSongTime;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "cus_id": cusId,
        "song_id": songId,
        "album_id": albumId,
        "timing": time
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          updateSongTimeModel(UpdateSongTimeModel.fromJson(responseData));

          if (updateSongTimeModel.value.status == true) {
            Fluttertoast.showToast(
                msg: "${updateSongTimeModel.value.msg}",
                backgroundColor: Colors.green);
            if (kDebugMode) {
              print("Success to fetch");
            }
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          updateSongTimeModel(UpdateSongTimeModel.fromJson(responseData));

          if (updateSongTimeModel.value.status == false) {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  //playlist
  var addToPlaylistModel = AddToPlaylistModel().obs;
  Future<void> addToPlaylist({required String songId}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.addToPlaylist;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "cus_id": cusId,
        "song_id": songId
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          addToPlaylistModel(AddToPlaylistModel.fromJson(responseData));

          if (addToPlaylistModel.value.status == true) {
            Fluttertoast.showToast(
                msg: "${addToPlaylistModel.value.msg}",
                backgroundColor: Colors.green);
            if (kDebugMode) {
              print("Success to fetch");
            }
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          addToPlaylistModel(AddToPlaylistModel.fromJson(responseData));

          if (addToPlaylistModel.value.status == false) {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  //remove playlist
  var removePlaylistModel = RemovePlaylistModel().obs;
  Future<void> removePlaylist({required String songId}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.removePlaylist;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "cus_id": cusId,
        "song_id": songId
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          removePlaylistModel(RemovePlaylistModel.fromJson(responseData));

          if (removePlaylistModel.value.status == true) {
            Fluttertoast.showToast(
                msg: "${removePlaylistModel.value.msg}",
                backgroundColor: Colors.green);
            if (kDebugMode) {
              print("Success to fetch");
            }
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          removePlaylistModel(RemovePlaylistModel.fromJson(responseData));

          if (removePlaylistModel.value.status == false) {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }

  var checkPlaylistModel = CheckPlaylistModel().obs;
  Future<void> checkPlayList({required String songId}) async {
    {
      final baseController = BaseController();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.playlistCheck;
      const apiToken = ApiEndPoints.apiToken;
      final cusId = await CacheHelper.getData('userId');
      var requestData = {
        "api_key": apiToken,
        "cus_id": cusId,
        "song_id": songId
      };

      try {
        final baseClient = BaseClient();
        var response = await baseClient
            .postMethod(apiUrl, requestData)
            .catchError(baseController.handleError);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);
          checkPlaylistModel(CheckPlaylistModel.fromJson(responseData));

          if (checkPlaylistModel.value.status == true) {
            Fluttertoast.showToast(
                msg: "${checkPlaylistModel.value.msg}",
                backgroundColor: Colors.green);
            if (kDebugMode) {
              print("Success to fetch");
            }
          } else {
            throw Exception('Status is not true');
          }
        } else if (response.statusCode == 400) {
          final responseData = json.decode(response.body);
          checkPlaylistModel(CheckPlaylistModel.fromJson(responseData));

          if (checkPlaylistModel.value.status == false) {
            if (kDebugMode) {
              print("Failed to fetch");
            }
          } else {
            throw Exception('Status is not false');
          }
        } else {
          throw Exception('Failed to fetch category data');
        }
      } catch (error) {
        if (kDebugMode) {
          print("error: $error");
        }
      } finally {
        isLoading(false);
      }
    }
  }
}
