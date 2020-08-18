import 'package:flutter/material.dart';
import 'package:ilhem/Pages/add_meds.dart';

class MedsList extends StatefulWidget {
  @override
  _MedsListState createState() => _MedsListState();
}

class _MedsListState extends State<MedsList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
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
            navigateToAddMeds('add a new drug');
          },
        )
        // )
        );
  }

  ListView getMedsListView() {
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
              'dummy data',
              //style: ,
            ),
            subtitle: Text('dummy text'),
            trailing: Icon(
              Icons.delete,
              color: Colors.grey,
            ),
            onTap: () {
              debugPrint('ListTile tapped ');
              navigateToAddMeds('drug detail');
            },
          ),
        );
      },
    );
  }

  void navigateToAddMeds(String title) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => new AddMeds(title)));
  }
}
