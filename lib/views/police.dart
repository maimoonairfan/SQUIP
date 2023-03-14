import 'package:final_hackathon/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
Widget homeSectionBuilder(
    String imageLoc, String text, BuildContext context, String routeName) {

  return Card(
    elevation: 5,
    color: Color1.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      splashColor: Color1.kPrimaryColor,
      child: Container(
        width: 110,
        height: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imageLoc,
              height: 50,
              width: 50,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    ),
  );
}


class MyHomePage extends StatelessWidget {
  Color col = Color(0xfF2F5F6);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color1.kPrimaryColor,
        appBar: AppBar(
          backgroundColor: Color1.white,
          elevation: 0,
          title: Text(
            'SQuiP',
            style: TextStyle(
                color: Color1.kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                fontSize: 35),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Color1.white.withOpacity(0.1), BlendMode.dstATop),
              fit: BoxFit.cover,
              image: AssetImage('assets/images/police_logo.png'),
            ),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  homeSectionBuilder(
                      'assets/images/fir.png', 'File FIR', context, '/victim'),
                  homeSectionBuilder('assets/images/status.png',
                      'Check previous FIR status', context, '/status'),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  homeSectionBuilder('assets/images/station.png',
                      'Nearby Police Station', context, '/station'),
                  homeSectionBuilder('assets/images/rules.png',
                      'Important Information', context, '/information'),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color1.white,
          onPressed: () {
            // _logout();
            Navigator.of(context).pop();
          },
          child: Center(
            child: Icon(
              Icons.exit_to_app,
              color:Color1.indigo ,
            ),
          ),
        ),
      ),
    );
  }
}
