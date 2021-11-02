import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:flutter/material.dart';

class ImagePageViewModel extends Vm {
  final ImageState image;
  final VoidCallback like;

  ImagePageViewModel({
    required this.image,
    required this.like,
  }) : super(equals: [image]);
}
