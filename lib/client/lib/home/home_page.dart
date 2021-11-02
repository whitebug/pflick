import 'package:business/business.dart';
import 'package:client/client.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider_for_redux/provider_for_redux.dart';

class HomePage extends StatelessWidget {
  static const route = '/';
  final List<ImageState> imageList;
  final bool loading;
  final VoidCallback updatePage;
  final void Function(ImageState image) openImagePage;
  final int length;

  HomePage({
    required this.imageList,
    required this.loading,
    required this.updatePage,
    required this.openImagePage,
    required this.length,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PFlick')),
      body: Center(
        child: ReduxConsumer<ImageListState>(
        builder: (context, store, state, dispatch, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                ListView.builder(
                  itemCount: length,
                  itemBuilder: (context, index) {
                    // if there is no more images, add more
                    if ((index + 1) >= length && !loading) {
                      updatePage();
                    }
                    ImageState _currentImage = imageList[index];
                    return InkWell(
                      onTap: () => openImagePage(_currentImage),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width,
                            child: CachedNetworkImage(
                              imageUrl: _currentImage.url,
                              placeholder: (context, url) => Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            child: Favorite(
                              favorite: _currentImage.favorite,
                            ),
                            bottom: 20,
                            right: 20,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                loading
                    ? Positioned(
                        bottom: 0,
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : Positioned(child: SizedBox()),
              ],
            );
          }
        ),
      ),
    );
  }
}
