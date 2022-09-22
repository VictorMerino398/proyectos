import 'package:flutter/material.dart';
import 'package:parcial2/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial 2 Tortas el Zarco ETPS-3',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(223, 209, 212, 12),
      ),
      home: HomePage(),
    );
  }
}
