import 'package:baraban_dart/pages/questionNum.dart';
import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {
  static const String id="first_screen";

  const FirstPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

      ),

      body: Center(
        child: Text(
          "Xalilov Yuldoshev",
        ),
      ),
    );
  }
}
