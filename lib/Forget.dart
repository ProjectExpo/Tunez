import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunez/Create.dart';
import 'package:tunez/Example.dart';
import 'package:tunez/Forget.dart';
import 'package:tunez/First.dart';

class Forget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Route",
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


                  ),
                ),
                Padding(

                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Trouble Logging In ",


                       ),
                  ),

                Padding(

                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'Enter Email or Username',hintStyle: TextStyle(color: Colors.white)),
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
                      Navigator.push(context,MaterialPageRoute(builder:(context) =>(Example())));

                    },
                    child: Text(
                      'Login',
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


                    Text("New Account ?",style: TextStyle(color: Colors.white),),
                    Container(
                      child: MaterialButton(
                          onPressed: (){

                            Navigator.push(context,MaterialPageRoute(builder:(context) =>Create()));

                          },
                          padding: EdgeInsets.all(0),

                          child:

                          Text('Create Account', style: TextStyle(color: Colors.blue, fontSize: 15),)),
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