import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunez/Create.dart';
import 'package:tunez/Forget.dart';
import 'package:tunez/First.dart';
import 'HomePage.dart';

class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo()
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
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    child: Image(image: AssetImage('images/signup.png'),height:227,width: 227,),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        labelText: 'Username',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter valid username ',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        labelText: 'Email',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter valid email ',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        labelText: 'Password',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter your password',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff5454C5))),
                        labelText: 'Confirm Password',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter your password',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xff5454C5), borderRadius: BorderRadius.circular(30),
                  ),

                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>Front()));

                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height:10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Container(
                      padding: EdgeInsets.only(left: 50),

                    child: Text("Already have account?",style: TextStyle(color: Colors.white),),
                    ),
                    Container(
                      child: MaterialButton(
                          onPressed: (){

                            Navigator.push(context,MaterialPageRoute(builder:(context) =>HomePage()));

                          },
                          padding: EdgeInsets.only(right: 40),

                          child:

                          Text('Login', style: TextStyle(color: Colors.blue, fontSize: 15),)),
                    )

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}