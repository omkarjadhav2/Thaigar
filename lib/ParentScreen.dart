import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thaigar/homepage.dart';
import 'package:thaigar/signin_screen.dart';
import 'package:thaigar/signup_screen.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,

        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}
