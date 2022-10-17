import 'package:flutter/material.dart';
import 'package:proj_test/auth_screen.dart';

import 'constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main(){
  runApp(MyApp());
  configInit();
}

Future<void> configInit() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LeScore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
         filled: true,
         fillColor: Colors.white38,
         border: InputBorder.none,
         hintStyle: TextStyle(color: Colors.white),
         contentPadding: EdgeInsets.symmetric(
             vertical: defpaultPadding * 1.2, horizontal: defpaultPadding),
        ),
      ),
      home: AuthScreen(),
    );
  }
}
