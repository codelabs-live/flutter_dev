import 'package:flutter/material.dart';
class WebHome extends StatefulWidget {
  const WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
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
          Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          color: Colors.black12,
                        )),
                    Expanded(
                        flex: 8,
                        child: Container(
                          color: Colors.blue,
                        ))
                  ],
                ),
              )),
          Expanded(
            flex: 11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.red,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
