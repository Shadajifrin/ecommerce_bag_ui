import 'dart:async';

import 'package:ecommerce_bag_ui/screens/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) { 
    Timer(const Duration(seconds: 5), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    });

    return Scaffold(
      backgroundColor: Colors.red,
     body: Center(
      child:Icon(Icons.shopping_bag,color: Colors.white,size: 100,)
     ),
    );
  }
}