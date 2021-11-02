import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  final bool? favorite;
  const Favorite({
    required this.favorite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favorite != null && favorite!) {
      return Icon(
        Icons.favorite,
        size: 50,
        color: Colors.red,
      );
    } else {
      return Icon(
        Icons.favorite_border,
        size: 50,
        color: Colors.red,
      );
    }
  }
}
