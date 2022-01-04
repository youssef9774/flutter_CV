import 'package:flutter/material.dart';
import 'choix.dart';

void main() => runApp(CurriculumVitae());

class CurriculumVitae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/image_de_fond.jpg'),
              fit: BoxFit.fill,
            )
          ),
        ),*/
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: choix(),
    );
  }
}
