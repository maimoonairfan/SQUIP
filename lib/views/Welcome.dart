import 'package:final_hackathon/custom/widget.dart';
import 'package:final_hackathon/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color1.transparent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
            ),
            Center(
              child: Text(" SQuiP ",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color1.kPrimaryColor)),
            ),
            Image.asset(
              "assets/images/image1_tr.png",
              width: size.width * 0.90,
            ),
            SizedBox(height: size.height * 0.1),
            customWidget(context),
             customSignup(context)

          ],
        ),
      ),
    );
  }
}
