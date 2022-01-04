import 'package:cv_youssef/contact.dart';
import 'package:flutter/material.dart';
import 'cv.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    choix(),
  );
}

class choix extends StatefulWidget {
  @override
  _choixState createState() => _choixState();
}

class _choixState extends State<choix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/b2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CV(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    //color: Colors.white,
                    radius: 100.0,
                    backgroundImage: AssetImage('images/photo.jpg'),
                  ),
                ),
                Text(
                  'Youssef SASSI',
                  style: TextStyle(
                    fontFamily: 'Gwendolyn-Bold',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  'Ingenieur en informatique  ',
                  style: TextStyle(
                    fontFamily: 'FuzzyBubbles-Bold',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Mon CV',
                  style: TextStyle(
                    fontFamily: 'FuzzyBubbles-Bold',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                Text('Mon CV'),
                Container(
                  child: Text(
                    'Click my picture',
                    style: TextStyle(
                      fontFamily: 'FuzzyBubbles-Bold',
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white24,
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "+ 33 6 68 40 37 28",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'AdventPro-Light',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white24,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                        child: Divider(
                          color: Colors.white24,
                        ),
                      ),
                      Text(
                        "youssef.sassi@etu.u-pec.fr",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'AdventPro-Light',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white24,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.description,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                        child: Divider(
                          color: Colors.white24,
                        ),
                      ),
                      Text(
                        "https://github.com/youssef9774",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'AdventPro-Light',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white24,
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.assignment_ind,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "https://www.linkedin.com/in/"
                        "\n youssef-sassi-97bb44196/",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'AdventPro-Light',
                        ),
                      ),
                    ],
                  ),
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return contactA();
                        },
                      ),
                    );
                  },
                  label: Text('Contact ( click me)'),
                  icon: Icon(Icons.assignment_ind),
                  backgroundColor: Colors.deepPurple,
                )
              ], // <Widget> []
            ),
          ),
        ),
      ),
    );
  }
}

void _launchURL(String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
