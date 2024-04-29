import 'dart:ui';

import 'package:flutter/material.dart';

Widget buildChoiceChip(
    {required bool showCheckmark,
    required String label,
    required bool isSelected,
    required Color backgroundColor,
    required Color selectedColor,
    required Color labelColor,
    required Null Function() onTap,
    required FontWeight fontWeight}) {
  return ChoiceChip(
    showCheckmark: showCheckmark,
    label: Text(
      label,
      style: TextStyle(color: labelColor, fontWeight: fontWeight),
    ),
    selected: isSelected,
    onSelected: (selected) {},
    selectedColor: selectedColor,
    backgroundColor: backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35), // Adjust the radius as needed
      side: const BorderSide(color: Colors.white), // Set the border color
    ),
  );
}
