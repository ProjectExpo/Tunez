import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunez/Create.dart';
import 'package:tunez/Forget.dart';
import 'HomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      color: Color(0xff220E24),
      child: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 51),
                  child: Text('Tunez',
                    style: GoogleFonts.lobster(
                      fontSize: 40,
                      color: Colors.white
                  ),),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40, left: 7),
                    width: 368,
                    height: 368,

                    child: Image(image: AssetImage('images/tunezzz.png')),
                  ),
                ),
                SizedBox(
                  height:130,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    color: Color(0xff5454C5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>HomePage()));
                    },
                    child: Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          Container(
                            padding: EdgeInsets.only(left: 10),

                            child: Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white,fontSize: 25),),
                          ),
                          Container(
                            child:
                                Icon(Icons.arrow_forward_ios_rounded,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}