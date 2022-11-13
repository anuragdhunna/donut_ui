import 'package:flutter/material.dart';

class FoodTab extends StatelessWidget {
  final String iconPath;

  const FoodTab({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        iconPath,
        color: Colors.grey[600],
      ),
    );
  }
}
