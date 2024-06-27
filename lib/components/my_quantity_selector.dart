import 'package:flutter/material.dart';

import '../models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback OnIncrement;
  final VoidCallback OnDecrement;
  const QuantitySelector({
    Key? key,
    required this.quantity,
    required this.food,
    required this.OnDecrement,
    required this.OnIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //decrease button
          GestureDetector(
            onTap: OnDecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          // quantity button
          Padding(
              padding: EdgeInsets.symmetric(horizontal:8 ),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  quantity.toString()
                ),
              ),
            ),
          ),
          //increase button
          GestureDetector(
            onTap: OnIncrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
