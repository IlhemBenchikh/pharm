import 'package:flutter/material.dart';
class AddMeds extends StatefulWidget {
  @override
  _AddMedsState createState() => _AddMedsState();
}

class _AddMedsState extends State<AddMeds> {

  String value = '';
  String prop ='';
  var _currencies =['Flacon de 20mg/1ml','Flacon de 80mg/4ml'];
  var _currentItemSelected = 'Flacon de 20mg/1ml';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ajouter un medicament'),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35)
              ),
              margin: EdgeInsets.only(top: 15,right: 120, left: 10),
              child: TextFormField(
                cursorWidth: 1,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.only(left:20),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35)
              ),
              margin: EdgeInsets.only(top: 15,right: 120, left: 10),
              child: TextFormField(
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
                    fontWeight: FontWeight.bold
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
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
                          letterSpacing: 0.5
                        ),
                      ),
                ),
                SizedBox(width: 10,),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: DropdownButton<String>(
                      items: _currencies.map((String dropDownStringItem){
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(
                            dropDownStringItem
                          ),
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
                      
                      onChanged: (String newValueSelected) =>{
                        //print(_value.toString()),
                        setState((){
                          this._currentItemSelected= newValueSelected;
                          // value = _value;
                        }),
                      },
                       value: _currentItemSelected  ,
                      
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35)
              ),
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
                    fontWeight: FontWeight.bold
                  ),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35)
              ),
              margin: EdgeInsets.only(top: 15,right: 120, left: 10),
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
                    fontWeight: FontWeight.bold
                  ),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35)
              ),
              margin: EdgeInsets.only(top: 15,right: 120, left: 10),
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
                    fontWeight: FontWeight.bold
                  ),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35)
              ),
              margin: EdgeInsets.only(top: 15,right: 120, left: 10),
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
                    fontWeight: FontWeight.bold
                  ),
                  hintText: 'mg/ml',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35)
              ),
              margin: EdgeInsets.only(top: 15,right: 120, left: 10),
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
                    fontWeight: FontWeight.bold
                  ),
                  hintText: 'DA',
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  fillColor: Colors.white,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}