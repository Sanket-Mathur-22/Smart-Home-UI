import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:smart_home_ui/Views/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Oswald-SemiBold',
          useMaterial3: true,
        ),
        home: HomeScreen());
  }
}
