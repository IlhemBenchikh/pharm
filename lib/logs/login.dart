
import 'package:flutter/material.dart';
import 'package:ilhem/Pages/home.dart';
import 'package:ilhem/logs/signup.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get key => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
       resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Center(
          child: Container(
            margin: MediaQuery.of(context).padding,
            decoration: BoxDecoration(
      //image: DecorationImage(
        //image: AssetImage(
          //"assets/Capture.PNG"
          //  "assets/images.png"
          //"assets/images-removebg-preview.png"
         // )
        //),
      gradient: LinearGradient(
        colors: [Color(0xFF1A2980), Color(0xFF26D0CE)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      )
            ),
            child: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage("assets/Capture.PNG"),
        ),
        //Image.asset('assets/images.png'),
        Container(
          margin: EdgeInsets.only(top:55, left:35, right:35, bottom:20),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Form(
            key: key,
            child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35)
                    ),
                    margin: EdgeInsets.only(left: 30, right:30),
                    //padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextFormField(

                      cursorWidth: 1,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color:Colors.white,
                      ),
                      decoration:InputDecoration(
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(20),
                        suffixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        labelText: "User Name",
                        labelStyle:TextStyle(color: Colors.white) ,
                        //hintText: 'Name',
                        // hintStyle: TextStyle(
                        //   color: Colors.grey
                        // ),
                        errorStyle: TextStyle(
                          color: Colors.red
                        ),
                        fillColor: Colors.white,
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red
                            ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red
                           ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                           ),
                          borderRadius: BorderRadius.circular(30),
                        ) ,
                        //filled: true,
                        enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                            color: Colors.white
                           ),
                          borderRadius: BorderRadius.circular(30), 
                        ),
                      ) ,
                      onSaved: (input){
                        //_name =input.trim();
                      },
                      validator: (input){
                        if (input.isEmpty)
                        return 'please entree your user name';
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35)
                    ),
                    margin: EdgeInsets.only(left: 30, right: 30, top:20),
                    child: TextFormField(
                      // onFieldSubmitted: (input){
                      //   validation();
                      // },
                      cursorWidth: 1,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true ,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(20),
                        suffixIcon: GestureDetector(
                        //   onTap: (){
                        //     setStat((){
                        //       _obs =!_obs;
                        //     });
                        //   };
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(color:Colors.white ),

                        //hintText: "Password",
                        errorStyle: TextStyle(
                          color: Colors.white
                        ),
                        fillColor: Colors.white,
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                            ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                           ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                           ),
                          borderRadius: BorderRadius.circular(30),
                        ) ,
                        //filled: true,
                        enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                            color: Colors.white
                           ),
                          borderRadius: BorderRadius.circular(30), 
                        ),
                      ) ,
                      onSaved: (input){
                        //_password =input;
                      },
                      validator: (input){
                        if (input.length< 6)
                        return 'rentree your password';
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40, bottom: 40, left:8, right:8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: FloatingActionButton(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(
              builder: (BuildContext context ) => new Home())
              );
            },
          ),
        ),
        Container(
           padding: EdgeInsets.only(left:15,right:15, top:10, bottom:10) ,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                color: Colors.white,
                child: Text(
                  'sign up',
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 20,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ) ,
                onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context ) => new Signup())
              );
                },
                ),
                
              // Container(
              //   margin: EdgeInsets.only(left:30, right:20, bottom:0),
              //   child: Row(
              //     children: <Widget>[
              //       Text(
              //         'Sign Up',
              //         style: TextStyle(
              //           fontSize: 20.0,
              //           color:Colors.white,
              //         ),
              //       ),
                 
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'forgot password',
                  style: TextStyle(
                    fontSize: 20.0,
                    color:Colors.white,
                  ),
                ),
                ],
                ),
              ),
            ],
          ),
        )
           ),
        );
    


//           SizedBox(
//                height: 30.0,
//              ),
//           TextFormField(
//             //obscureText: ,
//             //  onFieldSubmitted: (input) {
//             // validate();
//             //  },
//           decoration:  InputDecoration(
//             alignLabelWithHint: true,
//             contentPadding: EdgeInsets.all(10), 
//             //suffixIcon: Icon(Icons.account_circle),

//             icon: Icon(Icons.vpn_key),
//             labelText: 'Password',
//             ),
//           cursorWidth: 1,
//           cursorColor: Colors.black,
//           style: TextStyle(
//           color: Colors.white,
//           ),
//           onSaved: (String value) {
//            },
//           //  validator: (input) {
//           //     if (input.isEmpty)
//           //     return 'provide an email';
//           //   },
//          ),
//           SizedBox(
//                height: 30.0,
//              ),
//               OutlineButton(
//                 //color: Colors.teal,
//                 padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
//                 child: Text(
//                   'Log in',
//                   style: TextStyle(
//                     letterSpacing: 0.5,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white
//                   ),),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(50.0)
//                 ),
//                 //constraints: BoxConstraints.tightFor(height: 50.0, width: 400.0),
//                 onPressed: ()
//                 {

//                  }),
//                  SizedBox(
//                height: 30.0,
//              ),
//               OutlineButton(
//                 //color: Colors.transparent,
//                 padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
//                 child: Text(
//                   'Sign up',
//                   style: TextStyle(
//                     letterSpacing: 0.5,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white
//                   ),),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(50.0)
//                 ),
//                 //constraints: BoxConstraints.tightFor(height: 50.0, width: 175.0),
//                 onPressed: ()
//                 {

//                 }),
//                 SizedBox(
//                height: 30.0,
//              ),
//             ],
//           ),

//         ),
//       ),

      
//     );
  }
}
