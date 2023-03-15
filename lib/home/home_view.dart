import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realcaiapp/utils/Routes.dart';

import '../utils/QHRouter.dart';
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
        actions: [
          IconButton(
              icon: Icon(Icons.message),
              onPressed: () => {
                    //message
                    QHRouter.to(Routes.message)
                  }),
        ],
      ),
      body: Container(),
    );
  }
}
