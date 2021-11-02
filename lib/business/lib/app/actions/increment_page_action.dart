import 'package:async_redux/async_redux.dart';
import '../../business.dart';

class IncrementPageAction extends ReduxAction<ImageListState> {
  @override
  ImageListState reduce() {
    return state.copyWith(currentPage: state.currentPage + 1);
  }
}
