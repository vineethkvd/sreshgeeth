import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../playlist/view/see_more.dart';
import '../controller/library_controller.dart';

class MusicTab extends StatefulWidget {
  @override
  State<MusicTab> createState() => _MusicTabState();
}

class _MusicTabState extends State<MusicTab> {
  final LibraryController _libraryController = Get.put(LibraryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whiteColor,
      padding: const EdgeInsets.all(15),
      child: Obx(() => ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _libraryController.musicLibraryModel.value.artistList
                  ?.isNotEmpty ??
                  false
                  ? buildSingersFollowedList()
                  : buildCircularListShimmerEffect(),
              _libraryController.musicLibraryModel.value.playList
                  ?.isNotEmpty ??
                  false
                  ? buildPlayListItemList()
                  : buildCircularListShimmerEffect(),
              _libraryController.musicLibraryModel.value.songList
                  ?.isNotEmpty ??
                  false
                  ? buildPopularSongList()
                  : buildVerticalListShimmerEffect(),
              _libraryController.musicLibraryModel.value.downloadList
                  ?.isNotEmpty ??
                  false
                  ? buildDownloadedSongList()
                  : buildCircularListShimmerEffect(),
            ],
          ),
        ],
      ),)
    );
  }
  Widget buildCircularListShimmerEffect() {
    return SizedBox(
      height: 100, // Provide a height constraint
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          );
        },
      ),
    );
  }
  Widget buildPlayListItemList() {
    final trending = _libraryController.musicLibraryModel.value.playList;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "PlayList",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(const PlayListSeeMorePage(),
                      transition: Transition.cupertino);
                },
                child: Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.orangeColor,
                    fontFamily: "poppinsSemiBold",
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trending?.length ?? 0,
              itemBuilder: (context, index) {
                final currentSong = trending?[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: currentSong?.cover ?? '',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) =>
                              Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  color: Colors.white,
                                ),
                              ),
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              width: 80,
                              height: 80,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80, // Specify the width to avoid text overflow
                          child: Text(
                            currentSong?.songTitle ?? '',
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
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget buildSingersFollowedList() {
    final trending = _libraryController.musicLibraryModel.value.artistList;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Singers Followed",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Get.to(const PlayListSeeMorePage(),
                  //     transition: Transition.cupertino);
                },
                child: Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.orangeColor,
                    fontFamily: "poppinsSemiBold",
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trending?.length ?? 0,
              itemBuilder: (context, index) {
                final currentSong = trending?[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: currentSong?.artistCover ?? '',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) =>
                              Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  color: Colors.white,
                                ),
                              ),
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              width: 80,
                              height: 80,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80, // Specify the width to avoid text overflow
                          child: Text(
                            currentSong?.artistName ?? '',
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
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget buildDownloadedSongList() {
    final trending = _libraryController.musicLibraryModel.value.downloadList;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Downloaded Song",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Get.to(const PlayListSeeMorePage(),
                  //     transition: Transition.cupertino);
                },
                child: Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.orangeColor,
                    fontFamily: "poppinsSemiBold",
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trending?.length ?? 0,
              itemBuilder: (context, index) {
                final currentSong = trending?[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: currentSong?.cover ?? '',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) =>
                              Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  color: Colors.white,
                                ),
                              ),
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              width: 80,
                              height: 80,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80, // Specify the width to avoid text overflow
                          child: Text(
                            currentSong?.songTitle ?? '',
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
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget buildVerticalListShimmerEffect() {
    return SizedBox(
      height: 300, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.vertical, // Scroll vertically
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.black, Colors.teal.withOpacity(0.2)],
                ),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 80,
                        height: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPopularSongList() {
    final popularSongs = _libraryController.musicLibraryModel.value.songList;

    return SizedBox(
      height: 250, // Adjust the height as needed
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Song Liked",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Get.to(PopularListSeeMorePage(),
                  //     transition: Transition.cupertino);
                },
                child: Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.orangeColor,
                    fontFamily: "poppinsSemiBold",
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical, // Scroll vertically
              itemCount: popularSongs?.length ?? 0,
              itemBuilder: (context, index) {
                final currentSong = popularSongs?[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.black, Colors.teal.withOpacity(0.2)],
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: currentSong?.cover ?? '',
                            width: 80,
                            height: 50,
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) =>
                                Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.white,
                                  ),
                                ),
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                width: 80,
                                height: 80,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            currentSong?.songTitle ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "poppinsRegular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}