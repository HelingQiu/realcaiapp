import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QHRouter {
  QHRouter._privateConstructor();

  /// 获取上个页面的路由
  static String getPreRoutePath() {
    return Get.previousRoute;
  }

  /// 获取当前页面的路由
  static String getCurrentRoutePath() {
    return Get.currentRoute;
  }

  /// 导航到新页面
  /// name 带跳转的路由名称
  /// arguments 参数
  static Future<T?>? to<T>(
    String name, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) async {
    var result = await Get.toNamed(name,
        arguments: arguments,
        id: id,
        preventDuplicates: preventDuplicates,
        parameters: parameters);

    if (result != null) {
      return (result as T);
    }
  }

  ///关闭当前页面并打开一个新的页面
  static Future<T?>? replace<T>(
    String name, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) async {
    var result = await Get.offNamed(name,
        arguments: arguments,
        id: id,
        preventDuplicates: preventDuplicates,
        parameters: parameters);

    if (result != null) {
      return (result as T);
    }
  }

  ///关闭之前多有页面并打开一个新的页面
  static Future<T?>? replaceAll<T>(String name,
      {RoutePredicate? predicate,
      dynamic arguments,
      int? id,
      Map<String, String>? parameters}) async {
    var result = await Get.offAllNamed(name,
        predicate: predicate,
        arguments: predicate,
        id: id,
        parameters: parameters);

    if (result != null) {
      return (result as T);
    }
  }

  /// 关闭栈内页面直到指定名称的页面并打开一个新的页面
  /// name 新打开页面的路由
  /// untilName 弹出之前的页面一直到路由为untilName的页面
  static Future<T?>? replaceUntil<T>(
    String name,
    String untilName, {
    int? id,
    dynamic arguments,
    Map<String, String>? parameters,
  }) async {
    var result = await Get.offNamedUntil(name, ModalRoute.withName(untilName),
        id: id, arguments: arguments, parameters: parameters);

    if (result != null) {
      return (result as T);
    }
  }

  /// 关闭栈内页面直到指定名称的页面
  /// [untilName] 弹出之前的页面一直到路由为untilName的页面
  static void popUntil<T>(String untilName) async {
    Get.until(
      ModalRoute.withName(untilName),
    );
  }

  /// 当前页面出栈
  /// result 出栈时返回的结果
  static void pop<T>({
    T? result,
    bool canPop = true,
    int? id,
  }) {
    Get.back(result: result, closeOverlays: false, canPop: canPop, id: id);
  }

  static T? getArguments<T>() {
    var args = Get.arguments;
    if (args != null) {
      return (args as T);
    }
    return null;
  }
}
