import 'package:async_redux/async_redux.dart';

import '../../business.dart';

/// Switches loading state
class LoadingAction extends ReduxAction<ImageListState> {
  final bool loading;

  LoadingAction({required this.loading});

  @override
  ImageListState reduce() {
    return state.copyWith(loading: loading);
  }
}