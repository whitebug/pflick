// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'image_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageListState _$ImageListStateFromJson(Map<String, dynamic> json) {
  return _ImageListState.fromJson(json);
}

/// @nodoc
class _$ImageListStateTearOff {
  const _$ImageListStateTearOff();

  _ImageListState call(
      {required List<ImageState> imageList,
      required ImageState currentImage,
      required bool loading,
      required int currentPage}) {
    return _ImageListState(
      imageList: imageList,
      currentImage: currentImage,
      loading: loading,
      currentPage: currentPage,
    );
  }

  ImageListState fromJson(Map<String, Object> json) {
    return ImageListState.fromJson(json);
  }
}

/// @nodoc
const $ImageListState = _$ImageListStateTearOff();

/// @nodoc
mixin _$ImageListState {
  List<ImageState> get imageList => throw _privateConstructorUsedError;
  ImageState get currentImage => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageListStateCopyWith<ImageListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageListStateCopyWith<$Res> {
  factory $ImageListStateCopyWith(
          ImageListState value, $Res Function(ImageListState) then) =
      _$ImageListStateCopyWithImpl<$Res>;
  $Res call(
      {List<ImageState> imageList,
      ImageState currentImage,
      bool loading,
      int currentPage});

  $ImageStateCopyWith<$Res> get currentImage;
}

/// @nodoc
class _$ImageListStateCopyWithImpl<$Res>
    implements $ImageListStateCopyWith<$Res> {
  _$ImageListStateCopyWithImpl(this._value, this._then);

  final ImageListState _value;
  // ignore: unused_field
  final $Res Function(ImageListState) _then;

  @override
  $Res call({
    Object? imageList = freezed,
    Object? currentImage = freezed,
    Object? loading = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      imageList: imageList == freezed
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageState>,
      currentImage: currentImage == freezed
          ? _value.currentImage
          : currentImage // ignore: cast_nullable_to_non_nullable
              as ImageState,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ImageStateCopyWith<$Res> get currentImage {
    return $ImageStateCopyWith<$Res>(_value.currentImage, (value) {
      return _then(_value.copyWith(currentImage: value));
    });
  }
}

/// @nodoc
abstract class _$ImageListStateCopyWith<$Res>
    implements $ImageListStateCopyWith<$Res> {
  factory _$ImageListStateCopyWith(
          _ImageListState value, $Res Function(_ImageListState) then) =
      __$ImageListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ImageState> imageList,
      ImageState currentImage,
      bool loading,
      int currentPage});

  @override
  $ImageStateCopyWith<$Res> get currentImage;
}

/// @nodoc
class __$ImageListStateCopyWithImpl<$Res>
    extends _$ImageListStateCopyWithImpl<$Res>
    implements _$ImageListStateCopyWith<$Res> {
  __$ImageListStateCopyWithImpl(
      _ImageListState _value, $Res Function(_ImageListState) _then)
      : super(_value, (v) => _then(v as _ImageListState));

  @override
  _ImageListState get _value => super._value as _ImageListState;

  @override
  $Res call({
    Object? imageList = freezed,
    Object? currentImage = freezed,
    Object? loading = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_ImageListState(
      imageList: imageList == freezed
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageState>,
      currentImage: currentImage == freezed
          ? _value.currentImage
          : currentImage // ignore: cast_nullable_to_non_nullable
              as ImageState,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageListState implements _ImageListState {
  _$_ImageListState(
      {required this.imageList,
      required this.currentImage,
      required this.loading,
      required this.currentPage});

  factory _$_ImageListState.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageListStateFromJson(json);

  @override
  final List<ImageState> imageList;
  @override
  final ImageState currentImage;
  @override
  final bool loading;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'ImageListState(imageList: $imageList, currentImage: $currentImage, loading: $loading, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageListState &&
            (identical(other.imageList, imageList) ||
                const DeepCollectionEquality()
                    .equals(other.imageList, imageList)) &&
            (identical(other.currentImage, currentImage) ||
                const DeepCollectionEquality()
                    .equals(other.currentImage, currentImage)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageList) ^
      const DeepCollectionEquality().hash(currentImage) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(currentPage);

  @JsonKey(ignore: true)
  @override
  _$ImageListStateCopyWith<_ImageListState> get copyWith =>
      __$ImageListStateCopyWithImpl<_ImageListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageListStateToJson(this);
  }
}

abstract class _ImageListState implements ImageListState {
  factory _ImageListState(
      {required List<ImageState> imageList,
      required ImageState currentImage,
      required bool loading,
      required int currentPage}) = _$_ImageListState;

  factory _ImageListState.fromJson(Map<String, dynamic> json) =
      _$_ImageListState.fromJson;

  @override
  List<ImageState> get imageList => throw _privateConstructorUsedError;
  @override
  ImageState get currentImage => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageListStateCopyWith<_ImageListState> get copyWith =>
      throw _privateConstructorUsedError;
}
