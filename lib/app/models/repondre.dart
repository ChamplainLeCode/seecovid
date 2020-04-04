
import 'package:seecovid/app/interfaces/modeles_interfaces.dart';
import 'package:seecovid/app/models/db_provider.dart';


class Repondre implements ModelesInterfaces

{
  int idrepondre;
  String contenu;
  DateTime date;
  int question;
  int citoyen;
  String tablename;
Repondre();

@override
void fromJSon(Map<String,dynamic> map)
{
  this.idrepondre=map['idrepondre'];
  this.contenu=map['contenu'];
  this.date=map["date"];
  this.citoyen=map['citoyen'];
  this.question=map["question"];
}

@override
Map<String,dynamic> toJSon()=>
{
  "idrepondre":this.idrepondre,
  "contenu":this.contenu,
  "date":this.contenu,
  "citoyen":this.citoyen,
  "question":this.question
};

 Future<int> add() async{
    int ajout=await DBProvider.localDb.insert(tablename,this.toJSon());
   return ajout;
 }

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