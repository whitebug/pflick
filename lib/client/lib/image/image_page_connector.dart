import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:client/client.dart';
import 'package:business/business.dart';

class ImagePageConnector extends StatelessWidget {
  const ImagePageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ImageListState, ImagePageViewModel>(
      vm: () => ImagePageFactory(this),
      builder: (BuildContext context, ImagePageViewModel vm) => ImagePage(
        imageState: vm.image,
        like: vm.like,
      ),
    );
  }
}
