// @dart=2.9
import 'package:flutter/material.dart';
import 'package:zebra_raya/pages/home_page.dart';
import 'package:zebra_raya/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}
