import 'package:flutter/material.dart';
import 'package:parcial2/comida.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(20, 48, 20, 0),
      child: Column(
          //mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          crossAxisAlignment:
              CrossAxisAlignment.center, //alinea al lado izquierdo
          children: [
            Container(
              //dibuja boton de menu
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Color(0xFF323232), boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 2.0,
                )
              ]),
              child: const Icon(
                Icons.restaurant_menu,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/pict/LogoTortas.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "Tortas y Variados el Zarco",
              style: TextStyle(
                color: Color.fromARGB(206, 31, 5, 175),
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              child: TextField(
                cursorColor: Colors.white.withOpacity(0.3),
                decoration: InputDecoration(
                    //buscar
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0.0),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    hintText: "Buscar Tu Comida o Combo"),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TabBar(
              indicatorColor:
                  Color.fromARGB(255, 29, 215, 240), //menu activo border
              unselectedLabelColor:
                  Color.fromARGB(251, 131, 9, 4), //menu inactivo
              labelColor: Color.fromARGB(255, 29, 215, 240), //menu activo
              isScrollable: true,
              labelStyle: const TextStyle(fontSize: 17.0),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Tortas",
                ),
                Tab(
                  text: "Pizza",
                ),
                Tab(
                  text: "Hamburguesa",
                ),
                Tab(
                  text: "Pollo",
                ),
                Tab(
                  text: "Tacos",
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Expanded(
                child: TabBarView(
              // ignore: sort_child_properties_last
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/t1.jpg",
                      "Torta Mexicana",
                      "t1",
                      "3.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/t2.jpg",
                      "Torta de Pollo",
                      "t2",
                      "2.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/t3.jpg",
                      "Torta de Carne",
                      "t3",
                      "3.00",
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/p1.jpg",
                      "Pizza de Hongos",
                      "p1",
                      "15.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/p2.jpg",
                      "Pizza de Piña",
                      "p2",
                      "12.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida("assets/pict/p3.jpg", "Pizza de Pepperoni", "p2",
                        "14.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                        "assets/pict/p4.jpg", "Pizza de Jamon", "p2", "11.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                        "assets/pict/p5.jpg", "Pizza de Queso", "p2", "14.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/h1.jpg",
                      "Hamburguesa de Pollo",
                      "h1",
                      "5.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h2.jpg",
                      "Hamburguesa doble Carne",
                      "h2",
                      "8.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h3.jpg",
                      "Hamburguesa de queso",
                      "h3",
                      "3.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h4.png",
                      "Hamburguesa doble Queso",
                      "h4",
                      "5.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h5.jpg",
                      "Hamburguesa Bacon",
                      "h5",
                      "6.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida("assets/pict/po1.jpg", "Pollo Rostizado", "po1",
                        "5.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida("assets/pict/po2.jpg", "Pollo Empanizado", "po2",
                        "6.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/po3.jpg",
                      "Pollo Encobellado",
                      "po3",
                      "3.50",
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/ta1.jpg",
                      "Tacos de Carne",
                      "ta1",
                      "3.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/ta2.jpg",
                      "Tacos de Poll",
                      "ta2",
                      "3.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/ta3.jpg",
                      "Tacos de Jamon",
                      "ta3",
                      "2.75",
                    ),
                  ],
                ),
              ],
              controller: _tabController,
            )),
          ]),
    ));
  }
}
