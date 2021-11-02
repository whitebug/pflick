import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:client/client.dart';
import 'package:flutter/material.dart';
import 'package:provider_for_redux/provider_for_redux.dart';

final navigatorKey = GlobalKey<NavigatorState>();
late Store<ImageListState> store;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await locatorSetup();
  Repository repository = getIt<Repository>();
  var initialState = await ImageListState.initialState(repository: repository);
  NavigateAction.setNavigatorKey(navigatorKey);
  store = Store<ImageListState>(initialState: initialState);
  runApp(MyApp(
    repository: repository,
  ));
}

class MyApp extends StatelessWidget {
  final Repository repository;

  const MyApp({
    required this.repository,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncReduxProvider<ImageListState>.value(
      value: store,
      child: MaterialApp(
        routes: {
          HomePage.route: (BuildContext context) => HomePageConnector(
                repository: repository,
              ),
          ImagePage.route: (BuildContext context) => ImagePageConnector(),
        },
        navigatorKey: navigatorKey,
      ),
    );
  }
}
