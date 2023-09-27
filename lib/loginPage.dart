import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RegistrationPage.dart';

void main(){
  runApp(MaterialApp(home: login_Page(),));
}
class login_Page extends StatelessWidget {
  String username = "admin@gmail.com";
  String password = 'abc123';

  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context){
  return Scaffold(
  backgroundColor: Colors.redAccent,
  appBar: AppBar(
  backgroundColor: Colors.black,
  title: Text("Login Page"),
  ),
  body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
  children: [
  Image.asset("assets/icons/manunited.png",height: 100,width: 100,),
  Text("Manchester United",
  style: GoogleFonts.caesarDressing(
  fontSize: 35,
  fontWeight: FontWeight.bold,
  color: Colors.yellowAccent
  ),
  ),
  Padding(
  padding: const EdgeInsets.symmetric(vertical: 15),
  child: TextField(
  decoration: InputDecoration(
  hintText: "User Name",
  labelText: "User Name",
  helperText: "!!User Name must be an email!!",
  prefixIcon: Icon(Icons.account_circle),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(15.0))
  ),
  ),
  ),
  ),
  Padding(
  padding: const EdgeInsets.only(bottom: 15),
  child: TextField(
  decoration: InputDecoration(
  hintText: "PassWord",
  labelText: "Password",
  helperText: "!!Password must contain 6 characters!!",
  prefixIcon: Icon(Icons.password),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(15.0))
  ),
  ),
  ),
  ),

  // TextField(),
  // TextField(),
  ElevatedButton(
  onPressed: () {}, child: Text("Login")),
  TextButton(onPressed: (){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistrationPage()));
  },
  child: Text("Not a user? SignUP Here!!!"))
  ],
  ),
  ),
  );
  }

}