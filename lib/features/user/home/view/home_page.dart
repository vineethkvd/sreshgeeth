import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sreshgeeth/features/user/popular/view/see_more.dart';
import 'package:sreshgeeth/features/user/slider/view/widget/add_slider_widget.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../album/view/see_more.dart';
import '../../dashboard/controller/dashboard_controller.dart';
import '../../geners/view/see_more.dart';
import '../../gospel/view/see_more.dart';
import '../../music_player/view/music_player_page.dart';
import '../../playlist/view/see_more.dart';
import '../../slider/view/widget/slider_widget.dart';
import '../../top_artist/view/see_more.dart';
import '../../trending/view/see_more.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DashboardController _dashboardController =
      Get.put(DashboardController());

  @override
  void initState() {
    _dashboardController.fetchDashBoardData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: Obx(
            () => Container(
              color: AppColor.whiteColor,
              height: Get.height,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(8),
                      children: [
                        SizedBox(
                            height: 180,
                            width: Get.width,
                            child: SliderWidget()),
                        _dashboardController
                                    .dashboardModel.value.album?.isNotEmpty ??
                                false
                            ? buildAlbumList()
                            : buildCircularListShimmerEffect(),
                        _dashboardController.dashboardModel.value.trendingSong
                                    ?.isNotEmpty ??
                                false
                            ? buildTrendingList()
                            : buildCircularListShimmerEffect(),
                        SizedBox(
                            height: 180,
                            width: Get.width,
                            child: AdsSliderWidget()),
                        _dashboardController
                                    .dashboardModel.value.artist?.isNotEmpty ??
                                false
                            ? buildGospelSingerList()
                            : buildCircularListShimmerEffect(),
                        _dashboardController
                                    .dashboardModel.value.gener?.isNotEmpty ??
                                false
                            ? buildGenersList()
                            : buildCircularListShimmerEffect(),
                        _dashboardController.dashboardModel.value.playList
                                    ?.isNotEmpty ??
                                false
                            ? buildPlayListItemList()
                            : buildCircularListShimmerEffect(),
                        _dashboardController.dashboardModel.value.popularSong
                                    ?.isNotEmpty ??
                                false
                            ? buildPopularSongList()
                            : buildVerticalListShimmerEffect(),
                        _dashboardController.dashboardModel.value.topArtist
                                    ?.isNotEmpty ??
                                false
                            ? buildTopIndianArtistList()
                            : buildCircularListShimmerEffect(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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

  Widget buildAlbumList() {
    final album = _dashboardController.dashboardModel.value.album;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "New Album",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(const AlbumSeeMorePage(),
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
              itemCount: album?.length ?? 0,
              itemBuilder: (context, index) {
                final currentAlbum = album?[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                          MusicPlayerPage(
                            id: album?[index]
                                .albumId
                                .toString() ??
                                "",
                            types: "album",
                            songId: '',
                            songTitle: album?[index].albumTitle
                                .toString() ??
                                '',
                            curIndex: index,
                          ),
                          transition:
                          Transition.cupertino);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: currentAlbum?.cover ?? '',
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
                              currentAlbum?.albumTitle ?? '',
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTopIndianArtistList() {
    final album = _dashboardController.dashboardModel.value.topArtist;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Top Indian Artist",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(const TopArtistSeeMorePage(),
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
              itemCount: album?.length ?? 0,
              itemBuilder: (context, index) {
                final currentAlbum = album?[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: currentAlbum?.cover ?? '',
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
                            currentAlbum?.rjArtistName ?? '',
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

  Widget buildTrendingList() {
    final trending = _dashboardController.dashboardModel.value.trendingSong;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Trending Songs",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(const TrendingSeeMorePage(),
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
                  child: InkWell(
                    onTap: () {
                      Get.to(MusicPlayerPage(
                          id: trending?[index].toString() ?? "",
                          types: "trending",
                          songId: trending?[index].songId ?? '',
                          songTitle: trending?[index].songTitle ?? "",
                          curIndex: index));
                    },
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
                            width:
                                80, // Specify the width to avoid text overflow
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGospelSingerList() {
    final trending = _dashboardController.dashboardModel.value.artist;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Gospel Singers",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(const GospelSeeMorePage(),
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
                            currentSong?.rjArtistName ?? '',
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

  Widget buildGenersList() {
    final trending = _dashboardController.dashboardModel.value.gener;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Genres",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(const GenerSeeMorePage(),
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
                            currentSong?.rjGenersName ?? '',
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

  Widget buildPlayListItemList() {
    final trending = _dashboardController.dashboardModel.value.playList;

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
    final popularSongs = _dashboardController.dashboardModel.value.popularSong;

    return SizedBox(
      height: 250, // Adjust the height as needed
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Popular Songs",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(PopularListSeeMorePage(),
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
