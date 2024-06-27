
import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_or_register.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      //theme provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      // restaurant provider
      ChangeNotifierProvider(create: (context) => Restaurant()),

    ],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

