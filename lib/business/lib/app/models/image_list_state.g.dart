// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageListState _$_$_ImageListStateFromJson(Map<String, dynamic> json) {
  return _$_ImageListState(
    imageList: (json['imageList'] as List<dynamic>)
        .map((e) => ImageState.fromJson(e as Map<String, dynamic>))
        .toList(),
    currentImage:
        ImageState.fromJson(json['currentImage'] as Map<String, dynamic>),
    loading: json['loading'] as bool,
    currentPage: json['currentPage'] as int,
  );
}

Map<String, dynamic> _$_$_ImageListStateToJson(_$_ImageListState instance) =>
    <String, dynamic>{
      'imageList': instance.imageList,
      'currentImage': instance.currentImage,
      'loading': instance.loading,
      'currentPage': instance.currentPage,
    };
