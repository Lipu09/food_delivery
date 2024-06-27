import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_cart_tile.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart;

      // scaffold UI
      return Scaffold(
        appBar: AppBar(
          title: Text("cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear cart button
            IconButton(
                onPressed: (){
                  showDialog(context: context,
                    builder: (context) =>AlertDialog(
                      title: Text("Are you sure you want to clear the cart ?"),
                      actions: [
                        //cancel button
                        TextButton(
                            onPressed: ()=>Navigator.pop(context),
                            child: Text("Cacel")),

                        //yes button
                        TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                            child: Text("Yes"))
                      ],
                    ) ,);
                },
                icon: Icon(Icons.delete),
            )
          ],
        ),
        body: Column(
          children: [
            //list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty ?
                  Expanded(child: Center(child: Text("Cart is Empty ..."))) :
                  Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
              
                          // get individual cart item
                          final cartItem = userCart[index];
              
                          // return cart tile UI
                          return MyCartTile(cartItem: cartItem);
                        })
                  )
                ],
              ),
            ),
            // button to pay
            MyButton(
                text: "Go to checkout",
                onTap: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentPage(),
                    )),
            ),
            SizedBox(height: 25,),
          ],
        ),
      );
    },);
  }
}
