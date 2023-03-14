import 'package:flutter/material.dart';
import 'package:get/get.dart';

///对getx的GetMateralApp进行一次代理操作
class QHMaterialApp {
  QHMaterialApp({
    this.key,
    this.navigatorKey,
    this.home,
    this.routes = const <String, Widget Function(BuildContext)>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.builder,
    this.textDirection,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.themeMode = ThemeMode.system,
    this.locale,
    this.fallbackLocale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.customTransition,
    this.translationsKeys,
    this.translations,
    this.onInit,
    this.onReady,
    this.onDispose,
    this.routingCallback,
    this.defaultTransition,
    this.pages,
    this.opaqueRoute,
    this.enableLog,
    this.logWriterCallback,
    this.popGesture,
    this.transitionDuration,
    this.defaultGlobalState,
    this.smartManagement = SmartManagement.full,
    this.initialBinding,
    this.unknownRoute,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.actions,
  }) {}

  final Key? key;
  final GlobalKey<NavigatorState>? navigatorKey;
  final Widget? home;
  final Map<String, Widget Function(BuildContext)> routes;
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final InitialRouteListFactory? onGenerateInitialRoutes;
  final RouteFactory? onUnknownRoute;
  List<NavigatorObserver> navigatorObservers = <NavigatorObserver>[];
  final TransitionBuilder? builder;
  final String title;
  final GenerateAppTitle? onGenerateTitle;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final ThemeMode themeMode;
  final CustomTransition? customTransition;
  final Color? color;
  final Map<String, Map<String, String>>? translationsKeys;
  final Translations? translations;
  final TextDirection? textDirection;
  final Locale? locale;
  final Locale? fallbackLocale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final Iterable<Locale> supportedLocales;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final Map<LogicalKeySet, Intent>? shortcuts;
  final ThemeData? highContrastTheme;
  final ThemeData? highContrastDarkTheme;
  final Map<Type, Action<Intent>>? actions;
  final bool debugShowMaterialGrid;
  final ValueChanged<Routing?>? routingCallback;
  final Transition? defaultTransition;
  final bool? opaqueRoute;
  final VoidCallback? onInit;
  final VoidCallback? onReady;
  final VoidCallback? onDispose;
  final bool? enableLog;
  final LogWriterCallback? logWriterCallback;
  final bool? popGesture;
  final SmartManagement smartManagement;
  final Bindings? initialBinding;
  final Duration? transitionDuration;
  final bool? defaultGlobalState;
  final List<GetPage>? pages;
  GetPage? unknownRoute;
  RouteInformationProvider? routeInformationProvider;
  RouteInformationParser<Object>? routeInformationParser;
  RouterDelegate<Object>? routerDelegate;
  BackButtonDispatcher? backButtonDispatcher;

  Widget build() {
    return GetMaterialApp(
        key: this.key,
        navigatorKey: this.navigatorKey,
        home: this.home,
        routes: this.routes,
        initialRoute: this.initialRoute,
        onGenerateRoute: this.onGenerateRoute,
        onGenerateInitialRoutes: this.onGenerateInitialRoutes,
        onUnknownRoute: this.onUnknownRoute,
        navigatorObservers: this.navigatorObservers,
        builder: this.builder,
        textDirection: this.textDirection,
        title: this.title,
        onGenerateTitle: this.onGenerateTitle,
        color: this.color,
        theme: this.theme,
        darkTheme: this.darkTheme,
        themeMode: this.themeMode,
        locale: this.locale,
        fallbackLocale: this.fallbackLocale,
        localizationsDelegates: this.localizationsDelegates,
        localeListResolutionCallback: this.localeListResolutionCallback,
        localeResolutionCallback: this.localeResolutionCallback,
        supportedLocales: this.supportedLocales,
        debugShowMaterialGrid: this.debugShowMaterialGrid,
        showPerformanceOverlay: this.showPerformanceOverlay,
        checkerboardRasterCacheImages: this.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: this.checkerboardOffscreenLayers,
        showSemanticsDebugger: this.showSemanticsDebugger,
        debugShowCheckedModeBanner: this.debugShowCheckedModeBanner,
        shortcuts: this.shortcuts,
        customTransition: this.customTransition,
        translationsKeys: this.translationsKeys,
        translations: this.translations,
        onInit: this.onInit,
        onReady: this.onReady,
        onDispose: this.onDispose,
        routingCallback: this.routingCallback,
        defaultTransition: this.defaultTransition,
        getPages: this.pages,
        opaqueRoute: this.opaqueRoute,
        enableLog: this.enableLog,
        logWriterCallback: this.logWriterCallback,
        popGesture: this.popGesture,
        transitionDuration: this.transitionDuration,
        defaultGlobalState: this.defaultGlobalState,
        smartManagement: this.smartManagement,
        initialBinding: this.initialBinding,
        unknownRoute: this.unknownRoute,
        highContrastTheme: this.highContrastTheme,
        highContrastDarkTheme: this.highContrastDarkTheme,
        actions: this.actions);
  }
}
