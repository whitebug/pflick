import 'package:async_redux/async_redux.dart';
import '../../business.dart';

class LikeAction extends ReduxAction<ImageListState> {
  final ImageState currentImage;

  LikeAction({required this.currentImage});
  @override
  Future<ImageListState> reduce() async {
    List<ImageState> _imageList = state.imageList;
    // get index of current image
    int index = _imageList.indexWhere(
      (element) => element.media == currentImage.media,
    );
    var _currentImage = _imageList[index];
    bool _currentLike = currentImage.favorite ?? false;
    _currentImage = _currentImage.copyWith(favorite: !_currentLike);
    _imageList[index] = _currentImage;
    return state.copyWith(
      imageList: _imageList,
      currentImage: _currentImage,
    );
  }
}
