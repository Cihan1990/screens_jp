// ignore_for_file: avoid_unnecessary_containers, unnecessary_const, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class ScreenShop extends StatefulWidget {
  const ScreenShop({super.key});
  @override
  State<ScreenShop> createState() => _ScreenShopState();
}

class _ScreenShopState extends State<ScreenShop> {
  String _selection = "Large";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 42, 37, 35),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.cancel,
                                color: Color.fromARGB(255, 77, 75, 75),
                              ),
                              onPressed: () {
                                // Handle cart button press
                              },
                            ),
                          ],
                        ),
                        Image.asset(
                            'lib/assets/Icons/cat cupcakes_3D.png'), // Ersetze dies durch dein Cupcake-Bild
                        const SizedBox(height: 2),
                        Positioned(
                            top: 563,
                            left: 25,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(33),
                                child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 20.0, sigmaY: 20.0),
                                    child: Container(
                                        width: 340,
                                        height: 285,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(33.0),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 135, 135, 135),
                                            )),
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                'Mogli\'s Cup',
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrent. Id aliquet quis quam.',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color.fromARGB(
                                                        255, 160, 159, 159)),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 20),
                                              Text(
                                                'A 8.99',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Divider(
                                                thickness: 0.5,
                                                height: 20,
                                                indent: 20,
                                                endIndent: 20,
                                              ),
                                              const Row(children: [
                                                SizedBox(width: 23),
                                                Text(
                                                  'Ingredients',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromARGB(
                                                          255, 160, 159, 159)),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 126,
                                                ),
                                                Text(
                                                  'Reviews',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromARGB(
                                                          255, 160, 159, 159)),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ]),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  SizedBox(width: 22),
                                                  Image.asset("lib/assets/details/Mask group(2).png"),
                                                  Icon(Icons.cancel,
                                                      color: Colors.white,
                                                      size: 12.0),
                                                  Icon(Icons.cake,
                                                      color: Colors.white,
                                                      size: 12.0),
                                                  Icon(
                                                      Icons
                                                          .local_fire_department,
                                                      color: Color.fromARGB(
                                                          255, 160, 159, 159),
                                                      size: 12.0),
                                                  SizedBox(width: 130),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.white,
                                                    size: 12.0,
                                                  ),
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 12.0),
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 12.0),
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 12.0),
                                                  Icon(Icons.star_border,
                                                      color: Color.fromARGB(
                                                          255, 160, 159, 159),
                                                      size: 12.0),
                                                  SizedBox(width: 4.0),
                                                  Text("4.0",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Color.fromARGB(
                                                              255,
                                                              160,
                                                              159,
                                                              159))),
                                                  SizedBox(width: 30)
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ))))),
                        const SizedBox(height: 32),
                        Row(
                          children: [
                            //SEGMENTED BUTTON
                            SizedBox(
                              height: 30,
                              width: 210,
                              child: SegmentedButton<String>(
                                showSelectedIcon: false,
                                style: ButtonStyle(
                                  textStyle: const MaterialStatePropertyAll(
                                    TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  alignment: Alignment.topCenter,
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return Colors.grey;
                                      }
                                      return Colors.transparent;
                                    },
                                  ),
                                ),
                                segments: const <ButtonSegment<String>>[
                                  ButtonSegment<String>(
                                    value: "Small",
                                    label: Text('Small',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  ButtonSegment<String>(
                                    value: "Medium",
                                    label: Text('Medium',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  ButtonSegment<String>(
                                    value: "Large",
                                    label: Text('Large',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                                selected: <String>{_selection},
                                onSelectionChanged: (Set<String> newSelection) {
                                  setState(() {
                                    _selection = newSelection.first;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 48,
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.remove_circle_rounded,
                                color: Color.fromARGB(255, 77, 75, 75),
                              ),
                              onPressed: () {
                                // Handle quantity decrease
                              },
                            ),
                            const Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add_circle_rounded,
                                  color: Color.fromARGB(255, 77, 75, 75)),
                              onPressed: () {
                                // Handle quantity increase
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32.0,
                        ),
                        Container(
                            ///// Eigentlich der Button, der aber, wegen dem Verlauf, als Container gemacht ist!
                            width: 350,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                //Verlauf von links nach rechts
                                colors: [
                                  Color.fromARGB(219, 248, 114, 221),
                                  Color.fromRGBO(253, 152, 137, 1),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text(
                                'Add to order for A 8.99',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ))
                      ]),
                ))));
  }
}
