import 'package:get/get.dart';
import 'package:sreshgeeth/features/user/library/view/library_page.dart';
import 'package:sreshgeeth/features/user/podcast/view/podcast_page.dart';
import 'package:sreshgeeth/features/user/premium/view/premium_page.dart';
import '../../home/view/home_page.dart';
import 'package:flutter/material.dart';

class NavBarController extends GetxController {
  var selectedIndex = 0.obs;
  final List<Widget> screens = [
    const HomePage(),
    const PodcastPage(),
    const LibraryPage(),
    const PremiumPage(),
  ];

  void updateIndex(int index) {
    selectedIndex.value = index;
  }
}
