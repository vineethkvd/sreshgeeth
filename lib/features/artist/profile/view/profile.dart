import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../../user/login/view/login_page.dart';
import '../controller/profile_controller.dart';
import '../../dashboard/controller/dashboard_controller.dart';


class ArtistProfilePage extends StatefulWidget {
  const ArtistProfilePage({super.key});

  @override
  State<ArtistProfilePage> createState() => _ArtistProfilePageState();
}

class _ArtistProfilePageState extends State<ArtistProfilePage> {
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
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.primaryColor,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Profile",
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
            child: SingleChildScrollView(
              child: Obx(() => Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 100.sp, // Size of the circular border
                        width: 100.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              50.r), // Circular border
                          border: Border.all(
                            color: const Color(0xffb96a53),
                            width: 3.sp,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70.r),
                          child: Container(
                            height: 90.sp,
                            width: 90.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black12,
                            ),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl:
                              profileController
                                  .profileModel.value.data?.first.profile ??
                                  '',
                              placeholder: (context, url) =>
                              const CupertinoActivityIndicator(),
                              errorWidget: (context, url, error) =>
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Icon(CupertinoIcons.person),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        profileController
                            .profileModel.value.data?.first.artistName ??
                            '',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.blackTextColor,
                            fontFamily: "poppinsSemiBold"),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Center(
                      child: Text(
                        profileController
                            .profileModel.value.data?.first.artistEmail ??
                            '',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColor.blackTextColor,
                            fontFamily: "poppinsRegular"),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff2096f5),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0.sp),
                                      topRight: Radius.circular(12.0
                                          .sp) //                 <--- border radius here
                                  ),
                                  border: Border(
                                    top: BorderSide(
                                      //                   <--- left side
                                      color: Colors.white,
                                      width: 1.0.sp,
                                    ),
                                  )),
                              width: 120.sp,
                              height: 45.sp,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                              'Referral Bonus',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColor.whiteColor,
                                        fontFamily: "poppinsSemiBold"),
                                  ),

                                ],
                              )),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xfff2f2f2),
                                borderRadius: BorderRadius.circular(12.r)),
                            width: 254.sp,
                            height: 80.sp,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 127.sp,
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
                                          artistDashBoardController.dashBoardModel.value.totalSubsciption.toString() ?? '0',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: AppColor.blackTextColor,
                                            fontFamily: "PoppinsSemiBold",
                                          ),
                                        ),

                                        SizedBox(
                                          height: 5.sp,
                                        ),
                                        Text(
                                          maxLines: 2,
                                          'People\nsubscribed',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff4d4d4d),
                                            fontFamily: "PoppinsSemiBold",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 127.sp,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                    border: Border(
                                      left: BorderSide(
                                        //                   <--- left side
                                        color: const Color(0xff4d4d4d),
                                        width: 1.0.sp,
                                      ),
                                    ),
                                  ),
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
                                          artistDashBoardController.dashBoardModel.value.totalEarning.toString() ?? '0',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: AppColor.blackTextColor,
                                            fontFamily: "PoppinsSemiBold",
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.sp,
                                        ),
                                        Text(
                                          maxLines: 2,
                                          'Promo\nearning',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff4d4d4d),
                                            fontFamily: "PoppinsSemiBold",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    _profileItem(
                        icon: Icons.person,
                        label: 'Profile',
                        onTap: () {
                          // Get.to(const PolicyPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.info_outline,
                        label: 'About Us',
                        onTap: () {
                          // Get.to(const PolicyPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.support_agent,
                        label: 'Support',
                        onTap: () {
                          // Get.to(const PolicyPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.security,
                        label: 'Privacy Policy',
                        onTap: () {
                          // Get.to(const PolicyPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.library_books,
                        label: 'Terms and Condition',
                        onTap: () {
                          // Get.to(const PolicyPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        child: Ink(
                          decoration: BoxDecoration(
                            color: AppColor.redColor,
                            borderRadius: BorderRadius.circular(
                                15.0), // Match the ClipRRect border radius
                            border: Border.all(color: Colors.black12),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                                15.0), // Ensure InkWell has the same border radius
                            onTap: () async {
                              Get.defaultDialog(
                                title: 'Logout',
                                textConfirm: 'Logout',
                                middleTextStyle: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular",
                                ),
                                middleText: 'Are you sure you want to logout?',
                                textCancel: 'Cancel',
                                titleStyle: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsSemiBold",
                                ),
                                buttonColor:
                                AppColor.primaryColor, // Set the button color
                                radius: 10.0, // Set the border radius
                                onConfirm: () {
                                  CacheHelper.clearData("artistUserId");
                                  Get.offAll(
                                    const LoginPage(),
                                    transition: Transition.leftToRightWithFade,
                                  ); // Navigate to login screen
                                },
                                onCancel: () {
                                  Get.back(); // Close current screen
                                },
                              );
                            },
                            child: Container(
                              width: Get.width,
                              height: 50,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.power_settings_new_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Logout',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),),),
          ),
        ),
      ),
    );
  }
  Widget _profileItem(
      {required IconData icon,
        required String label,
        required VoidCallback onTap,
        required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Material(
          color: Colors.transparent,
          elevation: 5.0,
          child: Ink(
            decoration: BoxDecoration(
              color: const Color(0xffededed),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.black12),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.all(10),
                width: Get.width,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Icon(
                      icon,
                      size: 25,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      label,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "poppinsRegular",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}