import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mvvvmgetx/Routes/routes.dart';
import 'package:mvvvmgetx/View/splash_screen.dart';


void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
            home: splashscreen(),
      getPages: 
        Approutes.approutes()

     
     
    );
  }
}
