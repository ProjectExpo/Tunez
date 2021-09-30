import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunez/Create.dart';
import 'package:tunez/Example.dart';
import 'package:tunez/Forget.dart';
import 'package:tunez/First.dart';


class Forget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Color(0xff220E24),
      child: SingleChildScrollView(
        child: Center(
          child: Container(

            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 71),
                  child: Text('Tunez',
                    style: GoogleFonts.lobster(
                        fontSize: 40,
                        color: Colors.white
                    ),),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    child: Image(image: AssetImage('images/login.png'),width: 310,height: 220,),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                      labelText: 'Email',labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),



                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xff5454C5), borderRadius: BorderRadius.circular(30),
                  ),

                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>Example()));

                    },
                    child: Text(
                      'Request OTP',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height:20,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}