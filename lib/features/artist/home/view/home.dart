import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../dashboard/controller/dashboard_controller.dart';
import '../../profile/controller/profile_controller.dart';


class ArtistHomePage extends StatefulWidget {
  const ArtistHomePage({super.key});

  @override
  State<ArtistHomePage> createState() => _ArtistHomePageState();
}

class _ArtistHomePageState extends State<ArtistHomePage> {
  final ArtistProfileController profileController = ArtistProfileController();
  final ArtistDashBoardController artistDashBoardController = Get.put(ArtistDashBoardController());
  @override
  void initState() {
    super.initState();
    profileController.fetchArtistInfo();
    artistDashBoardController.fetchDashboardData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            color: AppColor.whiteColor,
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Obx(() => Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.sp),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100.sp, // Size of the circular border
                              width: 100.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    50.r), // Circular border
                                border: Border.all(
                                  color: const Color(0xffe50829),
                                  width: 3.sp,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(70.r),
                                child: Container(
                                  height: 90.sp,
                                  width: 90.sp,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(100),
                                    color: Colors.black12,
                                  ),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl:
                                    profileController
                                        .profileModel.value.data?.first.profile.toString() ??
                                        '',
                                    placeholder: (context, url) =>
                                    const CupertinoActivityIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black26,
                                            borderRadius:
                                            BorderRadius.circular(8.r),
                                          ),
                                          child: Icon(CupertinoIcons.person),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: SizedBox(
                                height: 22.sp,
                                width: 22.sp,
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      // backgroundColor: ,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return SizedBox(
                                            height: 100.sp,
                                            width: Get.width.sp,
                                            // color: Colors.black26,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .all(8.0),
                                                      child: Container(
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors
                                                              .blueGrey,
                                                          borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  10)),
                                                          border:
                                                          Border.all(
                                                            width: 1,
                                                            color: Colors
                                                                .black26,
                                                            style:
                                                            BorderStyle
                                                                .solid,
                                                          ),
                                                        ),
                                                        child: IconButton(
                                                            onPressed:
                                                                () async {
                                                              // File?
                                                              // imageFile =
                                                              // await artistProfileController
                                                              //     .pickImage(
                                                              //     ImageSource.camera);
                                                              // if (imageFile !=
                                                              //     null) {
                                                              //   await artistProfileController.cropimage(
                                                              //       source: imageFile!
                                                              //           .path
                                                              //           .toString(),
                                                              //       context:
                                                              //       context);
                                                              // }
                                                            },
                                                            icon: Icon(
                                                              CupertinoIcons
                                                                  .camera,
                                                              size: 30,
                                                              color: Colors
                                                                  .white,
                                                            )),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .all(8.0),
                                                      child: Container(
                                                        decoration:
                                                        BoxDecoration(
                                                          color:
                                                          Colors.brown,
                                                          borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  10)),
                                                          border:
                                                          Border.all(
                                                            width: 1,
                                                            color: Colors
                                                                .black26,
                                                            style:
                                                            BorderStyle
                                                                .solid,
                                                          ),
                                                        ),
                                                        child: IconButton(
                                                            onPressed:
                                                                () async {
                                                              // First, pick the image
                                                              // File?
                                                              // imageFile =
                                                              // await artistProfileController
                                                              //     .pickImage(
                                                              //     ImageSource.gallery);
                                                              //
                                                              // // Check if an image was picked
                                                              // if (imageFile !=
                                                              //     null) {
                                                              //   // Perform the crop operation
                                                              //   await artistProfileController
                                                              //       .cropimage(
                                                              //     source: imageFile
                                                              //         .path
                                                              //         .toString(),
                                                              //     context:
                                                              //     context,
                                                              //   );
                                                              // }
                                                            },
                                                            icon: const Icon(
                                                                CupertinoIcons
                                                                    .photo,
                                                                size: 30,
                                                                color: Colors
                                                                    .white)),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor:
                                    Colors.deepPurpleAccent,
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.sp),
                        child:  Text(
                         artistDashBoardController.dashBoardModel.value.data?[0].artistName.toString() ?? '0',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColor.blackTextColor,
                            fontFamily: "PoppinsSemiBold",
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child:  Text(
                        "${artistDashBoardController.dashBoardModel.value.data?.first.artistPromocode.toString() ?? '0'}",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.blackTextColor,
                          fontFamily: "PoppinsSemiBold",
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.sp),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xfff2f2f2),
                                  borderRadius:
                                  BorderRadius.circular(12.r)),
                              width: 253.sp,
                              height: 64.sp,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 80.sp,
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                           "${artistDashBoardController.dashBoardModel.value.totalEarning.toString() ?? '0'}",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColor.blackTextColor,
                                              fontFamily: "PoppinsMedium",
                                            ),
                                          ),
                                          Text(
                                            'Revenue',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: AppColor.blackTextColor,
                                              fontFamily: "PoppinsMedium",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white24,
                                        border: Border(
                                          right: BorderSide(
                                            //                   <--- left side
                                            color: const Color(0xff4d4d4d),
                                            width: 1.0.sp,
                                          ),
                                          left: BorderSide(
                                            //                   <--- left side
                                            color: const Color(0xff4d4d4d),
                                            width: 1.0.sp,
                                          ),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "${artistDashBoardController.dashBoardModel.value.totalplaytime.toString() ?? '0'}",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.blackTextColor,
                                                fontFamily: "PoppinsMedium",
                                              ),
                                            ),
                                            Text(
                                           'PlayTime',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColor.blackTextColor,
                                                fontFamily: "PoppinsMedium",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80.sp,
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "${artistDashBoardController.dashBoardModel.value.songList?.length.toString() ?? '0'}",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColor.blackTextColor,
                                              fontFamily: "PoppinsMedium",
                                            ),
                                          ),

                                          Text(
                                            'Songs',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: AppColor.blackTextColor,
                                              fontFamily: "PoppinsMedium",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff2096f5),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft:
                                        Radius.circular(12.0.sp),
                                        bottomRight: Radius.circular(12.0
                                            .sp) //                 <--- border radius here
                                    ),
                                    border: Border(
                                      top: BorderSide(
                                        //                   <--- left side
                                        color: Colors.white,
                                        width: 1.0.sp,
                                      ),
                                    )),
                                width: 88.sp,
                                height: 45.sp,
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${artistDashBoardController.dashBoardModel.value.follower.toString() ?? '0'}",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColor.whiteColor,
                                        fontFamily: "PoppinsMedium",
                                      ),
                                    ),
                                    Text(
                                     "Followers",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColor.whiteColor,
                                        fontFamily: "PoppinsMedium",
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Colors.black,),
                    Expanded(child: ListView(children: [

                    ],))
                  ]
              ),),),
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