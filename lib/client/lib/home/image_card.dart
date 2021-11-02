import 'package:business/business.dart';
import 'package:client/client.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCard extends StatelessWidget {
  final ImageState currentImage;
  final void Function(ImageState image) openImagePage;
  const ImageCard({
    required this.currentImage,
    required this.openImagePage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => openImagePage(currentImage),
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: CachedNetworkImage(
              imageUrl: currentImage.url,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Favorite(
              favorite: currentImage.favorite,
            ),
            bottom: 20,
            right: 20,
          ),
        ],
      ),
    );
  }
}
