import 'package:seecovid/core/routes/Router.dart';


void registeredRoute(){

  Route.data("/splash", "SplashController@index");
  Route.data("/sample", "SplashController@sampleDistribution");
}