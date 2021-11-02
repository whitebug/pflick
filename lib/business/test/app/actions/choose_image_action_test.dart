import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../jsons/file_reader.dart';
import 'choose_image_action_test.mocks.dart';

@GenerateMocks([Repository])
main() {
  late MockRepository mockRepository;
  late List<dynamic> rawImages;
  var json = getFile('images.json');
  late List<ImageState> imageStates;
  late ImageState newCurrentImage;

  setUpAll(() {
    mockRepository = MockRepository();
    rawImages = jsonDecode(json);
    imageStates = ImageState.fromJsonToList(rawImages);
    newCurrentImage = imageStates.last;
  });

  test(
      'Current image should be changed when [ChooseImageAction]'
      'is fired', () async {
    when(mockRepository.getPhotos(page: anyNamed('page'))).thenAnswer(
      (_) async => imageStates,
    );
    var storeTester = StoreTester<ImageListState>(
      initialState: await ImageListState.initialState(
        repository: mockRepository,
      ),
    );

    expect(storeTester.state.imageList, imageStates);
    expect(storeTester.state.currentImage, imageStates.first);
    expect(storeTester.state.loading, false);
    expect(storeTester.state.currentPage, 0);

    storeTester.dispatch(ChooseImageAction(image: newCurrentImage));
    TestInfo<ImageListState> info = await storeTester.wait(ChooseImageAction);
    expect(info.state.currentImage, newCurrentImage);
  });
}
