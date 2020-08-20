import 'package:flutter/material.dart';
import 'dart:async';
import 'package:ilhem/models/drugs.dart';
import 'package:ilhem/utils/database_helper.dart';
import 'package:intl/intl.dart';

class AddMeds extends StatefulWidget {
  final String appBarTitle;
  final Drugs drugs;
  AddMeds(this.drugs, this.appBarTitle);
  @override
  _AddMedsState createState() => _AddMedsState(this.drugs, this.appBarTitle);
}

class _AddMedsState extends State<AddMeds> {
  String value = '';
  String prop = '';
  String appBarTitle;
  Drugs drugs;

  DatabaseHelper helper = DatabaseHelper();

  static var _currencies = ['Flacon de 20mg/1ml', 'Flacon de 80mg/4ml'];
  // ignore: unused_field
  var _currentItemSelected = 'Flacon de 20mg/1ml';
  static var _currencies1 = ['Flacon en verre', 'Flacon en PVC'];
  // ignore: unused_field
  var _currentItemSelected1 = 'Flacon en verre';
  // static var _temp = ['25°C', '4°C'];
  // var _currentItempSelected = '25°C';

  TextEditingController nameController = TextEditingController();
  TextEditingController labController = TextEditingController();
  TextEditingController ciController = TextEditingController();
  TextEditingController cminController = TextEditingController();
  TextEditingController cmaxController = TextEditingController();
  TextEditingController vapController = TextEditingController();
  TextEditingController prixController = TextEditingController();

  _AddMedsState(this.drugs, this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    nameController.text = drugs.name;
    labController.text = drugs.lab;
    // ciController.text = drugs.ci;
    // cminController.text = drugs.cmin;
    // cmaxController.text = drugs.cmax;
    // vapController.text = drugs.vap;
    // prixController.value = drugs.prix;

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: Colors.cyan[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(top: 15, right: 120, left: 10),
              child: TextFormField(
                controller: nameController,
                onChanged: (value) {
                  debugPrint('bansobczzn');
                  updateName();
                },
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(top: 15, right: 120, left: 10),
              child: TextFormField(
                controller: labController,
                onChanged: (value) {
                  updateLab();
                },
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Laboratoire',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Présentation :',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: DropdownButton<String>(
                      items: _currencies.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      //   DropdownMenuItem<String>(
                      //     value: "1",
                      //     child: Text(
                      //       'Flacon de 20mg/1ml',
                      //        style: TextStyle(
                      //         fontStyle: FontStyle.italic,
                      //         color: Colors.black,
                      //         fontSize: 15
                      //       ),
                      //       ),
                      //   ),
                      //   DropdownMenuItem<String>(
                      //     value: "2",
                      //     child: Text(
                      //       'Flacon de 80mg/4ml',
                      //       style: TextStyle(
                      //         fontStyle: FontStyle.italic,
                      //         color: Colors.black,
                      //         fontSize: 15
                      //       ),
                      //       ),
                      //   ),

                      onChanged: (String newValueSelected) => {
                        //print(_value.toString()),
                        setState(() {
                          this._currentItemSelected = newValueSelected;
                          updatePresentationAsInt(newValueSelected);
                          // value = _value;
                        }),
                      },
                      value: getPresentationAsString(drugs.pre),
                    ),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(35)
                    // ),
                    // margin: EdgeInsets.only(top: 15,right: 120, left: 10),
                    // child: TextFormField(
                    //   cursorWidth: 1,
                    //   cursorColor: Colors.black,
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //   ),
                    //   decoration: InputDecoration(
                    //     alignLabelWithHint: true,
                    //     contentPadding: EdgeInsets.only(left: 20),
                    //     labelText: 'Presentation',
                    //     labelStyle: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.bold
                    //     ),
                    //     errorStyle: TextStyle(
                    //       color: Colors.red,
                    //     ),
                    //     fillColor: Colors.white,
                    //     errorBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.red
                    //       ),
                    //       borderRadius: BorderRadius.circular(30)
                    //     ),
                    //     focusedErrorBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.red
                    //       ),
                    //       borderRadius: BorderRadius.circular(30)
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.black
                    //       ),
                    //       borderRadius: BorderRadius.circular(30)
                    //     ),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.black
                    //       ),
                    //       borderRadius: BorderRadius.circular(30)
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(right: 120, left: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Concentration Initiale',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(top: 15, right: 120, left: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Concentration minimale',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(top: 15, right: 120, left: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Concentration maximale',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(top: 15, right: 120, left: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Volume après préparation',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(top: 15, right: 120, left: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Prix du mg',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'DA',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Stabilités:',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 55),
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: DropdownButton<String>(
                          items: _currencies1.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValuSelected1) => {
                            setState(() {
                              this._currentItemSelected1 = newValuSelected1;
                              updateStabAsInt(newValuSelected1);
                            }),
                          },
                          value: getStabAsString(drugs.stab),
                        ),
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(left: 65),
                    //   child: Padding(
                    //     padding: EdgeInsets.all(0),
                    //     child: DropdownButton<String>(
                    //       items: _temp.map((String dropDownStringItem) {
                    //         return DropdownMenuItem<String>(
                    //           value: dropDownStringItem,
                    //           child: Text(dropDownStringItem),
                    //         );
                    //       }).toList(),
                    //       onChanged: (String newValuSelected) => {
                    //         setState(() {
                    //           this._currentItempSelected = newValuSelected;
                    //         }),
                    //       },
                    //       value: _currentItempSelected,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            Container(
              //margin: EdgeInsets.only(top: ,bottom: ,left: ,right: ),

              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  'Add',
                  textScaleFactor: 1.5,
                ),
                color: Colors.cyan[700],
                onPressed: () {
                  setState(() {
                    debugPrint('add DRUG');
                    _save();
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  //convert to string presentation in the form of integer befor saving it to database
  void updatePresentationAsInt(String value) {
    switch (value) {
      case 'Flacon de 20mg/1ml':
        drugs.pre = 1;
        break;
      case 'Flacon de 80mg/4ml':
        drugs.pre = 2;
        break;
    }
  }

  //convert int presentation to string presentation and display it to user in dropdownbutton
  String getPresentationAsString(int value) {
    String pre;
    switch (value) {
      case 1:
        pre = _currencies[0];
        break;
      case 2:
        pre = _currencies[1];
        break;
    }
    return pre;
  }

  //convert to string stab in the form of integer befor saving it to database
  void updateStabAsInt(String value) {
    switch (value) {
      case 'Flacon en verre':
        drugs.pre = 1;
        break;
      case 'Flacon en PVC':
        drugs.pre = 2;
        break;
    }
  }

  String getStabAsString(int value) {
    String stab;
    switch (value) {
      case 1:
        stab = _currencies1[0];
        break;
      case 2:
        stab = _currencies1[1];
        break;
    }
    return stab;
  }

  void updateName() {
    drugs.name = nameController.text;
  }

  void updateLab() {
    drugs.lab = labController.text;
  }

  void _save() async {
    moveToLastScreen();

    int result;
    if (drugs.name != null) {
      result = await helper.updateDrug(drugs);
    } else {
      result = await helper.insertDrug(drugs);
    }

    if (result != 0) {
      _showAlterDialog('status', 'drug saved successfully');
    } else {
      _showAlterDialog('status', 'problem saving drug');
    }
  }

  void _showAlterDialog(String name, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(name),
      content: Text(message),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
