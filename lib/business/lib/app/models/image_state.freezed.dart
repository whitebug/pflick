// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageState _$ImageStateFromJson(Map<String, dynamic> json) {
  return _ImageState.fromJson(json);
}

/// @nodoc
class _$ImageStateTearOff {
  const _$ImageStateTearOff();

  _ImageState call(
      {required String title, required Media media, required bool? favorite}) {
    return _ImageState(
      title: title,
      media: media,
      favorite: favorite,
    );
  }

  ImageState fromJson(Map<String, Object> json) {
    return ImageState.fromJson(json);
  }
}

/// @nodoc
const $ImageState = _$ImageStateTearOff();

/// @nodoc
mixin _$ImageState {
  String get title => throw _privateConstructorUsedError;
  Media get media => throw _privateConstructorUsedError;
  bool? get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res>;
  $Res call({String title, Media media, bool? favorite});

  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res> implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  final ImageState _value;
  // ignore: unused_field
  final $Res Function(ImageState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? media = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $MediaCopyWith<$Res> get media {
    return $MediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value));
    });
  }
}

/// @nodoc
abstract class _$ImageStateCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory _$ImageStateCopyWith(
          _ImageState value, $Res Function(_ImageState) then) =
      __$ImageStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, Media media, bool? favorite});

  @override
  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$ImageStateCopyWithImpl<$Res> extends _$ImageStateCopyWithImpl<$Res>
    implements _$ImageStateCopyWith<$Res> {
  __$ImageStateCopyWithImpl(
      _ImageState _value, $Res Function(_ImageState) _then)
      : super(_value, (v) => _then(v as _ImageState));

  @override
  _ImageState get _value => super._value as _ImageState;

  @override
  $Res call({
    Object? title = freezed,
    Object? media = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_ImageState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageState implements _ImageState {
  _$_ImageState(
      {required this.title, required this.media, required this.favorite});

  factory _$_ImageState.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageStateFromJson(json);

  @override
  final String title;
  @override
  final Media media;
  @override
  final bool? favorite;

  @override
  String toString() {
    return 'ImageState(title: $title, media: $media, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(favorite);

  @JsonKey(ignore: true)
  @override
  _$ImageStateCopyWith<_ImageState> get copyWith =>
      __$ImageStateCopyWithImpl<_ImageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageStateToJson(this);
  }
}

abstract class _ImageState implements ImageState {
  factory _ImageState(
      {required String title,
      required Media media,
      required bool? favorite}) = _$_ImageState;

  factory _ImageState.fromJson(Map<String, dynamic> json) =
      _$_ImageState.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  Media get media => throw _privateConstructorUsedError;
  @override
  bool? get favorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageStateCopyWith<_ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
