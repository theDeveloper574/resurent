import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/screens/DrawerFun.dart';

class CustomerDetail extends StatefulWidget {
  @override
  _CustomerDetailState createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  @override
  Widget build(BuildContext context) {
    final items = ['one', 'two', 'three', 'four'];
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffF53839),
        drawer: DrawerWid(),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(Icons.arrow_back_ios),
          ),
          elevation: 0.0,
          backgroundColor: Color(0xffF53839),
          title: Text(
            "Customer Details",
            style: TextStyle(fontSize: 16,
            fontWeight: FontWeight.w800),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
            child: Column(
              children: [
                Container(
                  child: Text("hello world"),
                ),
                Container(
                  child: Text("hello world"),
                ),
                Container(
                  child: Text("hello world"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
