import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:mockito/mockito.dart';
import '../../jsons/file_reader.dart';
import 'choose_image_action_test.mocks.dart';

main() {
  late MockRepository mockRepository;
  late List<dynamic> rawImages;
  var json = getFile('images.json');
  late List<ImageState> imageStates;
  late ImageState imageToBeLiked;
  late ImageState justLikedImage;
  late List<ImageState> imagesWithLikedImage;

  setUpAll(() {
    mockRepository = MockRepository();
    rawImages = jsonDecode(json);
    imageStates = ImageState.fromJsonToList(rawImages);
    imagesWithLikedImage = ImageState.fromJsonToList(rawImages);
    imageToBeLiked = imageStates.first;
    justLikedImage = imageStates.first.copyWith(favorite: true);
    // image list with liked image
    imagesWithLikedImage[0] = justLikedImage;
  });

  test(
      'favorite field should be true when [LikeAction]'
      'is fired with specific [ImageState]', () async {
    when(mockRepository.getPhotos(page: anyNamed('page'))).thenAnswer(
      (_) async => imageStates,
    );
    var storeTester = StoreTester<ImageListState>(
      initialState: await ImageListState.initialState(
        repository: mockRepository,
      ),
    );
    // check initial image list equals to [imageStates]
    expect(storeTester.state.imageList, imageStates);
    storeTester.dispatch(LikeAction(likedImage: imageToBeLiked));
    TestInfo<ImageListState> info = await storeTester.wait(LikeAction);
    // check that images now contain the liked image
    expect(info.state.imageList, imagesWithLikedImage);
  });
}
