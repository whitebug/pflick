import 'package:dio/dio.dart';

import '../../business.dart';

const String mainUrl = 'https://picsum.photos/v2/list';

/// Maximum photos per page. We take 10 to increase frequency of api calls
const int imageLimit = 10;

class RepositoryImpl extends Repository {
  final Dio dio;

  RepositoryImpl({required this.dio});

  Future<List<ImageState>> getPhotos({int page = 0}) async {
    final response = await dio.get('$mainUrl?page=$page&limit=$imageLimit');
    return ImageState.fromJsonToList(response.data);
  }
}
