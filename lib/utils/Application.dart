import 'package:flutter/cupertino.dart';

class Application {
  static final navKey = GlobalKey<NavigatorState>();

  /// 全局获取MaterialAPP的context
  static BuildContext get appContext {
    return navKey.currentContext!;
  }
}
