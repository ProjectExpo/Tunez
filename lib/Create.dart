import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunez/Create.dart';
import 'package:tunez/Forget.dart';
import 'package:tunez/Front.dart';
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

      child: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: BoxDecoration(


              color:Color(0xff220E24),

            ),

            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 100),
                    width: 250,
                    height: 200,

                    child: Image(image: AssetImage('images/signup.png'),),
                  ),
                ),
                Padding(

                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter valid username ',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),

                Padding(

                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter valid email ',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),

                  child: TextField(

                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter your password',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),

                  child: TextField(

                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter your password',hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),

                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(30),

                  ),

                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) =>Front()));

                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height:20,
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