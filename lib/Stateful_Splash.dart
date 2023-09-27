import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/loginPage.dart';

void main() {
  runApp(MaterialApp(home: Splash2(),));
}
class Splash2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Splash2State();
}
class Splash2State extends State{
  @override
  void initState(){
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => login_Page()));

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            // color: Colors.cyanAccent
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //     image: NetworkImage("https://plus.unsplash.com/premium_photo-1685656440548-d8cad874d5d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3MHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60")
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.red,
                    Colors.white,
                    Colors.yellow,
                    Colors.black
                  ])



          ),
          child: Center(
              child: Column(


                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/icons/manunited.png"),
                    width: 100,
                    height: 100,
                  ),
                  // Icon(
                  //   Icons.cake_sharp,
                  //   size: 80,
                  //   color: Colors.red,
                  // ),
                  Text(
                      "Welcome RED",
                      style: GoogleFonts.cabinCondensed(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                      ))
                ],
              )
          ),
        )
    );
  }
}


