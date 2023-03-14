import 'package:final_hackathon/utils/color_constant.dart';
import 'package:final_hackathon/views/call.dart';
import 'package:final_hackathon/views/role.dart';
import 'package:final_hackathon/views/signup_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
      TextEditingController userEmailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
    login(context) async {
      try {
        final credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: userEmailController.text,
          password:userPasswordController.text,
        );
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute(builder: (context) => Call()));
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

    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(
            Icons.android,
            size: 150,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Hello Again!",
            style: TextStyle(fontSize: 52),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text("Welcome back, you\'ve been missed",
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color1.grey,
                  border: Border.all(color: Color1.white),
                  borderRadius: BorderRadius.circular(12)),
              child:  Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: TextField(
                  controller: userEmailController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color1.grey,
                  border: Border.all(color: Color1.white),
                  borderRadius: BorderRadius.circular(12)),
              child:  Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: TextField(
                  controller: userPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => Role())));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color1.lightblue, Color1.lightblue]),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Color1.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //not a member? Register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Not a member ? ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => SignUp())));
                  },
                  child: Text("Register Now"))
            ],
          )
        ]),
      ),
    );
  }
}
