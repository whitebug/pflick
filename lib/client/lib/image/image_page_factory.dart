import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:client/client.dart';

class ImagePageFactory extends VmFactory<ImageListState, ImagePageConnector> {

  ImagePageFactory(widget) : super(widget);

  @override
  ImagePageViewModel fromStore() => ImagePageViewModel(
    image: state.currentImage,
    like: () => dispatch(LikeAction(currentImage: state.currentImage)),
  );
}
