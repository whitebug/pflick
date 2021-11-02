import 'package:business/business.dart';
import 'package:client/client.dart';
import 'package:flutter/material.dart';
import 'package:provider_for_redux/provider_for_redux.dart';

const String homePageName = 'PFlick';

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
      appBar: AppBar(title: const Text(homePageName)),
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
                    return ImageCard(
                      currentImage: _currentImage,
                      openImagePage: openImagePage,
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
