import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_state.g.dart';
part 'image_state.freezed.dart';

/// {
///     "id": "0",
///     "author": "Alejandro Escamilla",
///     "width": 5616,
///     "height": 3744,
///     "url": "https://unsplash.com/...",
///     "download_url": "https://picsum.photos/..."
/// }
@freezed
class ImageState with _$ImageState {
  factory ImageState({
    required String id,
    required String author,
    @JsonKey(name: 'download_url')
    required String url,
    required bool? favorite,
  }) = _ImageState;

  factory ImageState.fromJson(Map<String, dynamic> json) =>
      _$ImageStateFromJson(json);

  static List<ImageState> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => ImageState.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static ImageState initialState() => ImageState(
        id: '',
        author: '',
        url: '',
        favorite: false,
      );
}
