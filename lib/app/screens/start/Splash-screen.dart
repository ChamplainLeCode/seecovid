 

import 'dart:async';

import "package:flutter/material.dart";
import "package:seecovid/core/core.dart";
import 'package:seecovid/core/routes/Router.dart';

@Screen("splash")
class SplashScreen extends StatefulWidget{

  static List<ImageProvider> images;

  static initImage(){
    images = List();
    images.add(AssetImage("images/splash/cov1.jpg"));
    images.add(AssetImage("images/splash/cov2.jpg"));
    images.add(AssetImage("images/splash/cov3.jpg"));
  }

   @override
   _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
      super.initState();
  }

  dispose(){
    pageController.dispose();
    canCall = false;
    print('destruction');
    super.dispose();
  }

  PageController pageController = PageController();
  int currentPage = 0, inc = 1;
  bool canCall = true;

    @override
    Widget build(BuildContext context) {  

      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            PageView(
              children: getBackgroundImage(),
              controller: pageController,
            ),
            Container(
            //  color: Colors.white.withOpacity(0.6),
              child: Center(
                child: FloatingActionButton(
                  onPressed: () => Router.goto("/sample", parameter: context),
                  backgroundColor: Colors.black.withOpacity(0.4),
                  child: Icon(Icons.arrow_forward, color: Colors.white,), 
                  hoverColor: Colors.red,  
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ],
        )
      );
    }

    List<Widget> getBackgroundImage(){
      List<Widget> backgroundImages = <Container>[];
      SplashScreen.images?.forEach((img)=> backgroundImages.add(Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: img,
            fit: BoxFit.cover
          )
        ),
      )));
      swipe();
      return backgroundImages;
    }

    void swipe()async{ 
      if(!canCall)
        return;
      await Future.delayed(Duration(seconds: 3));
      try{
        pageController.animateToPage(currentPage+=inc, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      }on Exception{}
      print("Current  = $currentPage");
      inc = currentPage == 2 ? -1 : currentPage == 0 ? 1 : inc;
      swipe();
    }
  

}
