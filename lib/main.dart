import 'package:dev_thingz_hu/theme.dart';
import 'package:flutter/material.dart';
import 'package:dev_thingz_hu/screens/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'thingz Developer Site',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      home: MainScreen(),
    );
  }
}
