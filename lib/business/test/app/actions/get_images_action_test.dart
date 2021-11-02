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
  late List<dynamic> rawImages2;
  var json = getFile('images.json');
  var json2 = getFile('images_page_2.json');
  late List<ImageState> imageStates;
  late List<ImageState> imageStates2;

  setUpAll(() {
    mockRepository = MockRepository();
    rawImages = jsonDecode(json);
    rawImages2 = jsonDecode(json2);
    imageStates = ImageState.fromJsonToList(rawImages);
    imageStates2 = ImageState.fromJsonToList(rawImages2);
  });

  test(
      'Current image should be changed when [ChooseImageAction]'
      'is fired', () async {
    when(mockRepository.getPhotos(page: 0)).thenAnswer(
      (_) async => imageStates,
    );

    when(mockRepository.getPhotos(page: 1)).thenAnswer(
      (_) async => imageStates2,
    );
    var storeTester = StoreTester<ImageListState>(
      initialState: await ImageListState.initialState(
        repository: mockRepository,
      ),
    );
    // check if initial state is on page 0
    expect(storeTester.state.imageList, imageStates);
    storeTester.dispatch(GetImagesAction(repository: mockRepository));
    TestInfo<ImageListState> info = await storeTester.waitUntil(
      GetImagesAction,
    );
    // check if images page is turned to page 1
    expect(info.state.imageList, imageStates);
  });
}
