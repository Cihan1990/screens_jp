// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_const, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(children: [
      // Hintergrund
      Positioned.fill(
        child: Image.asset(
          'lib/assets/Hintergründe/bg_startscreen.png',
          fit: BoxFit.cover,
        ),
      ),
      // BIld
      Positioned(
        top: 115,
        left: -20,
        child: Container(
          width: 540,
          height: 540,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('lib/assets/Icons/chick cupcakes_3D.png')
                    .image),
          ),
        ),
      ), // Pfad zum Bild
      //Snack Bild
      Positioned(
        top: 483,
        left: 10,
        child: Container(
          width: 380,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('lib/assets/details/T2.png').image),
          ),
        ),
      ),
      Positioned(
          top: 570,
          left: 22,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(33.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              child: Container(
                width: 350,
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33.0),
                    border: Border.all(
                      color: const Color.fromARGB(255, 135, 135, 135),
                    )),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Feeling Snackish Today?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Explore Angi\'s most popular snack selection and get instantly happy.',
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Color.fromARGB(255, 160, 159, 159),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      ///// Eigentlich der Button, der aber, wegen dem Verlauf, als Container gemacht ist!
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          //Verlauf von links nach rechts
                          colors: [
                            Color.fromARGB(219, 248, 114, 221),
                            Color.fromRGBO(253, 152, 137, 1),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        //boxShadow: <BoxShadow>[
                        //BoxShadow(
                        //  color: Color.fromARGB(255, 247, 2, 96),
                        //blurRadius: 15.0,
                        //offset: Offset(0.0, 0.75))
                        //],
                      ),
                      child: Center(
                        child: Text(
                          'Order Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ))
    ])));
  }
}
