import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Container(
          child: Center(
            child: Container(
      margin: MediaQuery.of(context).padding,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //colors:[Color(0xFF2B5876), Color(0xFF4E4376)],
          colors: [Colors.teal[300], Colors.blue[900]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
      ),
            ),
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text(
            'SignUp',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Form(
            //key: Key,
            child :Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35)
                  ),
                  margin: EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    cursorWidth: 1,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.all(20),
                      labelText: 'User Name',
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                      focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    onSaved: (input){

                    },
                    // validator: (input){
                    //   if(input.isEmpty)
                    //   return null;
                    // },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35)
                  ),
                  margin: EdgeInsets.only(left: 50, right:  50,top: 40),
                  child: TextFormField(
                    cursorWidth: 1,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.all(20),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                      focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    onSaved: (input){

                    },
                    // validator: (input){
                    //   if(input.length<6)
                    //   return 'rentree a password';
                    // },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35)
                  ),
                  margin: EdgeInsets.only(left: 50, right:  50,top: 40),
                  child: TextFormField(
                    cursorWidth: 1,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.all(20),
                      labelText: 'PassWord',
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                      focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    onSaved: (input){

                    },
                    // validator: (input){
                    //   if(input.length<6)
                    //   return 'rentree a password';
                    // },
                  ),
                ),
              ],
            ) ,
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.white,
                padding: EdgeInsets.only(left:15,right:15, top:10, bottom:10) ,
                child: Text(
                  'Register',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                onPressed: (){},
              )
          ],),
        ),
      ],
            ),
          ),
          ),
        ), 
    );
  }
}