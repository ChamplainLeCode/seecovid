library core.route;

import 'package:flutter/cupertino.dart' as cupertino;
import 'package:seecovid/app/app.module.dart';
import '../core.dart';


/*
 *	Author Champlain Marius Bakop
 */

enum RouteMode{
  REPLACE,
  PUSH,
  POP,
  STAY,
  EMPTY
}

  enum RouteDirection{
    LEFT_TO_RIGHT,
    RIGHT_TO_LEFT,
    UP_TO_DOWN,
    DOWN_TO_UP
  }

  class Route{
    static Map<String, dynamic> routeMap = {};

    static void data(String s, dynamic action ) {
      assert(s != null && action != null);
      routeMap[s] = action;
    }
    
  }

  void screen(String name, cupertino.BuildContext context, RouteMode mode, {dynamic parameter, RouteDirection direction = RouteDirection.LEFT_TO_RIGHT }){
    switch(mode){
      case RouteMode.REPLACE:
        cupertino.Navigator.pushReplacementNamed(context, name, arguments: parameter);
        break;
      case RouteMode.POP:
        cupertino.Navigator.of(context).pop(name);
        break;
      case RouteMode.PUSH:
        cupertino.Navigator.of(context).pushNamed(name, arguments: parameter);
        break;
      case RouteMode.EMPTY:
        cupertino.Navigator.of(context).pushNamedAndRemoveUntil(name, (_)=>false, arguments: parameter);
        break;
      default: cupertino.Navigator.of(context).pop(false);
    }
  }


class Router {

  static cupertino.BuildContext context;

  static dynamic goto(String routeName, {dynamic parameter}) {
    dynamic action = Route.routeMap[routeName];
    if(action != null){
      if(action is Function){
        if(parameter == null){
          return action();
        }else
          return action(parameter);
      }else if(action is String){
        List<String> li= action.split('@');
        if(li.length == 2){
          String controllerName = li[0];
          String methodName = li[1];
          return doRouting(controllerName, methodName, parameter);
        }
      }
    }else{
      print('No action for this route');
    }

  }


  static get getRouter => (cupertino.RouteSettings rs)=>appRoute(rs);

  static cupertino.Route<dynamic> appRoute(cupertino.RouteSettings settings) {
    try{ 
      return cupertino.PageRouteBuilder(
        settings: settings,
        transitionDuration: Duration(milliseconds: 400),
        pageBuilder: (_, a1, a2) => screens[settings.name]
      );
    }catch(e){
      return new RouteTransition(builder: (_){
        return cupertino.Center(
          child: cupertino.Text("No Route found")
        );
      }, settings: settings);
    }
  }

  static cupertino.Widget componentForRouteName(String s) => screens[s];

  static goBack(cupertino.BuildContext context) {
    cupertino.Navigator.of(context).pop(true);
  }

}

class RouteTransition<T> extends cupertino.CupertinoPageRoute<T> {
  RouteTransition({cupertino.WidgetBuilder builder, cupertino.RouteSettings settings})
      : super(builder: builder, settings: settings, maintainState: true);

  @override
  cupertino.Widget buildTransitions(cupertino.BuildContext context, cupertino.Animation<double> animation,
      cupertino.Animation<double> secondaryAnimation, cupertino.Widget child) {
    return new cupertino.CupertinoPageTransition(
      child: child, 
      linearTransition: true, 
      primaryRouteAnimation: cupertino.CurvedAnimation(
                 parent: animation,
                 curve: cupertino.Curves.slowMiddle,
                 reverseCurve: cupertino.Curves.bounceInOut,
               ), 
      secondaryRouteAnimation: cupertino.CurvedAnimation(
                 parent: secondaryAnimation,
                 curve: cupertino.Curves.slowMiddle,
                 reverseCurve: cupertino.Curves.easeInToLinear,
               )
    );
  }
}
