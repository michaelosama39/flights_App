import 'package:flights_app/app_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(appRoute: AppRoute(),));
}

class MyApp extends StatelessWidget {
  final AppRoute appRoute;

  const MyApp({Key? key,required this.appRoute}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
    );
  }
}
