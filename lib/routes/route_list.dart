import 'package:flutter/material.dart';
import 'package:icsd/helper/custom_scaffold.dart';
import 'package:mine/model/route_model.dart';

class MainRoute {
  static String test = "test";
  static String demo = "demo";

  static List<RouteModel> mainRouteList = [
    RouteModel(id: 0, name: "testing", routeName: test, widget: CustomScaffold(child: SizedBox())),
    RouteModel(id: 1, name: "demo", routeName: demo, widget: CustomScaffold(child: SizedBox())),
  ];
}
