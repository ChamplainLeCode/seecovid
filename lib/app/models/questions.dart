import 'package:seecovid/app/interfaces/modeles_interfaces.dart';

class Questions implements ModelesInterfaces{
  int idquestion;
  String contenu;

Questions();
@override
  void fromJSon(Map<String,dynamic> map)
  {
    this.idquestion=map["id_question"];
    this.contenu=map["contenu"];
  }
@override
  Map<String,dynamic> toJSon()=>
  {
      "id_question":this.idquestion,
      "contenu":this.contenu
  };

  @override
  void fromJSonWithId(Map<String, dynamic> map) {
    // TODO: implement fromJSonWithId
  }

  @override
  Map<String, dynamic> toJSonWithId() {
    // TODO: implement toJSonWithId
    return null;
  }

    
}