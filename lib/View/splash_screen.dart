import 'package:flutter/material.dart';
import 'package:mvvvmgetx/res/images_assets.dart';
import '../data/app_exception.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash screen"),
      ),
      body:  Image(image: AssetImage(ImageAssets.splash)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("object");

        internetExceptions("Exception", "No Internet");
      
        
      }
      
      ),
    
    );
  }
}
