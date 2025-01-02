import 'package:icsd/helper/custom_scaffold.dart';
import 'package:icsd/view/events/day_one/day_one_event.dart';
import 'package:icsd/view/events/day_three/day_three_event.dart';
import 'package:icsd/view/events/day_two/day_two_event.dart';
import 'package:mine/model/route_model.dart';

class MainRoute {
  static String dayOne = "day-one";
  static String dayTwo = "day-two";
  static String dayThree = "day-three";

  static List<RouteModel> mainRouteList = [
    RouteModel(id: 0, name: "Day1", routeName: dayOne, widget: CustomScaffold(child: DayOneEvent(isScreen: true))),
    RouteModel(id: 1, name: "Day2", routeName: dayTwo, widget: CustomScaffold(child: DayTwoEvent(isScreen: true))),
    RouteModel(id: 2, name: "Day3", routeName: dayThree, widget: CustomScaffold(child: DayThreeEvent(isScreen: true))),
  ];
}
