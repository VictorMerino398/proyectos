import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  Principal({Key? key, required Color backgroundColor}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Esto es el Parcial 1"),
          titleSpacing: 10.0,
          centerTitle: true,
          toolbarHeight: 50,
          toolbarOpacity: 0.8,
          elevation: 8.0,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                Text(" PARCIAL I - ETPS3! "),
              ],
            ),
            Column(
              children: [
                Text("VICTOR RODRIGO MERINO BENAVIDES"),
                Text("25-369-2017"),
              ],
            ),
            Container(
              margin: EdgeInsets.all(100.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThN29aKFzE3UjTR8oEFSBwxbbxjIM-ywOrHQ&usqp=CAU"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText: 'Carnet',
                        labelText: 'Ingresar su número de carnet',
                        prefixIcon: Icon(Icons.confirmation_number))),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText: 'Nombre',
                        labelText: 'Ingresar sus nombres',
                        prefixIcon: Icon(
                          Icons.account_circle,
                        ))),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: 'Apellido',
                      labelText: 'Ingresar sus apellidos',
                      prefixIcon: Icon(
                        Icons.account_circle,
                      )),
                ),
                TextField(
                  maxLines: 20,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: 'Dirección',
                      labelText: 'Ingresar su dirección completa',
                      prefixIcon: Icon(Icons.home)),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: 'Contraseña',
                      labelText: 'Ingresar su contraseña',
                      prefixIcon: Icon(Icons.password)),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: 'Ingrese su contraseña',
                      labelText: 'Reingresar nuevamente su contraseña',
                      prefixIcon: Icon(Icons.edit)),
                ),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText: 'Correo Electrónico',
                        labelText: 'Ingresar su correo electrónico',
                        prefixIcon: Icon(
                          Icons.alternate_email,
                        ))),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 45),
                    primary: Colors.blueAccent, // Background color
                  ),
                  child: const Text(
                    'INGRESAR',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red // Background color
                      ),
                  child: const Text(
                    'CANCELAR',
                    style: TextStyle(fontSize: 35),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
