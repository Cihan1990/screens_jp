// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:screens_jp/src/features/main_screen/burger_widget.dart';
import 'package:screens_jp/src/features/main_screen/choicechip.dart';
import 'package:screens_jp/src/features/main_screen/overview_choicechip.dart';
import 'package:screens_jp/src/features/main_screen/product.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key});

  final List<Product> products = [
    moglisCup,
    balusCup,
    waffle,
    stick,
  ];

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "All Categories",
      "Salty",
      "Sweet",
      "Spicy",
      "Sour",
      "Bitter"
    ];
// Hintergrund + Choose Your Favorite Bereich
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/Hintergründe/bg_mainscreen.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 62,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Choose Your Favorite \nSnack',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 8, top: 14, bottom: 14),
                        child: buildOverviewChoiceChip(),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: buildChoiceChip(
                          label: names[index],
                          isSelected: names[index] == 'Salty',
                          backgroundColor:
                              const Color.fromARGB(255, 203, 138, 201),
                          selectedColor:
                              const Color.fromARGB(255, 238, 196, 233)
                                  .withOpacity(0.3),
                          labelColor: names[index] == 'Salty'
                              ? Colors.black
                              : Colors.white,
                          fontWeight: names[index] == 'Salty'
                              ? FontWeight.bold
                              : FontWeight.normal,
                          onTap: () {},
                          showCheckmark: false,
                        ),
                      );
                    }
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: BurgerWidget(),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10, left: 16, top: 20),
                child: Text(
                  "We Recommend",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 300, // Adjust height as needed
                child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _showBottomSheet(context, products[index]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductWidget(product: products[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context, Product product) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 200,
            color: Colors.red,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Bottom sheet'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close bottom sheet'),
                  ),
                ],
              ),
            ));
      });
}
