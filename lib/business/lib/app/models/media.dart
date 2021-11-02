import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.g.dart';
part 'media.freezed.dart';

@freezed
class Media with _$Media{
  factory Media({required String m}) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) =>
      _$MediaFromJson(json);

  static List<Media> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => Media.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Media initialState() => Media(m: '');
}
