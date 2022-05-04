import 'package:flutter/material.dart';
import 'package:flutter_dev/src/config/routes.dart';
import 'package:flutter_dev/src/ui/utils/maintenance.dart';
import 'package:flutter_dev/src/ui/views/common/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // onGenerateRoute: Routes.controller,
      home: Maintenance(),
    );
  }
}
