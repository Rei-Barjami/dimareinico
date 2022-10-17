import 'package:flutter/material.dart';

import '../constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          children: [
            Spacer(flex : 80),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white38,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "Email",
                icon: Icon(Icons.person,color: Colors.white),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defpaultPadding),
              child: TextFormField(

                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white38,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: "Password",
                  icon: Icon(Icons.key,color: Colors.white),

                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white38,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "Confirm Password",
                icon: Icon(Icons.key,color: Colors.white),

              ),
            ),
            Spacer(flex: 100)
          ],
        ),
      ),
    );
  }
}
