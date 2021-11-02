import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:flutter/material.dart';

class HomePageViewModel extends Vm {
  final List<ImageState> imagesList;
  final bool loading;
  final VoidCallback updatePage;
  final void Function(ImageState image) openImagePage;

  HomePageViewModel({
    required this.imagesList,
    required this.loading,
    required this.updatePage,
    required this.openImagePage,
  }) : super(equals: [imagesList, loading]);
}
