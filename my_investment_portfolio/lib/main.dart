import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/App/app_context.dart';
import 'package:my_investment_portfolio/App/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppContext.context = context;

    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: Routes.getAppRoutes(),
      theme: ThemeData.dark(),
      navigatorKey: NavigatorApp.navigatorKey,
    );
  }
}
