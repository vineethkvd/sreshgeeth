import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sreshgeeth/features/artist/podcast/model/podcast_list_model.dart';
import 'package:sreshgeeth/features/artist/podcast/view/completed.dart';
import 'package:sreshgeeth/features/artist/podcast/view/upcoming.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';


class ArtistPodcastPage extends StatefulWidget {
  const ArtistPodcastPage({super.key});

  @override
  State<ArtistPodcastPage> createState() => _ArtistPodcastPageState();
}

class _ArtistPodcastPageState extends State<ArtistPodcastPage> {
  @override
  // final ProfileController profileController = Get.put(ProfileController());
  @override
  void initState() {
    super.initState();
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
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text("data")),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisSize: MainAxisSize.max,children: [
                        Expanded(child:  ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15.0),
                            elevation: 5.0,
                            child: Ink(
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black12),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  Get.to(UpcomingPodcastPage(),transition: Transition.cupertino);
                                },
                                child: Container(
                                  height: 45,
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: const Text(
                                      'Upcoming Podcast',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(child:  ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15.0),
                            elevation: 5.0,
                            child: Ink(
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black12),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  Get.to(const CompletedPodcastPage(),transition: Transition.cupertino);
                                },
                                child: Container(
                                  height: 45,
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: const Text(
                                      'Completed Podcast',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),)
                      ],),
                    ),
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}