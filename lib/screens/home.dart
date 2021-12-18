


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/screens/DrawerFun.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Color(0xffF53839),
      drawer: DrawerWid(),
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            _key.currentState!.openDrawer();
          },
            child: Image.asset("asset/menu_ic.png")),
        elevation: 0.0,
        backgroundColor: Color(0xffF53839),
        title: Text("Home"),
        actions: [
          Icon(Icons.sync, size: 29,),
          Padding(
            padding: const EdgeInsets.only(top: 17, right: 23, left: 6),
            child: Text("Sync", style: TextStyle(
              fontSize: 17
            ),),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))
        ),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 20),
                          child: Image.asset("asset/MaskGroup2.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 26, left: 25),
                            child: Text("Welcome!", style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width *0.3,),
                          Padding(
                            padding: const EdgeInsets.only(top: 4, left: 25, bottom: 10),
                            child: Text("Alexander John Smith", style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 21,
                              fontWeight: FontWeight.w500
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25))
                  ),
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/Rectangle40.png")
                            )
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15,bottom: 8),
                                          child: Center(
                                            child: Text("20", style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8,left: 5, right: 5, bottom: 15),
                                          child: Center(
                                            child: Text("Number Of Sales", style: TextStyle(
                                                color: Colors.white.withOpacity(0.5),
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 15, bottom: 5, left: 5, right: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15,bottom: 8),
                                          child: Center(
                                            child: Text("\$20.993455", style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8,left: 5, right: 5, bottom: 15),
                                          child: Center(
                                            child: Text("Sales Amount", style: TextStyle(
                                                color: Colors.white.withOpacity(0.5),
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 15, left: 15, right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15,bottom: 8),
                                          child: Center(
                                            child: Text("20", style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8,left: 5, right: 5, bottom: 15),
                                          child: Center(
                                            child: Text("Number Of Sales", style: TextStyle(
                                                color: Colors.white.withOpacity(0.5),
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 15, left: 5, right: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15,bottom: 8),
                                          child: Center(
                                            child: Text("\$20.994453", style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8,left: 5, right: 5, bottom: 15),
                                          child: Center(
                                            child: Text("Sales Amount", style: TextStyle(
                                                color: Colors.white.withOpacity(0.5),
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],),
                          ],
                        ),
                      ),
                      Center(
                        child: Card(
                          margin: EdgeInsets.only(top: 20,),
                          color: Color( 0xffF0B522),
                          shadowColor: Colors.yellow,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            // decoration: BoxDecoration(
                            //   color: Color( 0xffF0B522),
                            //   borderRadius: BorderRadius.circular(10)
                            // ),
                            child: Center(
                              child: FlatButton(onPressed: (){
                                print("works");
                              },
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("check in".toUpperCase(), style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal
                                  ),),
                                ),),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 20),
                        child: Text("Payment Details",style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          fontSize: 16
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1.2)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:10,top: 12, bottom: 12, left:12),
                                  child: Image.asset("asset/cash_ic.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                                  child: Text("Cash",style: TextStyle(
                                    fontSize: 19
                                  ),),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12, bottom: 12, right: 15),
                                  child: Text("\$140.0",style: TextStyle(
                                      fontSize: 19,
                                    color: Color(0xffF0B522),
                                    fontWeight: FontWeight.w500
                                  ),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1.2)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:10,top: 12, bottom: 12, left:12),
                                  child: Image.asset("asset/card_ic.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                                  child: Text("Cash",style: TextStyle(
                                      fontSize: 19
                                  ),),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12, bottom: 12, right: 15),
                                  child: Text("\$140.0",style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500
                                  ),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1.2)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:10,top: 12, bottom: 12, left:12),
                                  child: Image.asset("asset/card_ic.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                                  child: Text("Cash",style: TextStyle(
                                      fontSize: 19
                                  ),),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12, bottom: 12, right: 15),
                                  child: Text("\$140.0",style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500
                                  ),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
