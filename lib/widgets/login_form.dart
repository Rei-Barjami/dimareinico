import 'package:flutter/material.dart';

import '../constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 80),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white60,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                icon: Icon(Icons.person),
                hintText: "Email",
                hintStyle: TextStyle(color: Color(0xFF000000)),
              ),
            ),
            Spacer(flex: 1),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: defpaultPadding),
              child: TextFormField(

                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white60,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  icon: Icon(Icons.key),

                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xFF000000)),
                ),
              ),
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color:  Color(0xFF000000)),
              ),
            ),
            Spacer(flex: 100),

          ],
        ),
      ),
    );
  }
}
