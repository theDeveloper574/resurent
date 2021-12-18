



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/screens/logIn.dart';

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashSc();
  }
  _splashSc()async{
    await Future.delayed(Duration(seconds: 3), (){});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>LogIn()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('asset/splash_bg.png')
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 95),
              child: Text("empower your".toUpperCase(),style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text("business".toUpperCase(),style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 190),
              child: Center(
                child: Image.asset("asset/logo_splash.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text("POS pharmacy by",style: TextStyle(
                      color: Colors.grey
                    ),),
                  ),
                  Image.asset("asset/pits_logo_splash.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
