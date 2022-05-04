import 'package:flutter/material.dart';
class Maintenance extends StatefulWidget {
  const Maintenance({Key? key}) : super(key: key);

  @override
  State<Maintenance> createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://wirebox.co.uk/wp-content/uploads/2021/01/shutterstock_1437019394-1443x909.jpg',),fit: BoxFit.cover)
      ),
    );
  }
}
