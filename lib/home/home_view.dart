import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(),
    );
  }
}