import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isSelct = false;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF53839),
      body: Container(
          child: Column(
        children: [
          Container(
            child: Center(
                child: Container(
                    margin: EdgeInsets.only(top: 90),
                    child: Image.asset("asset/logo_login.png"))),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 10.0,
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "Sign in to continue",
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF9F8F2),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              margin: EdgeInsets.only(top: 35),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "glorious",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: Image.asset("asset/username_ic.png"),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: Image.asset("asset/send_notification_check.png"),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.9),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "password",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: Image.asset("asset/password_ic.png"),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Image.asset("asset/eye_off.png"),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.9),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 31, top: 20),
                    child: Text("Forget Password?",style: TextStyle(
                      color: Colors.blue
                    ),),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            value: value,
                            side: BorderSide(color: Colors.green.withOpacity(0.4)),
                            focusColor: Colors.red,
                            onChanged: (value1){
                              setState(() {
                                value= value1!;
                              });
                            }),
                      ),
                      Text("Remember me")
                    ],
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 30,top: 20, right: 30),
                    // shadowColor: Color( 0xffF0B522),
                    color: Color( 0xffF0B522),
                    shadowColor: Color( 0xffF0B522),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      // decoration: BoxDecoration(
                      //   color: Color( 0xffF0B522),
                      //   borderRadius: BorderRadius.circular(10)
                      // ),
                      child: Center(
                        child: FlatButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) =>Home()));
                        },
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Log In".toUpperCase(), style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.normal
                              ),),
                            ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
