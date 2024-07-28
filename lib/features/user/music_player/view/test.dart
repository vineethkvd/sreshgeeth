import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:sreshgeeth/features/user/profile/controller/profile_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/music_pllayer_controller.dart';


class TestMusicPlayerPage extends StatefulWidget {
  final String id;
  final String types;
  final songId;
  final String songTitle;
  final curIndex;
  final genersName;

  const TestMusicPlayerPage(
      {Key? key,
        this.id = '',
        this.types = '',
        this.songId = 0,
        this.songTitle = '',
        this.curIndex = 0,
        this.genersName = ''})
      : super(key: key);

  @override
  State<TestMusicPlayerPage> createState() => _TestMusicPlayerPageState();
}

class _TestMusicPlayerPageState extends State<TestMusicPlayerPage> {
  final MusicPlayerController musicPlayerController =
  Get.put(MusicPlayerController());
  final ProfileController userProfileController =
  Get.put(ProfileController());

  @override
  void initState() {
    super.initState();
    userProfileController.fetchUserInfo();
    musicPlayerController.checkPlayList(songId: widget.songId.toString());
    musicPlayerController.checkSongCount(songId: widget.songId.toString());
    musicPlayerController.songLikeCount(songId: widget.songId.toString());
    musicPlayerController
        .fetchAlbumDetail(
      albumId: widget.id,
      type: widget.types,
      songId: widget.songId.toString(),
      genersName: widget.genersName,
    )
        .then((_) {
      if (musicPlayerController.suggestionList.isNotEmpty) {
        musicPlayerController.showMiniPlayer.value = true;
        musicPlayerController.audioPlayer
            .setAudioSource(
          ConcatenatingAudioSource(
            children: musicPlayerController.suggestionList,
          ),
          initialIndex: widget.curIndex,
        )
            .then((_) {
          final currentIndex = musicPlayerController.audioPlayer.currentIndex;
          final audioSource =
          musicPlayerController.suggestionList[currentIndex!];
          final currentSong = (audioSource as UriAudioSource).tag as MediaItem;
          musicPlayerController.currentTitle.value = currentSong.title;
          musicPlayerController.currentArtistName.value =
              currentSong.artist ?? '';
          musicPlayerController.imgUrl.value = currentSong.artUri.toString();
        });
        musicPlayerController.audioPlayer.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _showMenu(context);
              },
              icon: const Icon(
                Icons.more_vert_sharp,
                size: 25,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios,
                size: 25, color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          _backgroundImage(),
          _backgroundOverlay(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    _albumArt(),
                    _songInfo(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.play_arrow,
                                size: 20,
                                color: Colors.white,
                              ),
                              Obx(() => Text(
                                "${musicPlayerController.songCountModel.value.songViewCount}",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                    fontFamily: "poppinsRegular"),
                              ))
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Obx(() => IconButton(
                                onPressed: () async {},
                                icon: musicPlayerController.addToPlaylistModel.value.status==true
                                    ? const Icon(
                                  Icons.playlist_add_check,
                                  size: 25,
                                  color: Colors.white,
                                )
                                    : const Icon(
                                  Icons.playlist_add,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              )),
                              IconButton(
                                onPressed: () {
                                  final currentIndex = musicPlayerController
                                      .audioPlayer.currentIndex;
                                  if (currentIndex != null) {
                                    final audioSource = musicPlayerController
                                        .suggestionList[currentIndex];
                                    final mediaItem =
                                    (audioSource as UriAudioSource).tag
                                    as MediaItem;

                                  }
                                },
                                icon: const Icon(
                                  Icons.share,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (userProfileController.profileModel.value.activePlan!.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg:
                                        'Unable to download song! no active plan');
                                  } else {
                                    final currentIndex = musicPlayerController
                                        .audioPlayer.currentIndex;
                                    if (currentIndex != null) {
                                      final audioSource = musicPlayerController
                                          .suggestionList[currentIndex];
                                      final mediaItem =
                                      (audioSource as UriAudioSource).tag
                                      as MediaItem;
                                      final songUrl = audioSource.uri
                                          .toString(); // Get the song URL
                                      musicPlayerController.downloadSong(
                                          url: songUrl,
                                          fileName: mediaItem.title.toString(),
                                          songID: mediaItem.id);
                                    }
                                  }
                                },
                                icon: const Icon(
                                  Icons.download,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Obx(() => Row(
                                children: [
                                  IconButton(
                                    onPressed: () async {},
                                    icon:  const Icon(
                                      CupertinoIcons.heart,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    musicPlayerController
                                        .likeCountModel.value.songLikeCount
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontFamily: "poppinsRegular",
                                    ),
                                  )
                                ],
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                    _progressBar(),
                    _playbackControls(),
                  ],
                ),
              )
            ],
          ),
          _buildDraggableSheet(),
        ],
      ),
    );
  }

  Widget _backgroundImage() {
    return Obx(() => CachedNetworkImage(
      imageUrl: musicPlayerController.imgUrl.value,
      fit: BoxFit.cover,
      width: Get.width,
      height: Get.height,
      placeholder: (context, url) =>
      const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Image.asset(
        fit: BoxFit.contain,
        "assets/loading.gif",
        height: 80.h,
      ),
    ));
  }

  Widget _backgroundOverlay() {
    return Container(
      color: Colors.black.withOpacity(0.6),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _albumArt() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Obx(() {
        return musicPlayerController.imgUrl.isNotEmpty
            ? ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CachedNetworkImage(
            imageUrl: musicPlayerController.imgUrl.value,
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
        )
            : Container(
          width: 300,
          height: 300,
          color: Colors.grey,
        );
      }),
    );
  }

  Widget _songInfo() {
    return Obx(() {
      return Column(
        children: [
          Text(
            musicPlayerController.currentTitle.value,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.white,
              fontFamily: "poppinsBold",
            ),
          ),
          Text(
            musicPlayerController.currentArtistName.value,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.white,
              fontFamily: "poppinsRegular",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            musicPlayerController.chkDuration.value.toString(),
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.transparent,
              fontFamily: "poppinsRegular",
            ),
          ),
          Text(
            musicPlayerController.chkPosition.value.toString(),
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.transparent,
              fontFamily: "poppinsBold",
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      );
    });
  }

  Widget _loading() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          "assets/loading.gif",
          height: 80.h,
        ),
      ),
    );
  }

  Widget _progressBar() {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              formatDuration(musicPlayerController.position.value),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
                fontFamily: "poppinsRegular",
              ),
            ),
            Expanded(
              child: Slider(
                value:
                musicPlayerController.position.value.inSeconds.toDouble(),
                max: musicPlayerController.duration.value.inSeconds.toDouble(),
                inactiveColor: Colors.grey,
                activeColor: Colors.white,
                onChanged: (value) {
                  musicPlayerController.audioPlayer
                      .seek(Duration(seconds: value.toInt()));
                },
              ),
            ),
            Text(
              formatDuration(musicPlayerController.duration.value),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
                fontFamily: "poppinsRegular",
              ),
            ),
          ],
        ),
      );
    });
  }



  Widget _playbackControls() {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.shuffle,
              color: musicPlayerController.isShuffle.value
                  ? Colors.green
                  : Colors.white,
              size: 25,
            ),
            onPressed: () => musicPlayerController.toggleShuffle(),
          ),
          IconButton(
            icon: Icon(Icons.skip_previous, size: 40, color: Colors.white),
            onPressed: () {
              musicPlayerController.audioPlayer.seekToPrevious();
              final currentIndex =
                  musicPlayerController.audioPlayer.currentIndex;
              musicPlayerController.isChkCount.value == false;
              final audioSource =
              musicPlayerController.suggestionList[currentIndex! - 1];
              final mediaItem =
              (audioSource as UriAudioSource).tag as MediaItem;
              musicPlayerController.checkSongCount(
                  songId: mediaItem.id.toString());
              musicPlayerController.checkPlayList(
                  songId: mediaItem.id.toString());
              musicPlayerController.songLikeCount(
                  songId: mediaItem.id.toString());
            },
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.r,
              child: Icon(
                musicPlayerController.isPlaying.value
                    ? Icons.pause
                    : Icons.play_arrow,
                size: 40,
                color: Colors.black54,
              ),
            ),
            onPressed: () {
              if (musicPlayerController.isPlaying.value) {
                musicPlayerController.audioPlayer.pause();
              } else {
                musicPlayerController.audioPlayer.play();
              }
              // Toggle the isPlaying state
              musicPlayerController.isPlaying.value =
              !musicPlayerController.isPlaying.value;
            },
          ),
          IconButton(
            icon: const Icon(Icons.skip_next, size: 40, color: Colors.white),
            onPressed: () {
              musicPlayerController.audioPlayer.seekToNext();
              musicPlayerController.isChkCount.value == false;
              final currentIndex =
                  musicPlayerController.audioPlayer.currentIndex;
              final audioSource =
              musicPlayerController.suggestionList[currentIndex! + 1];
              final mediaItem =
              (audioSource as UriAudioSource).tag as MediaItem;
              musicPlayerController.checkSongCount(
                  songId: mediaItem.id.toString());
              musicPlayerController.checkPlayList(
                  songId: mediaItem.id.toString());
              musicPlayerController.songLikeCount(
                  songId: mediaItem.id.toString());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.repeat,
              color: musicPlayerController.isLoop.value
                  ? Colors.green
                  : Colors.white,
              size: 25,
            ),
            onPressed: () => musicPlayerController.loopAudio(),
          ),
        ],
      );
    });
  }

  Future<void> _showMenu(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        final currentIndex = musicPlayerController.audioPlayer.currentIndex;
        final audioSource = musicPlayerController.suggestionList[currentIndex!];
        final mediaItem = (audioSource as UriAudioSource).tag as MediaItem;
        return SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(top: 20.w),
              // height: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    height: 120.sp,
                    width: 120.sp,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.network(
                        mediaItem.artUri.toString(),
                        fit: BoxFit
                            .cover, // Adjusts the image to cover the entire box
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  Text(
                    '${mediaItem.title}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppinsRegular",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    textAlign:
                    TextAlign.center, // Center-align the text
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Text(
                    '${mediaItem.title}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppinsRegular",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    textAlign:
                    TextAlign.center, // Center-align the text
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0.w),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async {},
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.heart,
                                size: 20,
                                color: const Color(0xffe50829),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Like',
                                style: TextStyle( fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                        InkWell(
                          onTap: () async {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.playlist_add_sharp,
                                size: 20,
                                color: const Color(0xffe50829),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Add to Playlist',
                                style: TextStyle( fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.library_music,
                                size: 20,
                                color: Color(0xffe50829),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'View Album',
                                style: TextStyle( fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                        InkWell(
                          onTap: () async {
                            // await musiccon
                            //     .download12(
                            //     widget
                            //         .songid);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.download,
                                size: 20,
                                color: const Color(0xffe50829),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),

                              Text(
                                'Download',
                                style: TextStyle( fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                        InkWell(
                          onTap: () async {
                            final currentIndex =
                                musicPlayerController.audioPlayer.currentIndex;
                            final audioSource = musicPlayerController
                                .suggestionList[currentIndex!];
                            final mediaItem = (audioSource as UriAudioSource)
                                .tag as MediaItem;
                            String? encodeQueryParameters(
                                Map<String, String> params) {
                              return params.entries
                                  .map((MapEntry<String, String> e) =>
                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                  .join('&');
                            }

                            final Uri emailUri = Uri(
                              scheme: 'mailto',
                              path: 'report@sreshthgeeth.com',
                              query: encodeQueryParameters({
                                "subject":
                                "Reports regarding..Artist ${mediaItem.artist ?? ""} ",
                                "body": "Hi "
                              }),
                            );
                            if (await canLaunchUrl(emailUri)) {
                              launchUrl(emailUri);
                            } else {
                              throw Exception("could not lauch $emailUri");
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.library_books,
                                size: 20,
                                color: const Color(0xffe50829),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Report',
                                style: TextStyle( fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                        InkWell(
                          onTap: () {
                            final currentIndex =
                                musicPlayerController.audioPlayer.currentIndex;
                            if (currentIndex != null) {
                              final audioSource = musicPlayerController
                                  .suggestionList[currentIndex];
                              final mediaItem = (audioSource as UriAudioSource)
                                  .tag as MediaItem;


                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                size: 20,
                                color: const Color(0xffe50829),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Share',
                                style: TextStyle(     fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,),

                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
        ;
      },
    );
  }

  Widget _buildDraggableSheet() {
    return DraggableScrollableSheet(
      minChildSize: 0.05,
      initialChildSize: 0.05,
      maxChildSize: 0.9,
      expand: true,
      builder: (BuildContext context, ScrollController scrollController) {
        return Obx(() => ClipRRect(
          borderRadius:
          const BorderRadius.vertical(top: Radius.circular(24)),
          child: Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            child: musicPlayerController.suggestionList.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
              controller: scrollController,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 10.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius:
                            BorderRadius.circular(10.r)),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Suggestion List',
                      style: TextStyle( fontSize: 20.sp,
                          color: Colors.black,
                          fontFamily: "poppinsBold"),),
                  ),
                  musicPlayerController
                      .albumModel.value.album!.isNotEmpty
                      ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius:
                          BorderRadius.circular(5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                              BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black26,
                                style: BorderStyle.solid,
                              ),
                            ),
                            height: 150,
                            width: 150,
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                imageUrl:
                                '${musicPlayerController.albumModel.value.album!.first.cover!}',
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                const CupertinoActivityIndicator(),
                                errorWidget:
                                    (context, url, error) =>
                                    Icon(
                                      CupertinoIcons.person,
                                      size: 45.sp,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          musicPlayerController
                              .albumModel
                              .value
                              .album!
                              .first
                              .ablumTitle!,
                          style: TextStyle(fontSize: 16.sp,
                              color: Colors.black,
                              fontFamily: "poppinsSemiBold"),),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          musicPlayerController.albumModel.value
                              .album!.first.artistName!,
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey,
                              fontFamily: "poppinsSemiBold"),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    ),
                  )
                      : SizedBox(),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Songs',
                        style: TextStyle( fontSize: 16.sp,
                            color: Colors.black,
                            fontFamily: "poppinsSemiBold"),),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    dragStartBehavior: DragStartBehavior.start,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount:
                    musicPlayerController.suggestionList.length,
                    itemBuilder: (context, index) {
                      final audioSource =
                      musicPlayerController.suggestionList[index];
                      final mediaItem =
                      (audioSource as UriAudioSource).tag
                      as MediaItem;
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.blue.withOpacity(0.5)
                              ],
                            ),
                            // color: const Color(0xffcedfaa),
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  mediaItem.artUri.toString()),
                            ),
                            title: Text(
                              mediaItem.title,
                              style: TextStyle(fontSize: 14.sp,
                                  color: Colors.white,
                                  fontFamily: "poppinsRegular"),),
                            subtitle: Text(
                              mediaItem.artist.toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                            onTap: () {
                              musicPlayerController.currentTitle
                                  .value = mediaItem.title;
                              musicPlayerController.imgUrl.value =
                                  mediaItem.artUri.toString();
                              musicPlayerController.audioPlayer
                                  .setAudioSource(
                                ConcatenatingAudioSource(
                                  children: musicPlayerController
                                      .suggestionList,
                                ),
                                initialIndex: index,
                              );
                              musicPlayerController
                                  .isChkCount.value ==
                                  false;
                              musicPlayerController.checkSongCount(
                                  songId: mediaItem.id.toString());
                              musicPlayerController.audioPlayer
                                  .play();
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
        ));
      },
    );
  }

  @override
  void dispose() {
    musicPlayerController.isChkCount.value = false;
    super.dispose();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
