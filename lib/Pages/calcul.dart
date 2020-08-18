import 'package:flutter/material.dart';

class Calcul extends StatefulWidget {
  @override
  _CalculState createState() => _CalculState();
}

class _CalculState extends State<Calcul> {
//  TextEditingController ordControlled = TextEditingController();
//  TextEditingController scController  = TextEditingController();
//  TextEditingController pController = TextEditingController();
//  TextEditingController rController = TextEditingController();

  //var displayResult = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[700],
        title: Text(
          'Calculs',
          style: TextStyle(
              letterSpacing: 2,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 175, right: 5),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                //controller: ordControlled,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(20),
                  labelText: 'N° Ordonnance',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'jj-mm-yy/n°séquentiel',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  errorStyle: TextStyle(color: Colors.red),
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
                onSaved: (input) {},
                validator: (input) {
                  if (input.isEmpty) return 'please entree a prescription code';
                },
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              child: Column(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 100),
              child: TextFormField(
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                //controller: scController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(20),
                  labelText: 'Surface corporelle',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'sc',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  errorStyle: TextStyle(color: Colors.red),
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
                onSaved: (input) {},
                validator: (input) {
                  if (input.isEmpty) return 'entrez vos donnée svp';
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 100),
              child: TextFormField(
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                //controller: pController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(20),
                  labelText: 'Posologie',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'p',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  errorStyle: TextStyle(color: Colors.red),
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
                onSaved: (input) {},
                validator: (input) {
                  if (input.isEmpty) return 'entrez vos donnée svp';
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 100),
              child: TextFormField(
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                //controller: rController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(20),
                  labelText: 'Réduction',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  hintText: 'r',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  errorStyle: TextStyle(color: Colors.red),
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
                onSaved: (input) {},
                validator: (input) {
                  if (input.isEmpty) return 'entrez vos donnée svp';
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    color: Colors.cyan[700],
                    padding: EdgeInsets.only(
                        right: 15, left: 15, bottom: 10, top: 10),
                    child: Text(
                      'calculer',
                      style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      // setState(() {
                      //   this.displayResult = _calculateTotalReturns();
                      //});
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'text',
                //this.displayResult,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _calculateTotalReturns() {
  // double sc = double.parse(scController.text);
  // double p = double.parse(pController.text);
  // double r = double.parse(rController.text);

  // double dose = sc*p*r;

  // String result = '$dose';
  // return result;
  //double volume = dose/ci
}
