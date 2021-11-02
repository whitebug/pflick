import 'package:business/business.dart';
import 'package:client/client.dart';
import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

/// This widget is a connector. It connects the store to "dumb-widget".
class HomePageConnector extends StatelessWidget {
  final Repository repository;
  HomePageConnector({required this.repository, Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ImageListState, HomePageViewModel>(
      vm: () => HomePageFactory(
        repository: repository,
        widget: this,
      ),
      builder: (BuildContext context, HomePageViewModel vm) => HomePage(
        imageList: vm.imagesList,
        loading: vm.loading,
        updatePage: vm.updatePage,
        openImagePage: vm.openImagePage,
        length: vm.imagesList.length,
      ),
    );
  }
}
