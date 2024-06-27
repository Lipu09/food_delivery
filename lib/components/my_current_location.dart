import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({Key? key}) : super(key: key);
  
  void openLoctionSearchBox(BuildContext context){
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text("Your location"),
          content: TextField(decoration: InputDecoration(hintText: "Search address..."),
          ),
          actions: [
            //cancel
            MaterialButton(onPressed: ()=>Navigator.pop(context),
              child: Text("Cancel"),
            ),
            
            //save
            MaterialButton(onPressed: ()=> Navigator.pop(context),
              child: Text("Save"),
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver now", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
          GestureDetector(
            onTap: ()=>openLoctionSearchBox(context),
            child: Row(
              children: [
                Text("6901 Hollowood Blv" ,
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  )),
                  
                  
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
