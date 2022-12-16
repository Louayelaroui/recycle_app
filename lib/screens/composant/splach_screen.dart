import 'package:envirement_app/screens/composant/splash_screen_child.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  PageController _controller = PageController();
  List<SplashScreenChild> splashScreenChildrens = [
    SplashScreenChild(
      TiTle: 'Recycle App',
      secondTitle: 'welcome to recycle App',
      description: 'hello',
      image: 'images/screen1_1.png',
        hasWidget:false
    ),
    SplashScreenChild(
      TiTle: 'Lets win some money ',
      secondTitle: 'Lets win some money togeher',
      description: 'recycle and win  ',
      image: 'images/screen_2.png',
        hasWidget:false
    ),
    SplashScreenChild(
      TiTle: 'information ',
      secondTitle: 'welcome to recycle app ',
      description: ' you want have some money our application its her ',
      image: 'images/screen_3.png',
      hasWidget:true


    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: splashScreenChildrens,
            ),
            Container(
              alignment: Alignment(0,0.9),
                child: SmoothPageIndicator(controller: _controller, count: 3,),)
          ],
        ),
      ),


    );
  }
}
