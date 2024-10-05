import 'package:cinemax_app/features/home/data/models/movie_details_model/result.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({super.key, required this.movieDetailsEntity});
  final MovieDetailsEntity movieDetailsEntity;
  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId:
          Result.getTrailerKey(widget.movieDetailsEntity.videoKey).toString(),
      flags: const YoutubePlayerFlags(),
    );
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: youtubePlayerController,
        onEnded: (metaData) {
          GoRouter.of(context).pop();
        },
      ),
      builder: (context, player) {
        return player;
      },
    );
  }
}
