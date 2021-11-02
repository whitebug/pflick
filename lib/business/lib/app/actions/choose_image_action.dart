import 'package:async_redux/async_redux.dart';

import '../../business.dart';

/// Changes current image
class ChooseImageAction extends ReduxAction<ImageListState> {
  final ImageState image;

  ChooseImageAction({required this.image});

  @override
  ImageListState reduce() {
    return state.copyWith(currentImage: image);
  }
}