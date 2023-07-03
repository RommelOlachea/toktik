import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/respositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    // List<VideoPost> newVideos = videoPosts
    //     .map((value) => LocalVideoModel.fromJson(value).toVideoPostEntity())
    //     .toList();
    // videos.addAll(newVideos);

    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    
    initialLoading = false;

    notifyListeners();
  }
}
