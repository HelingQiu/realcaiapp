import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:realcaiapp/tabbar/tabbar_view.dart';
import 'package:realcaiapp/utils/Application.dart';
import 'package:realcaiapp/utils/Routes.dart';
import 'package:realcaiapp/utils/QHMaterialApp.dart';

import 'ChatScreen.dart';

void main() {
  runApp(RootPage());
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return BodyState();
  }
}

class BodyState extends State<RootPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  BodyState() {}

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle uiStyle = SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    );
    SystemChrome.setSystemUIOverlayStyle(uiStyle);

    final app = ScreenUtilInit(
      designSize: const Size(375, 662),
      builder: (context, child) {
        return QHMaterialApp(
          navigatorKey: Application.navKey,
          title: "真精彩",
          pages: getPages,
          defaultTransition:
              GetPlatform.isIOS ? Transition.native : Transition.rightToLeft,
          home: TabbarPage(),
        ).build();
      },
    );
    return app;
  }
}
