import 'package:dio/dio.dart';

import '../../business.dart';

const String mainUrl =
    'https://api.flickr.com/services/feeds/photos_public.gne';

class RepositoryImpl extends Repository {
  final Dio dio;

  RepositoryImpl({required this.dio});

  Future<List<ImageState>> getPhotos({int page = 0}) async {
    final response = await dio.get(
      '$mainUrl?page=$page&format=json&nojsoncallback=1',
    );
    return ImageState.fromJsonToList(response.data['items']);
  }
}
