import 'package:final_hackathon/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color1.white,
          title: Center(
            child: Text(
              "Emergency Call",
              style: TextStyle(fontWeight: FontWeight.w700, color: Color1.red),
            ),
          ),
          actions: [
            Icon(
              Icons.more_vert,
              color: Color1.black,
            )
          ],
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    launch("tel:1020");
                  },
                  child: const Image(
                      image: AssetImage('assets/images/Emergency_call.png')),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "For Emergency Incident",
                  style: TextStyle(
                      color: Color1.grey, fontWeight: FontWeight.w500),
                )
              ]),
        ));
  }
}

