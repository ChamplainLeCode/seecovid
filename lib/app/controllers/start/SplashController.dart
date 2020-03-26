import 'package:flutter/widgets.dart';
import "package:seecovid/core/core.dart";
import 'package:seecovid/core/routes/Router.dart';

@controller
class SplashController{

  index(BuildContext context){
    screen("splash", context, RouteMode.REPLACE);
  }

  sampleDistribution(BuildContext context){
    screen("sample", context, RouteMode.REPLACE);
  }
}
