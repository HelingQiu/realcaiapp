import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:flutter/widgets.dart';

class QHObx extends ObxWidget {
  final WidgetCallback builder;

  const QHObx(this.builder, {Key? key}) : super(key: key);

  @override
  Widget build() => builder();
}
