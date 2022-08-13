import 'package:dukkan/screens/screen_additional_info.dart';
import 'package:dukkan/screens/screen_catalogue.dart';
import 'package:dukkan/screens/screen_manage_store.dart';
import 'package:dukkan/screens/screen_order.dart';
import 'package:dukkan/screens/screen_payment.dart';
import 'package:dukkan/screens/screen_premium.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHome(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/ava1_loader.gif', fit: BoxFit.cover),
      ),
    );
  }
}

Future<void> gotoHome(context) async {
  await Future.delayed(Duration(seconds: 3));
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (ctx1) => ScreenManageStore(),
    ),
  );
}
