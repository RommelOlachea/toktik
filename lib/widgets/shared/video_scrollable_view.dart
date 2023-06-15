import 'package:flutter/material.dart';
import '../../domain/entities/video_post.dart';

class VideoScrollablleView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollablleView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.blue,),
        Container(color: Colors.teal,),
        Container(color: Colors.yellow,),
        Container(color: Colors.deepPurple,),
      ],
    );
  }
}
