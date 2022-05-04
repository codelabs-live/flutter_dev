import 'package:flutter/material.dart';
import 'package:flutter_dev/src/config/size_config.dart';
import 'package:flutter_dev/src/ui/views/admin/phone/phone_admin.dart';
import 'package:flutter_dev/src/ui/views/admin/web/web_admin.dart';

class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeConfigs.isSmallScreen(context) ? const PhoneAdmin():const WebAdmin();
  }
}
