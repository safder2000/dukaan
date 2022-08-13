import 'package:dukkan/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dukkan());
}

class Dukkan extends StatelessWidget {
  const Dukkan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dukaan clone',
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 20, 110, 180),
          fontFamily: 'Sen',
        ),
        home: SplashScreen());
  }
}
