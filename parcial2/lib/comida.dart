import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2/detalle.dart';

class comida extends StatelessWidget {
  late String image;
  late String title;
  late String flavour;
  late String price;

  comida(this.image, this.title, this.flavour, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(13)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: (detalle()),
                      type: PageTransitionType.scale,
                      alignment: Alignment.center,
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(image),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                  color: Color.fromARGB(255, 31, 7, 141)),
                            ),
                            const SizedBox(
                              height: 0.01,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "\$" + price,
                                  style: const TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 1,
                                      color: Color.fromARGB(255, 13, 167, 20)),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 27,
                                  width: 27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Color(0xff7025c),
                                  ),
                                  child: Icon(
                                    Icons.fastfood,
                                    color: Color.fromARGB(255, 122, 7, 133),
                                    size: 22,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
