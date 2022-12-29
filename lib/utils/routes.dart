import 'package:flutter/material.dart';
import 'package:sarvatman/screens/prod_detail_screen.dart';

import 'package:sarvatman/utils/constant.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
//    "/productDetail": (BuildContext context) =>
    Constants.ROUTE_PRODUCT_DETAIL: (BuildContext context) => DetailPage(),
  };
}
