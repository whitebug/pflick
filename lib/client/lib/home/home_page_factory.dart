import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:client/client.dart';

/// Factory that creates a view-model for the StoreConnector.
class HomePageFactory extends VmFactory<ImageListState, HomePageConnector> {
  final Repository repository;

  HomePageFactory({
    required this.repository,
    required widget,
  }) : super(widget);

  @override
  HomePageViewModel fromStore() => HomePageViewModel(
        imagesList: state.imageList,
        loading: state.loading,
        updatePage: () => dispatch(
          GetImagesAction(
            repository: repository,
          ),
        ),
        openImagePage: (image) {
          dispatch(
            ChooseImageAction(image: image),
          );
          dispatch(
            NavigateAction.pushNamed(ImagePage.route),
          );
        },
      );
}
