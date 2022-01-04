import 'cv.dart';
import 'choix.dart';
import 'package:flutter/material.dart';

class LanguesPage extends StatelessWidget {
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
                        radius: 40.0,
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
              'Langues',
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
                  Container(
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage('images/english.png'),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Anglais',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 100.0, horizontal: 40.0),
                    padding: EdgeInsets.all(10.0),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage('images/french.png'),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Français',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage('images/arabe.png'),
                            ),
                            Text(
                              'Arabe',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
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
      width: 200.0,
      height: 90.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
