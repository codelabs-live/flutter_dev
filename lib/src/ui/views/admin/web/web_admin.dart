import 'package:flutter/material.dart';
import 'package:flutter_dev/src/ui/views/admin/common/dashboard.dart';
import 'package:flutter_dev/src/ui/widgets/admin/admin_drawer.dart';
import 'package:flutter_dev/src/ui/widgets/admin/admin_exports.dart';

class WebAdmin extends StatefulWidget {
  const WebAdmin({Key? key}) : super(key: key);

  @override
  State<WebAdmin> createState() => _WebAdminState();
}

class _WebAdminState extends State<WebAdmin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
              flex: 1,
              child: AdminTopHeader()),
          Expanded(
              flex: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(
                      flex: 3,
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 20, right: 20),
                          child: AdminDrawer())),
                  Expanded(
                      flex: 9,
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 20, right: 20),
                          child: Dashboard()))
                ],
              ))
        ],
      ),
    );
  }
}
