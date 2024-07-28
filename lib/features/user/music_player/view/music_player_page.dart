import 'package:audio_service/audio_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sreshgeeth/features/user/navbar/view/navbar_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/shared/constants/assets_pathes.dart';
import '../../profile/controller/profile_controller.dart';
import '../controller/music_pllayer_controller.dart';

class MusicPlayerPage extends StatefulWidget {
  final String id;
  final String types;
  final songId;
  final String songTitle;
  final curIndex;
  final genersName;

  const MusicPlayerPage(
      {Key? key,
      this.id = '',
      this.types = '',
      this.songId = 0,
      this.songTitle = '',
      this.curIndex = 0,
      this.genersName = ''})
      : super(key: key);

  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  final MusicPlayerController _musicPlayerController =
      Get.put(MusicPlayerController());
  final ProfileController _profileController = Get.put(ProfileController());

  @override
  void initState() {
    super.initState();
    _profileController.fetchUserInfo();
    _fetchAlbumDetails();
  }

  Future<void> _fetchAlbumDetails() async {
    await _musicPlayerController.fetchAlbumDetail(
      albumId: widget.id,
      type: widget.types,
      songId: widget.songId.toString(),
      genersName: widget.genersName,
    ).then((_) {
      _musicPlayerController.showMiniPlayer.value=true;
      _musicPlayerController.audioPlayer
          .setAudioSource(
        ConcatenatingAudioSource(
          children: _musicPlayerController
              .suggestionList,
        ),
        initialIndex: widget.curIndex,
      );
      final currentIndex = _musicPlayerController.audioPlayer.currentIndex;
      final audioSource = _musicPlayerController.suggestionList[currentIndex!];
      final mediaItem = (audioSource as UriAudioSource).tag as MediaItem;
      _musicPlayerController.currentTitle
          .value = mediaItem.title;
      _musicPlayerController.imgUrl.value =
          mediaItem.artUri.toString();

      _musicPlayerController.checkSongCount(
          songId: mediaItem.id.toString());
      _musicPlayerController.audioPlayer
          .play();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                _backgroundImage(),
                _backgroundOverlay(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _headerIcons(),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(child: _albumArt()),
                            _songInfo(),
                            SizedBox(height: 20),
                            songInfoController(),
                            SizedBox(
                              height: 20,
                            ),
                            sliderWidget(),
                            SizedBox(
                              height: 15,
                            ),
                            _playbackControls()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                _buildDraggableSheet(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Obx(() => CachedNetworkImage(
          imageUrl: _musicPlayerController.imgUrl.value,
          fit: BoxFit.cover,
          width: Get.width,
          height: Get.height,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Image.asset(
            fit: BoxFit.contain,
            AssetsPathes.loadingGif,
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
        return _musicPlayerController.imgUrl.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(
                  imageUrl: _musicPlayerController.imgUrl.value,
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
            _musicPlayerController.currentTitle.value,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.white,
              fontFamily: "poppinsBold",
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _musicPlayerController.currentArtistName.value,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.white,
              fontFamily: "poppinsRegular",
            ),
          ),
        ],
      );
    });
  }

  Widget _headerIcons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.to(const NavBar(),transition: Transition.upToDown);
          },
          child: SvgPicture.asset(
            AssetsPathes.downLogo,
            height: 30,
            width: 25,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: () {
            _showMenu(context);
          },
          child: SvgPicture.asset(
            AssetsPathes.moreLogo,
            height: 30,
            width: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget songInfoController() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(CupertinoIcons.play, size: 25, color: Colors.white),
            SizedBox(width: 5),
            Text(
              "11",
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
                fontFamily: "poppinsRegular",
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _actionIcon(Icons.playlist_add, () {
              // Handle playlist_add icon tap
            }),
            SizedBox(width: 20),
            _actionIcon(Icons.share_outlined, () {
              // Handle share_outlined icon tap
            }),
            SizedBox(width: 20),
            _actionIcon(Icons.download, () {
              // Handle download icon tap
            }),
            SizedBox(width: 20),
            _actionIcon(CupertinoIcons.heart, () {
              // Handle heart icon tap
            }),
          ],
        ),
      ],
    );
  }

  Widget _actionIcon(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Icon(icon, size: 25, color: Colors.white),
    );
  }

  Widget sliderWidget() {
    return Obx(() => Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              formatDuration(_musicPlayerController.position.value),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
                fontFamily: "poppinsRegular",
              ),
            ),
            Expanded(
              child: Slider(
                value:
                    _musicPlayerController.position.value.inSeconds.toDouble(),
                max: _musicPlayerController.duration.value.inSeconds.toDouble(),
                inactiveColor: Colors.grey,
                activeColor: Colors.white,
                onChanged: (value) {
                  _musicPlayerController.audioPlayer
                      .seek(Duration(seconds: value.toInt()));
                },
              ),
            ),
            Text(
              formatDuration(_musicPlayerController.duration.value),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
                fontFamily: "poppinsRegular",
              ),
            ),
          ],
        ));
  }

  Widget _playbackControls() {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.shuffle,
              color: _musicPlayerController.isShuffle.value
                  ? Colors.green
                  : Colors.white,
              size: 25,
            ),
            onPressed: () => _musicPlayerController.toggleShuffle(),
          ),
          IconButton(
            icon: Icon(Icons.skip_previous, size: 40, color: Colors.white),
            onPressed: () {
              AudioService.stop();
              _musicPlayerController.audioPlayer.seekToPrevious();
              final currentIndex =
                  _musicPlayerController.audioPlayer.currentIndex;
              _musicPlayerController.isChkCount.value == false;
              final audioSource =
                  _musicPlayerController.suggestionList[currentIndex! - 1];
              final mediaItem =
                  (audioSource as UriAudioSource).tag as MediaItem;
              _musicPlayerController.checkSongCount(
                  songId: mediaItem.id.toString());
              _musicPlayerController.checkPlayList(
                  songId: mediaItem.id.toString());
              _musicPlayerController.songLikeCount(
                  songId: mediaItem.id.toString());
            },
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.r,
              child: Icon(
                _musicPlayerController.isPlaying.value
                    ? Icons.pause
                    : Icons.play_arrow,
                size: 40,
                color: Colors.black54,
              ),
            ),
            onPressed: () {
              if (_musicPlayerController.isPlaying.value) {
                _musicPlayerController.audioPlayer.pause();
              } else {
                _musicPlayerController.audioPlayer.play();
              }
              // Toggle the isPlaying state
              _musicPlayerController.isPlaying.value =
                  !_musicPlayerController.isPlaying.value;
            },
          ),
          IconButton(
            icon: const Icon(Icons.skip_next, size: 40, color: Colors.white),
            onPressed: () {
              AudioService.stop();
              _musicPlayerController.audioPlayer.seekToNext();
              _musicPlayerController.isChkCount.value == false;
              final currentIndex =
                  _musicPlayerController.audioPlayer.currentIndex;
              final audioSource =
                  _musicPlayerController.suggestionList[currentIndex! + 1];
              final mediaItem =
                  (audioSource as UriAudioSource).tag as MediaItem;
              _musicPlayerController.checkSongCount(
                  songId: mediaItem.id.toString());
              _musicPlayerController.checkPlayList(
                  songId: mediaItem.id.toString());
              _musicPlayerController.songLikeCount(
                  songId: mediaItem.id.toString());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.repeat,
              color: _musicPlayerController.isLoop.value
                  ? Colors.green
                  : Colors.white,
              size: 25,
            ),
            onPressed: () => _musicPlayerController.loopAudio(),
          ),
        ],
      );
    });
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
            child: _musicPlayerController.suggestionList.isEmpty
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
                  _musicPlayerController
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
                                '${_musicPlayerController.albumModel.value.album!.first.cover!}',
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
                          _musicPlayerController
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
                          _musicPlayerController.albumModel.value
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
                    _musicPlayerController.suggestionList.length,
                    itemBuilder: (context, index) {
                      final audioSource =
                      _musicPlayerController.suggestionList[index];
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
                              _musicPlayerController.currentTitle
                                  .value = mediaItem.title;
                              _musicPlayerController.imgUrl.value =
                                  mediaItem.artUri.toString();
                              _musicPlayerController.audioPlayer
                                  .setAudioSource(
                                ConcatenatingAudioSource(
                                  children: _musicPlayerController
                                      .suggestionList,
                                ),
                                initialIndex: index,
                              );
                              _musicPlayerController.checkSongCount(
                                  songId: mediaItem.id.toString());
                              _musicPlayerController.audioPlayer
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
  Future<void> _showMenu(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        final currentIndex = _musicPlayerController.audioPlayer.currentIndex;
        final audioSource = _musicPlayerController.suggestionList[currentIndex!];
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
                      fontFamily: "poppinsSemiBold",
                      fontSize: 14,
                    ),
                    textAlign:
                    TextAlign.center, // Center-align the text
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Text(
                    '${mediaItem.artist}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppinsRegular",
                      fontSize: 11,
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
                                style: TextStyle( fontFamily: "poppinsRegular",
                                  fontSize: 13,),
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
                                style: TextStyle( fontFamily: "poppinsRegular",
                                  fontSize: 13,),
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
                                style: TextStyle( fontFamily: "poppinsRegular",
                                  fontSize: 13,),
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
                                style: TextStyle( fontFamily: "poppinsRegular",
                                  fontSize: 13,),
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
                                _musicPlayerController.audioPlayer.currentIndex;
                            final audioSource = _musicPlayerController
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
                                style: TextStyle( fontFamily: "poppinsRegular",
                                  fontSize: 13,),
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
                                _musicPlayerController.audioPlayer.currentIndex;
                            if (currentIndex != null) {
                              final audioSource = _musicPlayerController
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
                                style: TextStyle( fontFamily: "poppinsRegular",
                                  fontSize: 13,),

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
  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
