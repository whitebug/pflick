import 'package:freezed_annotation/freezed_annotation.dart';
import '../../business.dart';
import 'models.dart';

part 'image_list_state.g.dart';
part 'image_list_state.freezed.dart';

/// The app state, which in this case is a counter and a description.
@freezed
class ImageListState with _$ImageListState {
  factory ImageListState({
    required List<ImageState> imageList,
    required ImageState currentImage,
    required bool loading,
    required int currentPage,
  }) = _ImageListState;

  factory ImageListState.fromJson(Map<String, dynamic> json) =>
      _$ImageListStateFromJson(json);

  static List<ImageListState> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => ImageListState.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Future<ImageListState> initialState({
    required Repository repository,
  }) async {
    List<ImageState> images = await repository.getPhotos(page: 0);
    return ImageListState(
      imageList: images,
      currentImage: images.first,
      loading: false,
      currentPage: 0,
    );
  }
}
