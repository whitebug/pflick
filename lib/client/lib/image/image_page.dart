import 'package:business/business.dart';
import 'package:client/client.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImagePage extends StatelessWidget {
  static const route = '/image';
  final ImageState imageState;
  final VoidCallback like;
  const ImagePage({
    required this.imageState,
    required this.like,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imageState.author),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CachedNetworkImage(
              imageUrl: imageState.url,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: InkWell(
              onTap: like,
              child: Favorite(favorite: imageState.favorite),
            ),
          )
        ],
      ),
    );
  }
}
