import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView_builder(),));
}
class ListView_builder extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Builder"),
      ),
      body: ListView(
        children: [
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context,index){
          return const Card(
            child: ListTile(
              title: Text("Hello"),
              subtitle: Text("mydata"),
              leading: Icon(Icons.adb),
              trailing: Icon(Icons.shop_2_outlined),
            ),
          );
        }
        ),
    ]
      ),
    );
  }
}
