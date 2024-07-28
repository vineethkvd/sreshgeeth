import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../dashboard/controller/dashboard_controller.dart';

class ArtistSongPage extends StatefulWidget {
  const ArtistSongPage({super.key});

  @override
  State<ArtistSongPage> createState() => _ArtistSongPageState();
}

class _ArtistSongPageState extends State<ArtistSongPage> {
  final ArtistDashBoardController artistDashBoardController = Get.put(ArtistDashBoardController());

  @override
  void initState() {
    super.initState();
    artistDashBoardController.fetchDashboardData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.primaryColor,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Song",
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
                  child: artistDashBoardController.dashBoardModel.value.songList?.isNotEmpty ?? false
                      ? buildUpcomingList()
                      : buildSquareListShimmerEffect(),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }

  Widget buildSquareListShimmerEffect() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 100.h,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
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
    final newCourses = artistDashBoardController.dashBoardModel.value.songList;

    if (newCourses == null || newCourses.isEmpty) {
      return Center(
        child: Text(
          "No songs available",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Song List",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.blackTextColor,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
            ),
            Spacer(),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: newCourses.length,
            itemBuilder: (context, index) {
              final course = newCourses[index];
              return InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: course.cover ?? '',
                          height: 100.h,
                          width: 100.w,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              height: 100.h,
                              width: 100.w,
                              color: Colors.white,
                            ),
                          ),
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              height: 100.h,
                              width: 100.w,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                course.rjSongTitle ?? '',
                                style: TextStyle(
                                  fontFamily: "poppinsSemiBold",
                                  fontSize: 14.sp,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                course.addDate ?? '',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontFamily: "poppinsRegular",
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
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
    );
  }
}
