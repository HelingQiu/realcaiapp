import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:realcaiapp/center/center_view.dart';
import 'package:realcaiapp/home/home_view.dart';
import 'package:realcaiapp/message/message_view.dart';
import 'package:realcaiapp/tabbar/tabbar_view.dart';

class Routes {
  static const String root = "/root";
  static const String home = "/home";
  static const String center = "/center";
  static const String message = "/message";
}

/// 路由列表
List<GetPage> getPages = [
  GetPage(name: Routes.root, page: () => TabbarPage()),
  GetPage(name: Routes.home, page: () => HomePage()),
  GetPage(name: Routes.center, page: () => CenterPage()),
  GetPage(name: Routes.message, page: () => MessagePage()),
];
