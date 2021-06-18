import 'package:dev_thingz_hu/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:dev_thingz_hu/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              child: DashboardScreen(),
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}