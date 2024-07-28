import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../controller/podcast_controller.dart';

class CompletedPodcastPage extends StatefulWidget {
  const CompletedPodcastPage({super.key});

  @override
  State<CompletedPodcastPage> createState() => _CompletedPodcastPageState();
}

class _CompletedPodcastPageState extends State<CompletedPodcastPage> {
  final ArtistPodcastController _artistPodcastController = Get.put(ArtistPodcastController());

  @override
  void initState() {
    super.initState();
    _artistPodcastController.fetchPodcastList();
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
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, size: 25, color: Colors.white),
            ),
            title: Text(
              "Completed Podcast",
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColor.whiteColor,
                fontFamily: "poppinsSemiBold",
              ),
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
                  child: _artistPodcastController.podcastListModel.value.podcastList?.isNotEmpty ?? false
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
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 1, // Aspect ratio of each grid item
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
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
    final newCourses = _artistPodcastController.podcastListModel.value.podcastList?.first.podcastList;

    if (newCourses == null || newCourses.isEmpty) {
      return Center(
        child: Text(
          "No completed podcast available",
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
                "Completed Podcast",
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
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.98, // Adjust as needed
            ),
            itemCount: newCourses.length,
            itemBuilder: (context, index) {
              final course = newCourses[index];
              return InkWell(
                onTap: () {},
                child: Container(
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
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: course.cover.toString() ?? '',
                          height: 100.h,
                          width: double.infinity,
                          fit: BoxFit.fill,
                          errorWidget: (context, url, error) => Shimmer.fromColors(
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
                          course.podcastTitle ?? '',
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
                          course.liveTime ?? '',
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
    );
  }
}
