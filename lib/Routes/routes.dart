import 'package:get/get.dart';
import 'package:mvvvmgetx/Routes/routes_name.dart';
import 'package:mvvvmgetx/View/splash_screen.dart';

class Approutes{
  static approutes()=>[
    GetPage(name: Routename.splash_screen,page: (() => splashscreen()),
    transitionDuration:Duration(microseconds: 250),
    transition: Transition.leftToRightWithFade 
    
    )

  ];
}