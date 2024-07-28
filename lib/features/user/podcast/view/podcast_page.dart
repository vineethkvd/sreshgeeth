import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sreshgeeth/features/user/podcast/view/widget/podcast_slider.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../profile/controller/profile_controller.dart';
import '../controller/podcast_controller.dart';
import 'join_podcast.dart';

class PodcastPage extends StatefulWidget {
  const PodcastPage({super.key});

  @override
  State<PodcastPage> createState() => _PodcastPageState();
}

class _PodcastPageState extends State<PodcastPage> {
  final UserPodcastController _userPodcastController =
      Get.put(UserPodcastController());
  final ProfileController _profileController = Get.put(ProfileController());
  var userName = '';
  var userId =  CacheHelper.getData('userId');
  @override
  void initState() {
    super.initState();
    _profileController.fetchUserInfo().then((_) {
      userName = _profileController
          .profileModel.value.profile?.first.rjCusName ??
          '';
    });
    _profileController.fetchUserInfo();
    _userPodcastController.fetchUserPodcast();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: AppColor.primaryColor,
            centerTitle: true,
            title: Text(
              "Podcast",
              style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColor.whiteColor,
                  fontFamily: "poppinsSemiBold"),
            ),
          ),
          body: Container(
            height: Get.height,
            width: Get.width,
            color: AppColor.whiteColor,
            padding: const EdgeInsets.all(15),
            child: Obx(() => Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          _userPodcastController.userPodcastModel.value.banner
                                      ?.isNotEmpty ??
                                  false
                              ? SizedBox(
                                  height: 180,
                                  child: PodcastSliderWidget(),
                                )
                              : SizedBox.shrink(),
                          _userPodcastController.userPodcastModel.value.follow
                                      ?.isNotEmpty ??
                                  false
                              ? buildFollowList()
                              : buildCircularListShimmerEffect(),
                          _userPodcastController.userPodcastModel.value
                                      .upcomingList?.isNotEmpty ??
                                  false
                              ? buildUpcomingList()
                              : buildSquareListShimmerEffect(),
                          _userPodcastController.userPodcastModel.value
                                      .recentPodcast?.isNotEmpty ??
                                  false
                              ? buildRecentList()
                              : buildSquareListShimmerEffect(),
                        ],
                      ),
                    )
                  ],
                )),
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

  Widget buildSquareListShimmerEffect() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            width: 150.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }

  Widget buildFollowList() {
    final trending = _userPodcastController.userPodcastModel.value.follow;

    return SizedBox(
      height: 200, // Provide a height constraint
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Top Followed",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Navigate to the See More page
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

  Widget buildUpcomingList() {
    final newCourses =
        _userPodcastController.userPodcastModel.value.upcomingList;

    if (newCourses == null || newCourses.isEmpty) {
      return Center(
        child: Text(
          "No upcoming podcast available",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Upcoming Podcast",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Navigate to the See More page
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
              itemCount: _userPodcastController
                      .userPodcastModel.value.upcomingList?.length ??
                  0,
              itemBuilder: (context, index) {
                final course = newCourses[index];
                return InkWell(
                  onTap: () {
                    String? podStatus = _userPodcastController
                        .userPodcastModel.value.upcomingList?[index]
                        .liveStatus;

                    if (podStatus == null) {
                      Fluttertoast.showToast(
                          msg: 'Something went wrong',backgroundColor: Colors.indigo);
                      return;
                    }

                    switch (podStatus) {
                      case "Upcoming":
                        Fluttertoast.showToast(
                            msg:
                            'This podcast is not started yet',backgroundColor: Colors.indigo);
                        break;
                      case "Live":
                        final roomId = _userPodcastController
                            .userPodcastModel.value.upcomingList?[index]
                            .podcastId
                            .toString();
                        Get.to(JoinPodcatUser(
                          roomID: roomId.toString(),
                          userName: userName,
                          userId: userId.toString(),
                        ));
                        break;
                      case "Completed":
                        Fluttertoast.showToast(
                            msg:
                            'This podcast is completed',backgroundColor: Colors.indigo);
                        break;
                      default:
                        Fluttertoast.showToast(
                            msg: 'Something went wrong',backgroundColor: Colors.indigo);
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: course.cover ?? '',
                            height: 100.h,
                            width: double.infinity,
                            fit: BoxFit.fill,
                            errorWidget: (context, url, error) =>
                                Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                height: 100.h,
                                width: double.infinity,
                                color: Colors.white,
                              ),
                            ),
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                height: 100.h,
                                width: double.infinity,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            course.rjPodcastCategoryTitle ?? '',
                            style: TextStyle(
                              fontFamily: "poppinsSemiBold",
                              fontSize: 14.sp,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            course.liveStatus ?? '',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey,
                              fontFamily: "poppinsRegular",
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
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

  Widget buildRecentList() {
    final newCourses =
        _userPodcastController.userPodcastModel.value.recentPodcast;

    if (newCourses == null || newCourses.isEmpty) {
      return Center(
        child: Text(
          "No upcoming podcast available",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Recent Streaming",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Navigate to the See More page
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
              itemCount: _userPodcastController
                      .userPodcastModel.value.upcomingList?.length ??
                  0,
              itemBuilder: (context, index) {
                final course = newCourses[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: course.cover ?? '',
                            height: 100.h,
                            width: double.infinity,
                            fit: BoxFit.fill,
                            errorWidget: (context, url, error) =>
                                Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                height: 100.h,
                                width: double.infinity,
                                color: Colors.white,
                              ),
                            ),
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                height: 100.h,
                                width: double.infinity,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                course.podcastTitle ?? '',
                                style: TextStyle(
                                  fontFamily: "poppinsSemiBold",
                                  fontSize: 14.sp,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
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
