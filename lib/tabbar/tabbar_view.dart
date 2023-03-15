import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realcaiapp/utils/RouteHelper.dart';
import 'package:realcaiapp/utils/SizeUtil.dart';

import '../center/center_view.dart';
import '../home/home_view.dart';
import '../utils/QHObx.dart';
import 'tabbar_logic.dart';

class TabbarPage extends StatelessWidget {
  final logic = Get.put(TabbarLogic());
  final state = Get.find<TabbarLogic>().state;

  static const String home = "首页";
  static const String mine = "我的";

  @override
  Widget build(BuildContext context) {
    return QHObx(() {
      return Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            IndexedStack(
              index: state.currentIndex.value,
              children: [
                HomePageWrapper(),
                CenterPageWrapper(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.currentIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: mine,
            ),
          ],
          onTap: (index) {
            state.currentIndex.value = index;
            print('index is $index');
          },
        ),
      );
    });
  }
}
