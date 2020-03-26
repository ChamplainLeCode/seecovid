
  import 'package:flutter/material.dart';

class DashedLoader extends StatefulWidget  {
    @override
    _DashedLoaderState createState() => _DashedLoaderState();
  }
  
  class _DashedLoaderState extends State<DashedLoader> {

    int step = 0;


    @override
    Widget build(BuildContext context) {

      Future.delayed(Duration(seconds: 1)).then((_){
        try{
          setState(() {
            step ++;
            step = step % 4;
          });
        } catch(e){}
      });

      return Center(
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
                  color: step > 0 ? Colors.white : Colors.white70,
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
                  color: step > 1 ? Colors.white : Colors.white70,
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
                  color: step > 2 ? Colors.white : Colors.white70,
                  shape: BoxShape.circle
                )
              )
            ),
          ],
        )
      );
    }
  }