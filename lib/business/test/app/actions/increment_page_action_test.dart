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

  setUpAll(() {
    mockRepository = MockRepository();
    rawImages = jsonDecode(json);
    imageStates = ImageState.fromJsonToList(rawImages);
  });

  test(
      'Page should be incremented when [IncrementPageAction]'
      'is fired', () async {
    when(mockRepository.getPhotos(page: anyNamed('page'))).thenAnswer(
      (_) async => imageStates,
    );
    var storeTester = StoreTester<ImageListState>(
      initialState: await ImageListState.initialState(
        repository: mockRepository,
      ),
    );
    // check that initial state has page number 0
    expect(storeTester.state.currentPage, 0);
    storeTester.dispatch(IncrementPageAction());
    TestInfo<ImageListState> info = await storeTester.wait(IncrementPageAction);
    // check that page is turned to 1
    expect(info.state.currentPage, 1);
  });
}
