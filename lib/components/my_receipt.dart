import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 25,right: 25,bottom: 25,top: 50),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Thank you for your order"),
          SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color:Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(25),
            child: Consumer<Restaurant>(
              builder: (context, restaurant, child) => Text(restaurant.displayCartReceipt()),),
          ),
          SizedBox(height: 25,),
          Text("Estimated delivery time is : 4:10 PM"),
        ],
      ),
    ),
    );
  }
}
