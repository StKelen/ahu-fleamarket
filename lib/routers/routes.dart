import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'router_handler.dart';
import 'package:flea_market/common/config/routes.dart';

class Routes {

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return null;
    });
    router.define(RoutesPath.loginPage, handler: LoginHandler);
  }
}
