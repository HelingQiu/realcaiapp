import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'center_logic.dart';

class CenterPageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenterPage();
  }
}

class CenterPage extends StatelessWidget {
  final logic = Get.put(CenterLogic());
  final state = Get.find<CenterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Container(),
    );
  }
}
