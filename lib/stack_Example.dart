import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackEx(),));
}
class StackEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Ex"),),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.black,
            ),
            Positioned(
              top: 288,
              left: 180,
              child: Container(
              height: 300,
              width: 300,
              color: Colors.white,
            ), ),
              Container(
              height: 100,
              width: 100,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
