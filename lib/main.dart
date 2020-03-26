import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seecovid/app/screens/start/Splash-screen.dart';
import 'package:seecovid/core/core.dart';
import 'core/routes/Router.dart';


void main(){  

    WidgetsFlutterBinding.ensureInitialized();
    initCore();

    runApp(MyApp());
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  }
  
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SplashScreen.initImage();
    return MaterialApp(
      title: 'SeeCovid',
      theme: ThemeData(
        primaryColor: Colors.red,
        secondaryHeaderColor: Colors.white
    ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.getRouter,
      home: Tma()
    );
  }
  
}

class Tma extends StatefulWidget {
  @override
  _TmaState createState() => _TmaState();
}

class _TmaState extends State<Tma> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(microseconds: 1)).then((_) => Router.goto("/splash", parameter: context));
    return Scaffold();
  }
}

