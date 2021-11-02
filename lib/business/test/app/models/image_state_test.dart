import 'package:flutter_test/flutter_test.dart';
import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';

main() {
  test('Check [ImageState] initial state', () {
    var storeTester = StoreTester<ImageState>(
      initialState: ImageState.initialState(),
    );

    expect(storeTester.state.id, '');
    expect(storeTester.state.author, '');
    expect(storeTester.state.url, '');
  });
}
