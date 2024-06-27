

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {

  final void Function()? onTap;


   LoginPage({
     Key? key,
     required this.onTap
   }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  //login method
  void login(){
    
    
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 25,),

            Text(
              'Food Delivery App' ,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25,),

            MyTextField(controller: emailController, hintText: "Email", obsecureText: false),

            SizedBox(height: 10,),

            MyTextField(controller: passwordController, hintText: "Password", obsecureText: true),

            SizedBox(height: 10,),

            MyButton(text: "Sign In", onTap: login) ,

            SizedBox(height: 10,) ,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),

                ),
                SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary ,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
