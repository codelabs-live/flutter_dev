import 'package:flutter/material.dart';

import '../ui/views/common/home.dart';



class Routes {
 static Route controller(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context)=> const Home());
      case '/home':
        return MaterialPageRoute(builder: (context)=>const Home());

      default:
        throw UnimplementedError('Error');
    }
  }
}