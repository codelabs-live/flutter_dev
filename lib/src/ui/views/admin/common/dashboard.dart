import 'package:flutter/material.dart';
import 'package:flutter_dev/src/config/size_config.dart';
import 'package:flutter_dev/src/ui/views/admin/phone/phone_dashboard.dart';
import 'package:flutter_dev/src/ui/views/admin/web/web_dashboard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeConfigs.isSmallScreen(context)
        ? PhoneDashboard():WebDashboard();
  }
}
