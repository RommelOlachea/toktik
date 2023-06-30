import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/respositories/video_post_repository.dart';

class VideoPostRepositoryImp implements VideoPostRepository {
  final VideoPostDatasource videoDataSource;
  VideoPostRepositoryImp({required this.videoDataSource});

  @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoDataSource.getTrendingVideosByPage(page);
  }
}
