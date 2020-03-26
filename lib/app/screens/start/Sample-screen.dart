 

import "package:flutter/material.dart";
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import "package:seecovid/core/core.dart";

@Screen("sample")
class SampleScreen extends StatefulWidget{
   @override
   _SampleScreenState createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {

   @override
   Widget build(BuildContext context) {
      return Scaffold(
        body: new WebviewScaffold(
          url: 'https://infographics.channelnewsasia.com/wuhan/gmap.html',
          withZoom: true,
          withLocalStorage: true,
          hidden: true,

          initialChild: Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text('Waiting.....'),
            ),
          ),
        )
      );
   }

}
