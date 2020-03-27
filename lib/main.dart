import 'package:flutter/material.dart';
import 'package:patient/screens/onboarding/BpPassportConfirmationScreen.dart';
import 'package:patient/screens/onboarding/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff0c3966),
        primaryColorDark: const Color(0x140c3966),
        accentColor: const Color(0xff007a31),
      ),
      home: SplashScreen(),
    );
  }
}
