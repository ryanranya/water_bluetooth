import 'package:fluro/fluro.dart';
import 'package:jaykey_flutter/routers/i_router.dart';
import 'package:jaykey_flutter/searchBlueTooth/search_bluetooth.dart';

class ScarchBlueToothRouter implements IRouterProvider {
  static String searchBlueToothPage = '/search_bluetooth';

  @override
  void initRouter(FluroRouter router) {
    router.define(searchBlueToothPage,
        handler:
            Handler(handlerFunc: (_, __) => const SearchBlueToothController()));
  }
}
