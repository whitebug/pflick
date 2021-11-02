import 'package:freezed_annotation/freezed_annotation.dart';
import '../../business.dart';

part 'image_state.g.dart';
part 'image_state.freezed.dart';

@freezed
class ImageState with _$ImageState {
  factory ImageState({
    required String title,
    required Media media,
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
        title: '',
        media: Media(m: ''),
        favorite: false,
      );
}
