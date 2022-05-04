import 'package:flutter/material.dart';
import 'package:flutter_dev/src/ui/views/admin/common/admin.dart';

import '../ui/views/common/home.dart';



class Routes {
 static Route controller(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context)=> const Admin());
      case '/admin':
        return MaterialPageRoute(builder: (context)=>const Admin());

      default:
        throw UnimplementedError('Error');
    }
  }
}