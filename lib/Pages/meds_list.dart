import 'package:flutter/material.dart';
import 'package:ilhem/Pages/add_meds.dart';
import 'dart:async';
import 'package:ilhem/models/drugs.dart';
import 'package:ilhem/utils/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class MedsList extends StatefulWidget {
  @override
  _MedsListState createState() => _MedsListState();
}

class _MedsListState extends State<MedsList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Drugs> drugsList;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (drugsList == null) {
      drugsList = List<Drugs>();
      updateListView();
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[700],
          title: Text(
            'drugs list',
          ),
        ),
        body: getMedsListView(),
        // SingleChildScrollView(

        //   child: Row(
        //     children: <Widget>[],
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'add a new drug',
          child: Icon(Icons.add),
          backgroundColor: Colors.cyan[700],
          onPressed: () {
            debugPrint('fab clicked');
            navigateToAddMeds(
                Drugs('', '', 1, 0, 0, 0, 0, 0, 1), 'add a new drug');
          },
        )
        // )
        );
  }

  ListView getMedsListView() {
    void _delete(BuildContext context, Drugs drugs) async {
      int result = await databaseHelper.deleteDrug(drugs.name);
      if (result != 0) {
        _showSnackBar(context, 'drug deleted successfully');
        updateListView();
      }
    }

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.cyan[700],
              child: Icon(Icons.arrow_right),
            ),
            title: Text(
              this.drugsList[position].name,
              //style: ,
            ),
            subtitle: Text('dummy text'),
            trailing: GestureDetector(
              child: Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              onTap: () {
                _delete(context, drugsList[position]);
              },
            ),
            onTap: () {
              debugPrint('ListTile tapped ');
              navigateToAddMeds(this.drugsList[position], 'drug detail');
            },
          ),
        );
      },
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<void> navigateToAddMeds(Drugs drugs, String title) async {
    bool result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => new AddMeds(drugs, title)));
    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Drugs>> drugListFuture = databaseHelper.getDrugList();
      drugListFuture.then((drugsList) {
        setState(() {
          this.drugsList = drugsList;
          this.count = drugsList.length;
        });
      });
    });
  }
}
