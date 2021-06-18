import 'package:dev_thingz_hu/constants.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.home,
                color: bgColor,
              ),
            ),
            DrawerListTile(
              title: "Dashboard",
              icon: Icon(
                Icons.home,
                color: bgColor,
                size: 18,
              ),
              press: () {},
            ),
            DrawerListTile(
              title: "Users",
              icon: Icon(
                Icons.group,
                color: bgColor,
                size: 18,
              ),
              press: () {},
            ),
            DrawerListTile(
              title: "Documents",
              icon: Icon(
                Icons.library_books,
                color: bgColor,
                size: 18,
              ),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          color: bgColor,
        ),
      ),
    );
  }
}
