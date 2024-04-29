// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget buildOverviewChoiceChip() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.black, Color.fromARGB(255, 204, 138, 201)],
        ),
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.fastfood_outlined,
              color: Colors.white30,
              size: 14,
            ),
            SizedBox(width: 6),
            Text(
              'All Categories',
              style: TextStyle(
                color: Colors.white30,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ],
        ),
      ),
    ),
  );
}
