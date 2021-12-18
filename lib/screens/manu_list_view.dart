import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:restaurant/screens/DrawerFun.dart';

class MenuListView extends StatefulWidget {
  @override
  _MenuListViewState createState() => _MenuListViewState();
}

class _MenuListViewState extends State<MenuListView> {
  int isChecked = 0;
  bool isVisible = true;
  bool isVisible1 = false;
  bool isSelect = false;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _key,
        backgroundColor: Color(0xffF53839),
        drawer: DrawerWid(),
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Image.asset("asset/menu_ic.png")),
          elevation: 0.0,
          backgroundColor: Color(0xffF53839),
          title: Text(
            "Menu",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 6),
              child: Text(
                "Location",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 10),
              child: Image.asset("asset/location_ic.png"),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Image.asset("asset/scan_ic.png")),
                        Expanded(
                            flex: 6,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 4, left: 10),
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Search",
                                  suffixIcon: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF0B522),
                                        borderRadius: BorderRadius.horizontal(
                                            right: Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.9, bottom: 1.9),
                                      child: Image.asset("asset/search_ic.png"),
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.9),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            )),
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            if (isSelect == true) {
                              isSelect = false;
                            } else {
                              isSelect = true;
                            }
                            setState(() {
                              isSelect;
                              isVisible = isVisible;
                            });
                          },
                          child: isSelect
                              ? Container(
                                  margin: EdgeInsets.only(left: 6, right: 6),
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.5)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset("asset/grid_view_ic.png"))
                              : Container(
                                  margin: EdgeInsets.only(left: 6, right: 6),
                                  height: 45,
                                  width: 45,
                                  //list_view_ic.png
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.5)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset("asset/list_view_ic.png")),
                        )),
                      ],
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: TabBar(
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.red,
                    tabs: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Tab(
                            child: Text(
                              "Desi",
                              style: TextStyle(fontSize: 15),
                            ),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Tab(
                            child: Text(
                              "Burgers",
                              style: TextStyle(fontSize: 15),
                            ),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Tab(
                            child: Text(
                              "Ice Shakes",
                              style: TextStyle(fontSize: 15),
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Tab(
                            child: Text(
                              "Beverages",
                              style: TextStyle(fontSize: 15),
                            ),
                          )),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Text("hello"),
                  isSelect ? gridView() : FoodList(),
                  Text("hello"),
                  Text("hello"),
                ]),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
          ),
          backgroundColor: Color(0xffF53839),
          isExtended: true,
          onPressed: () {},
        ),
      ),
    );
  }

  Widget FoodList() {
    return Container(
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  isChecked = index;
                });
              },
              child: isChecked == index
                  ? Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xffF53839)),
                            borderRadius: BorderRadius.circular(10)),
                        height: 90,
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Image.asset(
                                    "asset/menu_item_thumbnail1.png")),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Chicken Fillet Burger",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Rs. 350",
                                    style: TextStyle(
                                        color: Color(0xffF0B522),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Image.asset("asset/check-circle.png")],
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.black.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(10)),
                        height: 90,
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Image.asset(
                                    "asset/menu_item_thumbnail1.png")),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Chicken Fillet Burger",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Rs. 350",
                                    style: TextStyle(
                                        color: Color(0xffF0B522),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("asset/check_unckecked.png")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
            );
          }),
    );
  }

  Widget gridView() {
    return Visibility(
      visible: isVisible,
      child: Container(
        child: new StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) => new Container(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset("asset/MaskGroup64.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Chicken Fillet Burger",
                      style: TextStyle(
                          color: Color(0xff021343),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 15, bottom: 10),
                        child: Text(
                          "Rs. 350",
                          style: TextStyle(
                              color: Color(0xffF0B522),
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                          margin:
                              EdgeInsets.only(right: 20, top: 15, bottom: 10),
                          child: Image.asset("asset/check_unckecked.png"))
                    ],
                  ),
                ],
              ),
            ),
          ),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2.6 : 2.6),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
