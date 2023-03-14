import 'package:final_hackathon/custom/widget.dart';
import 'package:final_hackathon/utils/color_constant.dart';
import 'package:final_hackathon/views/role.dart';
import 'package:final_hackathon/views/user_login.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Color1.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Icon(Icons.android,size: 200,),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.people),
                    hintText: "Username",
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                  controller: userEmailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                    controller: userPhoneController,
                    decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Phone",
                  enabledBorder: OutlineInputBorder(),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                    controller: userPasswordController,
                    decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var userName = userNameController.text.trim();
                    var userEmail = userEmailController.text.trim();
                    var userphone = userPhoneController.text.trim();
                    var userPassword = userPasswordController.text.trim();
                    SignUpUser(userName, userphone, userEmail, userPassword);
                  },
                  child: Text("Sign Up")),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Role()));
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color1.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserLogin()));
                      },
                      child: Text(
                        "Already have an account SignIn",
                        style: TextStyle(color: Color1.black),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
