import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SocalButtns extends StatelessWidget {
  const SocalButtns({
    Key? key,
  }) : super(key: key);

  Future<UserCredential> signInWithGoogle() async {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {
          signInWithGoogle();
        }, icon: Image.asset("assets/Google.png")),
       // IconButton(onPressed: () {}, icon: Image.asset("assets/linkedin.png")),
        IconButton(onPressed: () {}, icon: Image.asset("assets/Facebook.png")),
      ],
    );
  }

}
