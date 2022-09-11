import 'package:flutter/material.dart';
import 'home/principal.dart';

class Parcial1 extends StatelessWidget {
  const Parcial1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Parcial1",
      home: Principal(
        backgroundColor: Colors.green,
      ),
    );
  }
}
