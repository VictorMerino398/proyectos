import 'package:flutter/material.dart';

class detalle extends StatefulWidget {
  detalle({Key? key}) : super(key: key);

  @override
  State<detalle> createState() => _detalleState();
}

class _detalleState extends State<detalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 19, 228),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
    );
  }
}
