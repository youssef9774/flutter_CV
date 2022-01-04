import 'package:cv_youssef/professionnel.dart';

import 'choix.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class telecom extends StatelessWidget {
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
                    builder: (context) => Professionnel(),
                  ),
                );
              },
              child: CarteReutilisable(
                couleur: Colors.white24,
                cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('images/telecom.jpg'),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text(
                        'Tunisie Telecom',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              height: 88.0,
            ),
            Text('Tunisie Télécom opérateur de télécommunications en Tunisie. ',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 40.0)),
            Container(
              height: 88.0,
            ),
            RichText(
              text: TextSpan(
                text:
                    '✓ Observation générale sur les technologies utilisées dans les télécommunication ✓ Visite technique pour une station de câblage d une fibre optique installée entre deux régions tunisiennes. ✓ Participation aux tâches du centre de transmission numérique',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.blueGrey,
                ),
              ),
            ),
            RaisedButton(
              child: Text(" Visite le site "),
              onPressed: () => _launchURL('https://www.tunisietelecom.tn/Fr'),
              color: Color(0xff0091EA),
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 300.0, 10.0),
              child: Theme(
                data: ThemeData(accentColor: Colors.grey),
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Professionnel();
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
      height: 100.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

void _launchURL(String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
