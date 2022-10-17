import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:proj_test/userPage.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => const UserPageWidget()),
     );
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: SpinKitDualRing(
              color: Colors.white,
              size: 50.0,
            )
        )
    );
  }
}
