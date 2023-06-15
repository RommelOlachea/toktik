import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infraestructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, Datasource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo: cargar los videos
    await Future.delayed(const Duration(seconds: 2));

    List<VideoPost> newVideos = videoPosts
        .map((value) => LocalVideoModel.fromJson(value).toVideoPostEntity())
        .toList();
    videos.addAll(newVideos);
   
    initialLoading = false;

    notifyListeners();
  }
}
