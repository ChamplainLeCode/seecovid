library core.controller;

import 'package:reflectable/reflectable.dart';
import '../../app/app.module.dart';


/*
 *	Author Champlain Marius Bakop
 */

class Controller extends Reflectable{
  static Map<String, InstanceMirror> reflectors = {};
  const Controller() : super(invokingCapability);
}

const Controller controller = Controller();


void initControllerReflectable(){
  /**
   * Here we subscribe controllers
   */
  for(dynamic control in controllers){
    Controller.reflectors[control.runtimeType.toString()] = controller.reflect(control);
  }
}


