import 'package:flutter/material.dart';
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

                    margin: EdgeInsets.all(100),
                    width: 250,
                    height: 200,



                    child: Image(image: AssetImage('images/tunezzz.png')),
                  ),
                ),
                SizedBox(
                  height:130,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(30),

                  ),

                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) =>HomePage()));

                    },
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Container(
                          padding: EdgeInsets.only(left: 50),

                          child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 25),),
                        ),
                        Container(
                          margin: EdgeInsets.all(0),
                          height: 30,
                            width: 50,
                          child: MaterialButton(
                              onPressed: (){

                                Navigator.push(context,MaterialPageRoute(builder:(context) =>HomePage()));

                              },
                              

                              child:

                              Icon(Icons.forward),textColor:(Colors.white),),
                        )

                      ],
                    )

                  ),
                ),
                SizedBox(
                  height:250,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}