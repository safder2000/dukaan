import 'dart:math';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideo extends StatefulWidget {
  YouTubeVideo({Key? key}) : super(key: key);

  @override
  State<YouTubeVideo> createState() => _YouTubeVedioState();
}

class _YouTubeVedioState extends State<YouTubeVideo> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const url = 'https://www.youtube.com/watch?v=8MQg1e6DdW0';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: controller),
        builder: (context, player) => Container(
              child: player,
            ));
  }
}
