import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sreshgeeth/features/user/profile/view/policy_page.dart';
import 'package:sreshgeeth/features/user/profile/view/profile_detail.dart';
import 'package:sreshgeeth/features/user/profile/view/support_page.dart';
import 'package:sreshgeeth/features/user/profile/view/terms_page.dart';
import 'package:sreshgeeth/features/user/profile/view/about_page.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../../../core/utils/shared/constants/assets_pathes.dart';
import '../../login/view/login_page.dart';
import '../controller/profile_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  final ProfileController profileController = Get.put(ProfileController());

  @override
  void initState() {
    super.initState();
    profileController.fetchUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.arrow_back, size: 25, color: Colors.white)),
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
            child: Obx(
                  () {
                final profileList = profileController.profileModel.value.profile;
                final profile = profileList?.isNotEmpty == true ? profileList!.first : null;

                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 100.sp, // Size of the circular border
                            width: 100.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r), // Circular border
                              border: Border.all(
                                color: AppColor.primaryColor,
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
                                child: Image.asset(
                                  AssetsPathes.userImage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        profile?.rjCusName ?? '',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.borderColor,
                            fontFamily: "poppinsSemiBold"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        profile?.rjCusEmail ?? '',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColor.borderColor,
                            fontFamily: "poppinsRegular"),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    _profileItem(
                        icon: Icons.person,
                        label: "Profile",
                        onTap: () {
                          Get.to(const ProfileDetailsPage(),
                              transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.download,
                        label: "Downloaded Song",
                        onTap: () {
                          Get.to(const ProfileDetailsPage(),
                              transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.info_outline,
                        label: 'About us',
                        onTap: () {
                          Get.to(const AboutPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.support_agent_outlined,
                        label: 'Support',
                        onTap: () {
                          Get.to(const SupportPage(),
                              transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.article,
                        label: 'Terms & Conditions',
                        onTap: () {
                          Get.to(const TermsPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.local_police_outlined,
                        label: 'Privacy Policy',
                        onTap: () {
                          Get.to(const PolicyPage(), transition: Transition.cupertino);
                        },
                        context: context),
                    _profileItem(
                        icon: Icons.password,
                        label: 'Change Password',
                        onTap: () {
                          // Get.to(const ForgotPasswordPage(),
                          //     transition: Transition.cupertino);
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
                                  CacheHelper.clearData("userId");
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
                  ],
                );
              },
            )),
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
