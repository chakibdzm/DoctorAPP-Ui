import 'package:doctor/Screens/firsyscreen/Onboarding.dart';
import 'package:doctor/Screens/profile/Profile_patient.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor app',
        theme: ThemeData(
          fontFamily: 'GTWalsheimPro',
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          primarySwatch: Colors.blue,
        ),
        home:Onboarding(),
    );
  }
}

