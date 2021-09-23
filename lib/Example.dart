import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Route",
      home: Scaffold(
        appBar: AppBar(title: Text("ex"),
        ),
      ),
    );

  }
}