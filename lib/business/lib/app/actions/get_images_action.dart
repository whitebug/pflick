import 'package:async_redux/async_redux.dart';

import '../../business.dart';

/// This action adds images from flickr when images on one page comes to the
/// end.
class GetImagesAction extends ReduxAction<ImageListState> {
  final Repository repository;

  GetImagesAction({
    required this.repository,
  });

  @override
  Future<ImageListState> reduce() async {
    // turn page
    dispatch(IncrementPageAction());
    // get images
    final additionalImages = await repository.getPhotos(
      page: state.currentPage,
    );
    final imageList = state.imageList;
    // add new images to the old ones
    imageList.addAll(additionalImages);
    return state.copyWith(imageList: imageList);
  }

  @override
  void before() => dispatch(LoadingAction(loading: true));

  @override
  void after() => dispatch(LoadingAction(loading: false));
}
