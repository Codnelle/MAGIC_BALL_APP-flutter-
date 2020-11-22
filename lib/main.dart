import 'dart:math';

import 'package:flutter/material.dart';

void main() { 
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
             backgroundColor: Colors.blue,
             title: Text('Magic Ball 8'),
             ),
             body: MagicPage(),
          ),
      ),
    );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int picNumber=2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          print('Button was pressed.');
          setState(() {
          picNumber = Random().nextInt(5)+1;
        });
        },
        child: Image.asset('images/ball$picNumber.png'),
      ),
      
    );
  }
}
