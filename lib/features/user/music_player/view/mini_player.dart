import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import '../controller/music_pllayer_controller.dart';

import 'music_player_page.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  final MusicPlayerController musicPlayerController =
      Get.put(MusicPlayerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (musicPlayerController.showMiniPlayer.value) {
        return Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.down,
          onDismissed: (direction) {
            musicPlayerController.audioPlayer.stop();
            musicPlayerController.showMiniPlayer.value = false;
          },
          child: InkWell(
            onTap: () {
              final currentIndex =
                  musicPlayerController.audioPlayer.currentIndex;
              final audioSource =
                  musicPlayerController.suggestionList[currentIndex!];
              final mediaItem =
                  (audioSource as UriAudioSource).tag as MediaItem;
              Get.to(
                  MusicPlayerPage(
                    id: mediaItem.extras!['album_id'] as String,
                    types: mediaItem.extras!['type'] as String,
                    songId: mediaItem.id.toString(),
                    songTitle: mediaItem.title,
                    curIndex: currentIndex,
                  ),
                  transition: Transition.downToUp);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.grey[900],
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                      imageUrl: musicPlayerController.imgUrl.value,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          musicPlayerController.currentTitle.value,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          musicPlayerController.currentArtistName.value,
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_previous, color: Colors.white),
                    onPressed: () {
                      musicPlayerController.audioPlayer.seekToPrevious();
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      musicPlayerController.isPlaying.value
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      if (musicPlayerController.isPlaying.value) {
                        musicPlayerController.audioPlayer.pause();
                      } else {
                        musicPlayerController.audioPlayer.play();
                      }
                      musicPlayerController.isPlaying.toggle();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_next, color: Colors.white),
                    onPressed: () {
                      musicPlayerController.audioPlayer.seekToNext();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      musicPlayerController.audioPlayer.stop();
                      musicPlayerController.showMiniPlayer.value = false;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return SizedBox.shrink();
      }
    });
  }
}
