import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confirmPasswordController=TextEditingController();


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
              "Let's create an account for you" ,
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
            
            MyTextField(controller: confirmPasswordController, hintText: "Confirm password", obsecureText: true),

            SizedBox(height: 25,),

            MyButton(text: "Sign Up", onTap: (){}) ,

            SizedBox(height: 25,) ,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account?',
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),

                ),
                SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now',
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
