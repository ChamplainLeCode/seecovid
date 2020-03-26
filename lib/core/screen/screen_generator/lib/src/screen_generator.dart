import 'dart:io';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';
import 'package:seecovid/core/screen/Screen.dart';
/*
 *	Author Champlain Marius Bakop
 */
class ScreenGenerator extends GeneratorForAnnotation<Screen> {
  
  @override
  dynamic generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep)   {
        String source = element.metadata[0].toSource();
        String sh = element.source.shortName,
               ex = buildStep.inputId.extension;
    generatedScreens.putIfAbsent(source.substring(source.indexOf("'")+1, source.lastIndexOf("'")), () => {
      #uri: element.source.uri.toString(),
      #className: "${sh.replaceAll(ex, '').replaceAll('-s', 'S')}()"
    });
     writeMap();
    
  }
}



Map<String, Map<Symbol, String>> generatedScreens = {};



writeMap()async {
  File f = File("lib/app/screens.dart");
  String content = """import 'package:flutter/widgets.dart';\n\n/*\n *\tAuthor Champlain Marius Bakop\n */\n\n\nMap<String, Widget> screens = {""";
  generatedScreens.forEach((String annotation, Map<Symbol, String> data){
    content = """import '${data[#uri]}';\n$content\n\t'$annotation': ${data[#className]},""";
  });
  content = "$content\n};";
  await f.writeAsString(content, mode: FileMode.write);
}
