import 'package:build/build.dart';
//import 'package:seecovid/core/screen/screen_generator/lib/src/screen_generator.dart';
import 'package:source_gen/source_gen.dart';

import 'src/screen_generator.dart';


/*
 *	Author Champlain Marius Bakop
 */

Builder screenGenerator(BuilderOptions options) {
    var builder =  SharedPartBuilder([ScreenGenerator()], 'screen');
  return builder;
} 