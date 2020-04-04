import 'dart:async';

import "package:flutter/material.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:seecovid/app/components/DashedLoader.dart';
import 'package:seecovid/app/components/S19RaisedButton.dart';
import 'package:seecovid/app/components/S19Scaffold.dart';
import 'package:seecovid/app/utils/Styles.dart';
import "package:seecovid/core/core.dart";


@Screen("splash")
class SplashScreen extends StatefulWidget{

   @override
   _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    StreamController<double> opacityStream;

    @override
  void initState() {
    opacityStream = StreamController();
    super.initState();
  }

  @override
  void dispose() {
    opacityStream?.close();
    super.dispose();
  }


    @override
    Widget build(BuildContext context) {  
      Future.delayed(Duration(seconds: 1)).then((_){
        opacityStream.add(1);
      });
      return S19Scaffold(
      /*  appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image(
            image: Style.genrale.logo,
            height: 30,
          ),
        ),
      */
        body:  Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: opacityStream.stream,
              builder: (_, snap) => AnimatedOpacity(
                child: Image(
                  image: Style.genrale.logo,
                  width: MediaQuery.of(context).size.width/2,
                ),
                duration: Duration(seconds: 1),
                opacity: snap.data,
                curve: Curves.easeInCirc,
                onEnd: start,
              ),
              initialData: .0,
            ),

            S19RaisedButton(
              icon: MdiIcons.squareEditOutline,
              text: "Register",
//              colors: [Style.genrale.primary, Style.genrale.primary[]],
              textColor: Style.genrale.red,
              )
            //DashedLoader()

          ]
        ),
      ); 
    }

    void start() async {
      
      await Future.delayed(Duration(seconds: 3));
      print("Start App");
    }
}