library core;

import '../app/routes/Routes.dart';
import '../core/core.reflectable.dart';

import 'controller/Controller.dart';

export 'controller/Controller.dart';
export 'screen/Screen.dart';


/*
 *	Author Champlain Marius Bakop
 */

doRouting(String control, String method, dynamic params){
  try{
    print("Appel du controller $control et de sa methode $method, avec les arguments $params");
    print("Controller found = ${Controller.reflectors[control].type}");
    if(Controller.reflectors[control].hasReflectee){
      if(params is List){
        print("method call with param's list");
        return Controller.reflectors[control].invoke(method, params);
      }else{
        print("Param type = ${params.runtimeType}");
        return Controller.reflectors[control].invoke(method, [params]);  
      }  
    }
  }catch (ex, st){
    print(st);
    print("error = $ex");
    print("Controller $control not define $method's method");
  }
}


initCore(){
  initializeReflectable();
  registeredRoute();
  initControllerReflectable();
}

main(){}