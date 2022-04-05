import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'theme/colors.dart';

import 'utils/auto_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _autoRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          // color: Colors.white,
          titleTextStyle: style.textTheme.titleLarge,
          backgroundColor: Colors.white,
        )
        // textTheme: style.textTheme.copyWith(
        //   titleLarge: 
        // )
        // textTheme: const TextTheme(
        //   bodyText1: TextStyle(debugLabel: 'bodyText1', color: ColorApp.fontPrimary, decoration: TextDecoration.none, fontSize: 12),
        //   bodyText2: TextStyle(debugLabel: 'bodyText2', color: ColorApp.fontPrimary, decoration: TextDecoration.none, fontSize: 14),
        //   subtitle1: TextStyle(debugLabel: 'subtitle1', color: ColorApp.fontGrey, decoration: TextDecoration.none, fontSize: 12),
        //   subtitle2: TextStyle(debugLabel: 'subtitle2', color: ColorApp.fontGrey, decoration: TextDecoration.none, fontSize: 10),
          
           
        // ),
      ),
      routerDelegate: _autoRouter.delegate(
        navigatorObservers: () => [AutoRouteObserver(), MyObserver()],
        // navigatorObservers: () => [AutoRouteObserver(), MyObserver()],
      ),
      routeInformationParser: _autoRouter.defaultRouteParser(),
    );
  }
}
