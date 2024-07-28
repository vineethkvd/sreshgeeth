import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../../../core/utils/shared/constants/assets_pathes.dart';
import '../../drawer/view/drawer_widget.dart';
import '../../music_player/controller/music_pllayer_controller.dart';
import '../../music_player/view/mini_player.dart';
import '../controller/navbar_controller.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final NavBarController bottomNavBarController = Get.put(NavBarController());
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final MusicPlayerController _musicPlayerController =
  Get.put(MusicPlayerController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          key: _key,
          drawer: const DrawerWidget(),
          extendBodyBehindAppBar: false,

          body: bottomNavBarController.selectedIndex.value == 0
              ? Column(
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.all(8),
                color: AppColor.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          _key.currentState!.openDrawer();
                        },
                        splashColor: Colors.grey.withOpacity(0.5),
                        highlightColor: Colors.grey.withOpacity(0.3),
                        child: Icon(
                          Icons.menu,
                          size: 25,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: AppColor.whiteColor,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 25,
                                  color: AppColor.txtColorMain,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Music, Artist, Podcast",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsRegular",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          // Your onTap code here
                        },
                        splashColor: Colors.grey.withOpacity(0.5),
                        highlightColor: Colors.grey.withOpacity(0.3),
                        child: Icon(
                          Icons.notifications,
                          size: 25,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: bottomNavBarController.screens[bottomNavBarController.selectedIndex.value],
              ),
            ],
          )
              : bottomNavBarController.screens[bottomNavBarController.selectedIndex.value],
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => _musicPlayerController.showMiniPlayer.value ? MiniPlayer() : SizedBox.shrink()),
              BottomNavigationBar(
                backgroundColor: AppColor.primaryColor,
                selectedItemColor: AppColor.whiteColor,
                unselectedItemColor: AppColor.whiteColor,
                currentIndex: bottomNavBarController.selectedIndex.value,
                onTap: (index) => bottomNavBarController.updateIndex(index),
                selectedLabelStyle: TextStyle(
                    fontSize: 12.sp,
                    color: AppColor.txtColorMain,
                    fontFamily: "poppinsRegular"),
                unselectedLabelStyle: TextStyle(
                    fontSize: 12.sp,
                    color: AppColor.txtColorMain,
                    fontFamily: "poppinsRegular"),
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: AppColor.primaryColor,
                    icon: Icon(Icons.home_outlined, size: 25.sp),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: AppColor.primaryColor,
                    icon: Icon(Icons.mic_none_outlined, size: 25.sp),
                    label: 'Podcast',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: AppColor.primaryColor,
                    icon: Icon(Icons.library_music_outlined, size: 25.sp),
                    label:  'Library',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor:AppColor.primaryColor,
                    icon: Icon( Icons.star_border, size: 25.sp),
                    label:  'Premium',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
