import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/respositories/video_post_repository.dart';

class VideoPostsRepositoryImp implements VideoPostRepository {
  final VideoPostDatasource videoDataSource;
  VideoPostsRepositoryImp({required this.videoDataSource});

  @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoDataSource.getTrendingVideosByPage(page);
  }
}


//nota: la linea final VideoPostDatasource videoDataSource; el tipo que regresa es del
//tipo de la clase abstracta, no de la clase que la esta implementando
