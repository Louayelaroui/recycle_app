import "package:flutter/material.dart";

import '../Login/login.dart';
import '../Login/signup.dart';



class SplashScreenChild extends StatefulWidget {
   final String TiTle,secondTitle,description,image;
   final bool hasWidget;
   SplashScreenChild(
       {required this.TiTle,
         required this.secondTitle,
         required this.image,
         required this.description,
         required this.hasWidget
       });

  @override
  State<SplashScreenChild> createState() => _SplashScreenChildState();
}

class _SplashScreenChildState extends State<SplashScreenChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[400],
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(widget.TiTle, style: TextStyle(fontSize: 32 ,fontWeight:FontWeight.w700,color: Colors.white) ,),
          SizedBox(height: 30,),
          Text(widget.secondTitle,style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400,color: Colors.white) ),
          Container(
            padding: EdgeInsets.all(30),
            child:
            Image.asset(widget.image,),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child:           Text(
                style: TextStyle(fontSize: 16 ,fontWeight:FontWeight.w400,color: Colors.white),
               widget.description )
          ),

          widget.hasWidget?
          Column(
          children:
          <Widget>[
            MaterialButton(
              height: 58,
              minWidth: 250,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15)),
              onPressed: () {
                Navigator.push(
                  context,

                    MaterialPageRoute(builder: (context) => const LogIn())
                );
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.green[900],
                ),
              ),
              color: Colors.white,
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              height: 58,
              minWidth: 250,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp())
                );
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.green[900]
                ),
              ),
              color: Colors.white,
            ),

    ],
              ):Container(),
          
        ]
      ),
    );
  }
}
