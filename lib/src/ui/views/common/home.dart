import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_dev/src/config/size_config.dart';
import 'package:flutter_dev/src/ui/views/web/web_home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isWeb = false;

  @override
  void initState() {
    if (kIsWeb) {
      setState(() {
        isWeb = true;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizeConfigs.isLargeScreen(context)?
    const Scaffold(body: WebHome())
        : Scaffold(
            appBar: AppBar(
              title: const Text("Home"),
              centerTitle: false,
            ),
            drawer: const Drawer(),
            body: Container(),
          );
  }
}
