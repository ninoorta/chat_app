import 'package:flutter/material.dart';
// screens
import 'screens/home/home.dart';
import 'package:chat_app/screens/sign/sign_in.dart';
import 'package:chat_app/screens/sign/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomeScreen(),
        "/sign-up": (context) => SignUpScreen(),
        "/sign-in": (context) => SignInScreen(),
      },
    );
  }
}
