import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample_flutter/ListView_builder.dart';
import 'package:sample_flutter/Stateful_login.dart';
import 'package:sample_flutter/listview_separator.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppBar1(),));
}
class AppBar1 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search_rounded),
            PopupMenuButton(itemBuilder: (context){
              return [

                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Linked Devices")),
                PopupMenuItem(child: Text("Starred Messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),

              ];
            })
          ],
          bottom: PreferredSize(preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: Container(
            child: TabBar(
              tabs: [
                Tab(
                  icon: FaIcon(FontAwesomeIcons.users),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ],
            ),
          ),),
        ),
        body: TabBarView(
          children: [
            Login_stateful(),
            ListView_Separated(),
            ListView_builder(),

          ],
        ),
      ),
    );
  }
}
