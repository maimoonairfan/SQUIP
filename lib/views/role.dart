import 'package:final_hackathon/main.dart';
import 'package:final_hackathon/utils/color_constant.dart';
import 'package:final_hackathon/views/call.dart';
import 'package:final_hackathon/views/google_map.dart';
import 'package:final_hackathon/views/police.dart';
import 'package:final_hackathon/views/user_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Role extends StatelessWidget {
  const Role({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color1.white,
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(children: [
                Positioned(
                  left: 30,
                  width: 80,
                  height: 200,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/light-1.png'))),
                  ),
                ),
                Positioned(
                  left: 140,
                  width: 80,
                  height: 150,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png'))),
                  ),
                ),
                Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/clock.png'))),
                    )),
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      "Role",
                      style: TextStyle(
                          color: Color1.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color1.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => MyMap())));
                    },
                    child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color1.kPrimaryColor,
                              Color1.kPrimaryLightColor
                            ])),
                        child: Center(
                            child: Text(
                          " Firebrigade",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Color1.white),
                        ))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Call())));
                    },
                    child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color1.kPrimaryColor,
                              Color1.kPrimaryLightColor
                            ])),
                        child: Center(
                            child: Text(
                          " Ambulance ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Color1.white),
                        ))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Call())));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color1.kPrimaryColor,
                                Color1.kPrimaryLightColor
                              ])),
                          child: Center(
                              child: Text(
                            " Police ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color1.white),
                          ))),
                    ),
                  ),
                ],
              ),
            ),
          ])),
        ));
  }
}
