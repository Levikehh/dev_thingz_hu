import 'package:dev_thingz_hu/screens/components/my_files.dart';
import 'package:dev_thingz_hu/screens/components/storage_details.dart';
import 'package:flutter/material.dart';
import 'package:dev_thingz_hu/constants.dart';
import 'package:dev_thingz_hu/screens/components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: MyFiles(),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

