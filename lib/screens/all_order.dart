import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_detail.dart';

class AllOrder extends StatefulWidget {
  @override
  _AllOrderState createState() => _AllOrderState();
}

class _AllOrderState extends State<AllOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF53839),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xffF53839),
        title: Text(
          "All Orders",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 5),
                            child: Text(
                              "Order #: 35",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8, top: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffF0B522).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, left: 8,bottom: 5, right: 8),
                              child: Text("Active",style: TextStyle(
                                color: Color(0xffF0B522),
                                fontWeight: FontWeight.bold
                              ), ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 10),
                            child: Text(
                              "Table",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18, top: 10),
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 10),
                            child: Text(
                              "Place at",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18, top: 10),
                            child: Text(
                              "11/9/2021 5:05 PM",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 10),
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18, top: 10),
                            child: Text(
                              "Ali Raza",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 10),
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18, top: 10),
                            child: Text(
                              "Dine-in",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 10),
                            child: Text(
                              "Corespondent",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18, top: 10),
                            child: Text(
                              "Javad Ali",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>OrderDetail()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 20,top: 20,right: 5, bottom: 20),
                                decoration: BoxDecoration(
                                  color: Color(0xffF0B522),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                                  child: Center(
                                    child: Text("order detail".toUpperCase(), style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 5,top: 20,right: 20, bottom: 20),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffF53839)),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 10),
                                child: Center(
                                  child: Text("order detail".toUpperCase(), style: TextStyle(
                                      color: Color(0xffF53839)
                                  ),),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        )
      ),
    );
  }
}

class Count extends StatefulWidget {
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int add = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (add > 1) {
                add--;
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff8089A1),
                borderRadius: BorderRadius.circular(5)),
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12, right: 12),
          child: Text(
            add.toString(),
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              add++;
            });
          },
          child: Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Color(0xffF0B522),
                borderRadius: BorderRadius.circular(5)),
            child: Icon(Icons.add, color: Colors.white),
          ),
        )
      ],
    );
  }
}
