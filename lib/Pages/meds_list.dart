import 'package:flutter/material.dart';
import 'package:ilhem/Pages/add_meds.dart';

class MedsList extends StatefulWidget {
  @override
  _MedsListState createState() => _MedsListState();
}

class _MedsListState extends State<MedsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'liste des medicaments',
        ),
      ),
      body: SingleChildScrollView(
              child: Row(
          children: <Widget>[
           
          ],
        ),
      ),
      floatingActionButton :FloatingActionButton(
         tooltip: 'add new med',
         child: Icon(Icons.add),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(
             builder: (BuildContext context ) => new AddMeds()
           ));
          },
          )
    );
  }
}