import 'package:flutter/material.dart';
import 'package:get_post/screens/splash/SplashImports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      home: SplashScreen(),
      builder: (context,child)=>Directionality(textDirection: TextDirection.rtl,child: child,),
    );
  }
}


