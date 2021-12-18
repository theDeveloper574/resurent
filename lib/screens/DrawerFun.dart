


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWid extends StatefulWidget {

  @override
  _DrawerWidState createState() => _DrawerWidState();
}

class _DrawerWidState extends State<DrawerWid> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            Container(
              color: Color(0xffF53839),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 25),
                            child: Icon(Icons.arrow_back, color: Colors.white,),
                          ))
                    ],
                  ),
                  Card(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    color: Colors.black,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 48,
                      child: CircleAvatar(
                        radius: 45,
                       backgroundImage: AssetImage("asset/MaskGroup2.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Welcome!", style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width *0.3,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 20),
                    child: Text("Alexander John Smith", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset("asset/expenses_ic.png"),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8,),
                      child: Text("Expanses",style: TextStyle(
                        fontWeight: FontWeight.normal
                      ),),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("asset/payment_ic.png"),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8,),
                      child: Text("Customer Payment",style: TextStyle(
                          fontWeight: FontWeight.normal
                      ),),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("asset/language_ic.png"),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8,),
                      child: Text("Language",style: TextStyle(
                          fontWeight: FontWeight.normal
                      ),),
                    ),
                    trailing: Image.asset("asset/chevron_down.png"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  Divider(),
                  ListTile(
                    leading: Image.asset("asset/logout_ic.png"),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8,),
                      child: Text("Logout",style: TextStyle(
                          fontWeight: FontWeight.normal
                      ),),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
