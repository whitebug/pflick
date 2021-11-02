// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageState _$_$_ImageStateFromJson(Map<String, dynamic> json) {
  return _$_ImageState(
    id: json['id'] as String,
    author: json['author'] as String,
    url: json['download_url'] as String,
    favorite: json['favorite'] as bool?,
  );
}

Map<String, dynamic> _$_$_ImageStateToJson(_$_ImageState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'download_url': instance.url,
      'favorite': instance.favorite,
    };
