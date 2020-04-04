
  import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seecovid/app/utils/Styles.dart';

class DashedLoader extends StatefulWidget  {

  final Color onColor, offColor;

    DashedLoader({this.onColor, this.offColor});

    @override
    _DashedLoaderState createState() => _DashedLoaderState();
  }
  
  class _DashedLoaderState extends State<DashedLoader> {

    int step = 0;
    StreamController<int> stepController;
    Color onColor, offColor;
    bool canProcess = false;

    @override
  void initState() {
    super.initState();
    onColor = widget.onColor ?? Style.genrale.primary;
    offColor = widget.offColor ?? Style.genrale.red;
    canProcess = true;
    stepController = StreamController();
  }

  @override
  void dispose() {
    canProcess = false;
    stepController?.close();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {

      start();

      return StreamBuilder(
        stream: stepController.stream,
        initialData: 0,
        builder: (_, step) => Center(
          widthFactor: 100,
          child: Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: Container(
                  width: 5,
                  height: 5,
                  margin: EdgeInsets.only(right: 10, top: 30),
                  decoration: BoxDecoration(
                    color: step.data > 0 ? onColor : offColor,
                    shape: BoxShape.circle
                  )
                )
              ),
              Flexible(
                child: Container(
                  width: 5,
                  height: 5,
                  margin: EdgeInsets.only(right: 10, top: 30),
                  decoration: BoxDecoration(
                    color: step.data > 1 ? onColor : offColor,
                    shape: BoxShape.circle
                  )
                )
              ),
              Flexible(
                child: Container(
                  width: 5,
                  height: 5,
                  margin: EdgeInsets.only( top: 30),
                  decoration: BoxDecoration(
                    color: step.data > 2 ? onColor : offColor,
                    shape: BoxShape.circle
                  )
                )
              ),
            ],
          )
        )
      );
    }

    void start() async {
      await Future.delayed(Duration(seconds: 1));

        try{
          step++;
          step = step % 4;
          print("Step = $step");
          if(canProcess){
            stepController?.add(step);
            start();
          }
        } catch(e){}
      
    }
  }