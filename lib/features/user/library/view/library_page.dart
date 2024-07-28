import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sreshgeeth/features/user/library/view/podcast_tab.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../podcast/controller/podcast_controller.dart';
import '../../profile/controller/profile_controller.dart';
import '../controller/library_controller.dart';
import 'music_tab.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final LibraryController _libraryController = Get.put(LibraryController());
  final UserPodcastController _userPodcastController =
      Get.put(UserPodcastController());
  final ProfileController _profileController = Get.put(ProfileController());
  var userName = '';
  var userId = CacheHelper.getData('userId');
  @override
  void initState() {
    _libraryController.fetchMusicLibrary();
    _profileController.fetchUserInfo().then((_) {
      userName =
          _profileController.profileModel.value.profile?.first.rjCusName ?? '';
    });
    _profileController.fetchUserInfo();
    _userPodcastController.fetchUserPodcast();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColor.primaryColor,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Text(
                "Library",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColor.whiteColor,
                    fontFamily: "poppinsSemiBold"),
              ),
            ),
            body: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(21)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.blue.withOpacity(0.5)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(21)),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        labelColor: Colors.white,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(
                            text: "Music",
                          ),
                          Tab(
                            text: "Podcast",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        MusicTab(),
                        PodcastTab(userName: userName, userId: userId.toString(),),
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
}
