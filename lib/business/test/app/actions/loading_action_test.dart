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

  test('loading state should be true after [LoadingAction] has been fired',
      () async {
    when(mockRepository.getPhotos(page: anyNamed('page'))).thenAnswer(
      (_) async => imageStates,
    );
    var storeTester = StoreTester<ImageListState>(
      initialState: await ImageListState.initialState(
        repository: mockRepository,
      ),
    );
    // check that loading state is false
    expect(storeTester.state.loading, false);
    storeTester.dispatch(LoadingAction(loading: true));
    TestInfo<ImageListState> info = await storeTester.wait(LoadingAction);
    // check that images now contain the liked image
    expect(info.state.loading, true);
  });
}
