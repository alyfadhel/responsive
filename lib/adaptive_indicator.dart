import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AdaptiveIndicator extends StatelessWidget {


 final String os;
 const AdaptiveIndicator({
   required this.os
  });
  //hello from world
  @override
  Widget build(BuildContext context) {
    if(os == 'android')
    {
      return const CircularProgressIndicator();
    }else{
      return const CupertinoActivityIndicator();
    }

  }
}

//login
//framework

//1- checkout master
//2- update master
//3- create branch
//4- code .....
//5- commit