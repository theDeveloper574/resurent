import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/screens/DrawerFun.dart';

class CustomerDetail extends StatefulWidget {
  @override
  _CustomerDetailState createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  TimeOfDay? time;
  TimeOfDay? picked;
  @override
  initState(){
    super.initState();
    time = TimeOfDay.now();
    time1 = TimeOfDay.now();
  }
  Future selectTime(BuildContext ctx)async{
    picked = (await showTimePicker(
        context: ctx,
        initialTime: TimeOfDay.now()
    ))!;
    setState(() {
      time = picked;
    });
  }
  TimeOfDay? time1;
  TimeOfDay? picked1;
  Future selectTime1(BuildContext ctx)async{
    picked1 = (await showTimePicker(
        context: ctx,
        initialTime: TimeOfDay.now()
    ));
    setState(() {
      time1 = picked1;
    });
  }

  String? value1;
  List itemsG = ['one', 'two', 'three', 'four'];
  @override
  Widget build(BuildContext context) {
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
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
            child: Column(
              children: [
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: DropdownButtonFormField(
                    icon: Image.asset("asset/chevron_down.png"),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red.withOpacity(0.1)
                        )
                      ),
                      prefixIcon: Image.asset("asset/location_ic.png", color: Colors.grey,)
                    ),
                    hint: Text("PITS", style: TextStyle(
                      fontSize: 13
                    ),),
                    value: value1,
                    onChanged: (newValue){
                      FocusScope.of(context).requestFocus(new FocusNode());
                      setState(() {
                        newValue = value1;
                      });
                    },
                    items: itemsG.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem, style: TextStyle(
                          color: Colors.green
                        ),),
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.76,
                      height: 60,
                      margin: EdgeInsets.only(left: 20,top:15),
                      child: DropdownButtonFormField(
                        icon: Image.asset("asset/chevron_down.png"),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.
                                only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.red.withOpacity(0.1)
                                )
                            ),
                            prefixIcon: Image.asset("asset/location_ic.png", color: Colors.grey,)
                        ),
                        hint: Text("Customer", style: TextStyle(
                            fontSize: 13
                        ),),
                        value: value1,
                        onChanged: (newValue){
                          FocusScope.of(context).requestFocus(new FocusNode());
                          setState(() {
                            newValue = value1;
                          });
                        },
                        items: itemsG.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem, style: TextStyle(
                                color: Colors.green
                            ),),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 15),
                      decoration: BoxDecoration(
                        color: Color(0xffF0B522),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 23, bottom: 23, right: 15, left: 15),
                        child: Image.asset("asset/add_new_customer.png"),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: DropdownButtonFormField(
                    icon: Image.asset("asset/chevron_down.png"),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.1)
                            )
                        ),
                        prefixIcon: Image.asset("asset/customer_ic.png", color: Colors.grey,)
                    ),
                    hint: Text("Customer Correspondent", style: TextStyle(
                        fontSize: 13
                    ),),
                    value: value1,
                    onChanged: (newValue){
                      FocusScope.of(context).requestFocus(new FocusNode());
                      setState(() {
                        newValue = value1;
                      });
                    },
                    items: itemsG.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem, style: TextStyle(
                            color: Colors.green
                        ),),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: DropdownButtonFormField(
                    icon: Image.asset("asset/chevron_down.png"),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.1)
                            )
                        ),
                        prefixIcon: Image.asset("asset/table_ic.png", color: Colors.grey,)
                    ),
                    hint: Text("Customer Correspondent", style: TextStyle(
                        fontSize: 13
                    ),),
                    value: value1,
                    onChanged: (newValue){
                      FocusScope.of(context).requestFocus(new FocusNode());
                      setState(() {
                        newValue = value1;
                      });
                    },
                    items: itemsG.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem, style: TextStyle(
                            color: Colors.green
                        ),),
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child:  GestureDetector(
                      onTap: () {
                        selectTime(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1.3)
                        ),
                        height: 60,
                        margin: EdgeInsets.only(left: 20, top: 15, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18, right: 5),
                                  child: Image.asset("asset/calendar_ic.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(picked == null ? "Start Time" : '${time?.hour} : ${time?.minute}',
                                    overflow: TextOverflow.ellipsis, style: TextStyle(
                                      fontSize: 13,
                                    color: Colors.black.withOpacity(0.5)
                                  ),),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Image.asset("asset/chevron_down.png"),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),),
                    Expanded(
                      child:  GestureDetector(
                        onTap: () {
                          selectTime1(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1.3)
                          ),
                          height: 60,
                          margin: EdgeInsets.only(left: 5, top: 15, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18, right: 5),
                                    child: Image.asset("asset/calendar_ic.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(picked1 == null ? "End Time" : '${time1?.hour} : ${time1?.minute}',
                                      overflow: TextOverflow.ellipsis, style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.5)
                                      ),),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image.asset("asset/chevron_down.png"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Customer Note",
                      fillColor: Colors.grey[200],
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.1)
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.4)
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                           color: Colors.black.withOpacity(0.1)
                        )
                      )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    children: [
                      Image.asset("asset/send_notification_check.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Send Email/SMS notification to customer", style: TextStyle(
                          fontSize: 15
                        ),),
                      )
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
                          showModalBottomSheet(context: context,
                              builder: (contexct) => buildBottomSheet(
                              ));
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("place order".toUpperCase(), style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.normal
                            ),),
                          ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 150,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildBottomSheet() {
    return SingleChildScrollView(
      child: Container(
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Add a New Contact", style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 19,
                fontWeight: FontWeight.w400
              ),),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                icon: Image.asset("asset/chevron_down.png"),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red.withOpacity(0.1)
                        )
                    ),
                    prefixIcon: Image.asset("asset/customer_ic.png", color: Colors.grey,)
                ),
                hint: Text("Individual", style: TextStyle(
                    fontSize: 13
                ),),
                value: value1,
                onChanged: (newValue){
                  FocusScope.of(context).requestFocus(new FocusNode());
                  setState(() {
                    newValue = value1;
                  });
                },
                items: itemsG.map((valueItem){
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem, style: TextStyle(
                        color: Colors.green
                    ),),
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top:10),
              child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                icon: Image.asset("asset/chevron_down.png"),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red.withOpacity(0.1)
                        )
                    ),
                    prefixIcon: Image.asset("asset/contact_id_ic.png", color: Colors.grey,)
                ),
                hint: Text("Contact ID", style: TextStyle(
                    fontSize: 13
                ),),
                value: value1,
                onChanged: (newValue){
                  FocusScope.of(context).requestFocus(new FocusNode());
                  setState(() {
                    newValue = value1;
                  });
                },
                items: itemsG.map((valueItem){
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem, style: TextStyle(
                        color: Colors.green
                    ),),
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top:10),
              child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                icon: Image.asset("asset/chevron_down.png"),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red.withOpacity(0.1)
                        )
                    ),
                    prefixIcon: Image.asset("asset/customer_group_ic.png", color: Colors.grey,)
                ),
                hint: Text("Customer Group", style: TextStyle(
                    fontSize: 13
                ),),
                value: value1,
                onChanged: (newValue){
                  FocusScope.of(context).requestFocus(new FocusNode());
                  setState(() {
                    newValue = value1;
                  });
                },
                items: itemsG.map((valueItem){
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem, style: TextStyle(
                        color: Colors.green
                    ),),
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Mobile Number*",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Image.asset("asset/mobile_ic.png"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.4)
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1)
                        )
                    )
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Alternative Contact Number",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Image.asset("asset/contact_id_ic.png"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.4)
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1)
                        )
                    )
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Landline",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Image.asset("asset/contact_id_ic.png"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.4)
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1)
                        )
                    )
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Image.asset("asset/email_ic.png"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.4)
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1)
                        )
                    )
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Address",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Image.asset("asset/email_ic.png"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.4)
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1)
                        )
                    )
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Shipping Address",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Image.asset("asset/email_ic.png"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.4)
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1)
                        )
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Expanded(child: Container(
                    margin: EdgeInsets.only(left: 20, right: 5),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Text("cancel".toUpperCase(),style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 16
                          ),),
                        ),
                      )))),
                  Expanded(child: Card(
                    elevation: 8,
                    shadowColor: Colors.yellow,
                    color: Color(0xffF0B522),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(right: 20, left: 5),
                    child: Container(
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Text("save".toUpperCase(),style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                        ))),
                  )),
                ],
              ),
            ),
            SizedBox(height: 70,)
          ],
        ),
      ),
    );
  }
}
