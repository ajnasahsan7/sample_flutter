
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: SplashPage(),));
}
class SplashPage extends StatelessWidget{
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
            Colors.white,
            Colors.black12,
            Colors.black26,
            Colors.black38,
            Colors.black45,
            Colors.black54,
            Colors.black87,
            Colors.black
          ])



        ),
          child: Center(
            child: Column(


            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/image/earth.png"),
                width: 100,
                height: 100,


              ),
              // Icon(
              //   Icons.cake_sharp,
              //   size: 80,
              //   color: Colors.red,
              // ),
              Text(
                  "HBD SHAMSASALIH",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.cyanAccent,
                  fontWeight: FontWeight.bold
                  ))
            ],
          )
          ),
        )
    );
  }
}
