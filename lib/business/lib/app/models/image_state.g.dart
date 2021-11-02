// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageState _$_$_ImageStateFromJson(Map<String, dynamic> json) {
  return _$_ImageState(
    title: json['title'] as String,
    media: Media.fromJson(json['media'] as Map<String, dynamic>),
    favorite: json['favorite'] as bool?,
  );
}

Map<String, dynamic> _$_$_ImageStateToJson(_$_ImageState instance) =>
    <String, dynamic>{
      'title': instance.title,
      'media': instance.media,
      'favorite': instance.favorite,
    };
