



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/screens/all_order.dart';
import 'package:restaurant/screens/check_out.dart';
import 'package:restaurant/screens/customerDetails.dart';
import 'package:restaurant/screens/manu_list_view.dart';
import 'package:restaurant/screens/navigation.dart';
import 'package:restaurant/screens/order_detail.dart';
import 'package:restaurant/screens/order_detail_for_kitchen.dart';
import 'package:restaurant/screens/sales_all.dart';
import 'package:restaurant/screens/shipment.dart';
import 'package:restaurant/screens/splash.dart';

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}
void main(){
  runApp(MyApp());
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
