import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_flutter/desktop.dart';
import 'package:responsive_flutter/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Builder(builder: (context) {
        if(MediaQuery.of(context).size.width.toInt() <= 560)
        {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 0.7,
              ),
              child: const MobileScreen());
        }else{
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.25,
              ),
              child: const DesktopScreen());
        }
      },
      ),
    );
  }
}
