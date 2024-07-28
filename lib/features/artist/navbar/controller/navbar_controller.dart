import 'package:get/get.dart';
import 'package:sreshgeeth/features/artist/podcast/view/podcast.dart';
import 'package:sreshgeeth/features/artist/profile/view/profile.dart';
import 'package:sreshgeeth/features/artist/song/view/song.dart';
import '../../home/view/home.dart';
import 'package:flutter/material.dart';

class ArtistNavBarController extends GetxController {
  var selectedIndex = 0.obs;
  final List<Widget> screens = [
    const ArtistHomePage(),
    const ArtistPodcastPage(),
    const ArtistSongPage(),
    const ArtistProfilePage(),
  ];

  void updateIndex(int index) {
    selectedIndex.value = index;
  }
}
