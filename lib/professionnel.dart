import 'package:cv_youssef/brother.dart';
import 'package:cv_youssef/nextlab.dart';
import 'package:cv_youssef/telecom.dart';

import 'academique.dart';
import 'cv.dart';
import 'choix.dart';
import 'package:flutter/material.dart';

import 'opinaka.dart';
import 'telecom.dart';
import 'brother.dart';
import 'nextlab.dart';

class Professionnel extends StatelessWidget {
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
                        radius: 45.0,
                        backgroundImage: AssetImage('images/photo.jpg'),
                      ),
                      SizedBox(
                        width: 10.0,
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
              'Expériences Professionnels / Stages',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return opi();
                        }),
                      );
                    },
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '2021 développeur Web : OPINAKA',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return bro();
                          }),
                        );
                      },
                      child: CarteReutilisable(
                        couleur: Colors.white24,
                        cardChild: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '2019 dév Web: chmekBrother',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return telecom();
                          }),
                        );
                      },
                      child: CarteReutilisable(
                        couleur: Colors.white24,
                        cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '2018-Technicien: Tunisie Telecom',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return nextlab();
                          }),
                        );
                      },
                      child: CarteReutilisable(
                        couleur: Colors.white24,
                        cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '2017 Dev : Next Lab. Solution',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 300.0, 10.0),
              child: Theme(
                data: ThemeData(accentColor: Colors.white24),
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_back, color: Colors.black),
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
        ),
      ),
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
      width: 300.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
