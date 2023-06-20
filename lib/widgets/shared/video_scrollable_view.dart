import 'package:flutter/material.dart';
import 'package:toktik/widgets/shared/video_buttons.dart';
import 'package:toktik/widgets/video/fullscreen_player.dart';
import '../../domain/entities/video_post.dart';

class VideoScrollablleView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollablleView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(caption: videoPost.caption, videoUrl: videoPost.videoUrl,),
            ),
            //Video Player + gradiente

            //Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost,))

          ],
        );
      },
    );
  }
}

//builder, significa que va a construir los widgets bajo demanda,
//si no lo hacemos asi, fluttr construiria todos de una vez y los
//mantendria en memoria, lo cual es muy costoso

//stack, me permite poner widgets unos sobre otros
//positioned trabaja con el stack para posicionar los widgets