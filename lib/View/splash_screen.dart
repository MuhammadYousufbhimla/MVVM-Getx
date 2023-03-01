import 'package:flutter/material.dart';
import 'package:mvvvmgetx/data/app_exception.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash screen"),),
      body: Container(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("object");
          InternetException('Error');
      }),
    );
  }
}