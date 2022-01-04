import 'choix.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cv.dart';

class contactA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/b2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => choix(),
                    ),
                  );
                },
                child: CarteReutilisable(
                  couleur: Colors.white24,
                  cardChild: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage('images/photo.jpg'),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Youssef SASSI',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ),
              Text(
                'Contact',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                  child: Column(
                children: <Widget>[
                  RaisedButton(
                    color: Colors.black.withOpacity(0.05),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Linkedin',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    onPressed: () {
                      customLaunch(
                          'https://www.linkedin.com/in/youssef-sassi-97bb44196/');
                    },
                  ),
                  RaisedButton(
                    color: Colors.black.withOpacity(0.05),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Github',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    onPressed: () {
                      customLaunch('https://github.com/youssef9774');
                    },
                  ),
                  RaisedButton(
                    color: Colors.black.withOpacity(0.05),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    onPressed: () {
                      customLaunch(
                          'mailto:youssef.sassi@etu.u-pec.fr?subject=test%20subject&body= i like your application i want you to be in my team Mr SASSI youssef');
                    },
                  ),
                  RaisedButton(
                    color: Colors.black.withOpacity(0.05),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Phone',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    onPressed: () {
                      customLaunch('tel:+33668403728');
                    },
                  ),
                  RaisedButton(
                    color: Colors.black.withOpacity(0.05),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'SMS',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    onPressed: () {
                      customLaunch('sms:+33668403728');
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(250.0, 10.0, 0.0, 10.0),
                    child: Theme(
                      data: ThemeData(accentColor: Colors.white24),
                      child: FloatingActionButton(
                        child: Icon(Icons.arrow_forward, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CV();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )),
            ],
          )),
    );
  }
}

class CarteReutilisable extends StatelessWidget {
  final Color couleur;
  final Widget cardChild;
  CarteReutilisable({@required this.couleur, @required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      width: 200.0,
      height: 90.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

/*void _launchUrl(String url) async {
 if (await canLaunch(url)) {
await launch(url);
 } else {
   throw ' erreur';
}
} */
void _launchURL(String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print(' could not launch $command');
  }
}

@override
Widget build(BuildContext context) {
  var cardChild;
  var white;
  return Container(
    child: cardChild,
    margin: EdgeInsets.all(10.0),
    width: 300.0,
    height: 100.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}
