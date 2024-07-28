import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../podcast/controller/podcast_controller.dart';
import '../../podcast/view/join_podcast.dart';
import '../../podcast/view/widget/podcast_slider.dart';
import '../../profile/controller/profile_controller.dart';
import '../controller/library_controller.dart';

class PodcastTab extends StatefulWidget {
  final String userName;
  final String userId;
  const PodcastTab({super.key, required this.userName, required this.userId});
  @override
  State<PodcastTab> createState() => _PodcastTabState();
}

class _PodcastTabState extends State<PodcastTab> {
  final UserPodcastController _userPodcastController =
      Get.put(UserPodcastController());
  final ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    _userPodcastController
                                .userPodcastModel.value.banner?.isNotEmpty ??
                            false
                        ? SizedBox(
                            height: 180,
                            child: PodcastSliderWidget(),
                          )
                        : SizedBox.shrink(),
                    _userPodcastController.userPodcastModel.value.upcomingList
                                ?.isNotEmpty ??
                            false
                        ? buildUpcomingList()
                        : buildSquareListShimmerEffect(),
                    _userPodcastController.userPodcastModel.value.recentPodcast
                                ?.isNotEmpty ??
                            false
                        ? buildRecentList()
                        : buildSquareListShimmerEffect(),
                  ],
                ),
              )
            ],
          )),
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
                          userName: widget.userName,
                          userId: widget.userId,
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
