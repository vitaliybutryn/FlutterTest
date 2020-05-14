import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: View());
  }
}

@override
class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  Color colorCode = Colors.indigo;
  final Random _random = Random();

  void generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
    );
    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        generateRandomColor();
      },
      child: Scaffold(
        backgroundColor: colorCode,
        appBar: AppBar(
          title: Text('Test app for random tap ;)'),
        ),
        body: Center(
          child: _buildTextWidget(),
        ),
      ),
    );
  }

  Widget _buildTextWidget() {
    return Text(
      'Hey There',
      style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    );
  }
}