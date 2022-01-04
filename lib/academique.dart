import 'cv.dart';
import 'choix.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AcademiquePage extends StatelessWidget {
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
              'Formation Académique',
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
                              '2020 - Present : ITS-UPEC EPISEN, Paris',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    //Container(

                    onPressed: () => _launchURL(
                        'https://episen.u-pec.fr/formations/technologies-pour-la-sante-its'),
                  ),
                  RaisedButton(
                    color: Colors.black.withOpacity(0.05),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '2019 - 2020 : Estiam, Paris',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    onPressed: () => _launchURL(
                        'https://www.estiam.education/l-ecole-pourquoi-etudier-a-estiam/?gclid=Cj0KCQiA8ICOBhDmARIsAEGI6o0jH0k2WGwrSoqlpl1mlomNXHzfT36jTx_t1bXVmoCFCapUwBxX7foaAibwEALw_wcB'),
                  ),
                  RaisedButton(
                    color: Colors.black.withOpacity(0.05),
                    child: CarteReutilisable(
                      couleur: Colors.white24,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '2017 - 2019 : ISITCOM Tunisie',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () => _launchURL('http://www.isitcom.rnu.tn'),
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
