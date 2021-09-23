import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Route",
      home: Scaffold(
        appBar: AppBar(title: Text("frotn"),
        ),
      ),
    );

  }
}