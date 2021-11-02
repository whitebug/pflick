import '../../business.dart';

abstract class Repository {
  Future<List<ImageState>> getPhotos({int page});
}