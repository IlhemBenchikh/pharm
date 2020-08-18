import 'package:flutter/material.dart';
import 'package:ilhem/Pages/calcul.dart';
import 'package:ilhem/Pages/meds_list.dart';
import 'package:ilhem/Pages/stat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[700],
        shape: Border(),
        title: Text('Home'),
        titleSpacing: 2,
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('ilhem'),
              accountEmail: Text('benchikhilhem07@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/Capture.PNG'),
              ),
            ),
            new ListTile(
              title: Text(
                'calcules',
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Calcul()));
              },
            ),
            new ListTile(
              title: Text(
                'grugs list',
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MedsList()));
              },
            ),
            new ListTile(
              title: Text(
                'Statistique du jour',
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Statistique()));
              },
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Text(
                'Liste des relicquats:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(),
          SizedBox(
            height: 500,
          ),
          Container(
              margin: EdgeInsetsDirectional.fromSTEB(140, 0, 50, 0),
              child: FlatButton(
                color: Colors.cyan[700],
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Text(
                  'Calcules',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new Calcul()));
                },
              ))
        ],
      ),
    );
  }
}
