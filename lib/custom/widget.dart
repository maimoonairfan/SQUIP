import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_hackathon/utils/color_constant.dart';
import 'package:final_hackathon/views/signup_view.dart';
import 'package:final_hackathon/views/user_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

SignUpUser(userName, userphone, userEmail, userPassword) async {
  try {
    print(userName);
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: userEmail,
      password: userPassword,
    );
    var currentUser = FirebaseAuth.instance.currentUser;
    print("useri $currentUser");
    await FirebaseFirestore.instance
        .collection("users")
        .add({
          "userName": userName,
          "userPhone": userphone,
          "userEmail": userEmail,
          "userPassword": userPassword,
          "createAt": DateTime.now(),
          "userId": currentUser!.uid,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

customWidget(context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
          padding: EdgeInsets.all(25),
          child: TextButton(
            child: Text(
              "Login",
              style: TextStyle(color: Color1.black, fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => UserLogin())));
            },
            style: TextButton.styleFrom(
              fixedSize: Size(400, 50),
              backgroundColor: Color1.blue,
              textStyle: const TextStyle(fontSize: 20),
            ),
          )));
}

customSignup(context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
          padding: EdgeInsets.all(25),
          child: TextButton(
            child: Text(
              "Sign Up",
              style: TextStyle(color: Color1.black, fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => SignUp())));
            },
            style: TextButton.styleFrom(
              fixedSize: Size(400, 50),
              foregroundColor: Color1.kPrimaryColor,
              backgroundColor: Color1.kPrimaryLightColor,
              textStyle: const TextStyle(fontSize: 20),
            ),
          )));
}
