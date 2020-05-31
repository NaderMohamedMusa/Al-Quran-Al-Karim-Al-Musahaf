import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quran/Pages/Home_Page.dart';

class SplashScreen extends StatefulWidget {
  @override
  createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),
            () => Navigator.pushReplacement(context,  MaterialPageRoute(
                builder: (context) =>HomePage())));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              child: Image.asset("assets/images/mohamed.jpg",
                fit: BoxFit.fill,),
            ),
          ),
           Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                  child: Text("\n صدقه جارية على روح الشهيد محمد عوض "
                    "\n نسالكم الدعاء له ان يجعله الله فى منزلة "
                    ,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                    textDirection: TextDirection.rtl,
                  ),

              ),
            ),

          Text("الشهداء",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              color: Colors.brown
            ),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
