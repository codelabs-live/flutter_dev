import 'package:flutter/material.dart';
import 'package:flutter_dev/src/utils/styles.dart';

class AdminDrawer extends StatefulWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  State<AdminDrawer> createState() => _AdminDrawerState();
}

class _AdminDrawerState extends State<AdminDrawer> {
  bool isUserTap = false;

  onUserTap() {
    setState(() {
      if (isUserTap) {
        isUserTap = false;
      } else {
        isUserTap = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 2,
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 8,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.dashboard_sharp),
                  title: Text('Dashboard'),
                ),
                ListTile(
                  onTap: onUserTap,
                  leading: Icon(Icons.supervised_user_circle),
                  title: Text('Users'),
                  trailing: Icon(
                      isUserTap ? Styles.onTapArrow : Styles.onReleaseArrow),
                ),
                Visibility(
                    visible: isUserTap,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                    )),
                ListTile(
                  onTap: onUserTap,
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  trailing: Icon(
                      isUserTap ? Styles.onTapArrow : Styles.onReleaseArrow),
                ),
                Visibility(
                    visible: isUserTap,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                    ))
              ],
            ),
          )
        ]));
  }
}
