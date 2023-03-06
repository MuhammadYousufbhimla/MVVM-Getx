import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:mvvvmgetx/assetss/color.dart';

class utils{
  static void fieldfocuschange(BuildContext context,FocusNode current ,FocusNode nextfocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextfocus);
  }

  static toastmsg(String msg){
Fluttertoast.showToast(msg: msg,backgroundColor: appcolor.blackcolor);
  }
  
}