import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in progress"),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }
  // Custom Bottom Nav Bar - Message / Call delivery driver
 Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
      ),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          // profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.person),
            ),
          ),
          SizedBox(width: 10,),
          //driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Abhisek" ,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary
              ),),
              Text(
                  "Driver",
                 style: TextStyle(color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),

          Spacer(),

          Row(
            children: [
              // message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(width:10 ,),

              //call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,

                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.call),
                  color: Colors.green,
                ),
              ),
            ],
          )


        ],
      ),
    );
 }
}
