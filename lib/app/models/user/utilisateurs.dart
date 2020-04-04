import 'package:seecovid/app/interfaces/modeles_interfaces.dart';
import 'package:seecovid/app/models/db_provider.dart';


class Utilisateurs implements ModelesInterfaces {
  num id;
  String nom;
  String naissance;
  String localisation;
  String motpasse;
  String telephone;
  String sexe;
  String tablenom="user";
@override
  void fromJSon(Map<String,dynamic> map){
    this.naissance=map["naissance"];
    this.nom=map["nom"];
    this.localisation=map['localisation'];
    this.sexe=map["sexe"];
    this.telephone=map['telephone'];
    this.motpasse=map['motpasse'];
  }

  //cette fonction initialize tout
  @override
fromJSonWithId(Map<String,dynamic> map){
  this.fromJSon(map);
  this.id=map["id"];
}
//cette fonction map l'objet mais sans le id
@override
  Map<String, dynamic> toJSon(){
    return 
    {
      "nom":this.nom,
      "passowrd":this.motpasse,
      "sexe":this.sexe,
      "telephone":this.telephone,
      "naissance":this.naissance,
      "localisation":this.localisation,

    };
  }

//cette fonction map tout l'objet
  Map<String, dynamic> toJSonWithId()
  {
    Map<String,dynamic> map=this.toJSon();
    map["id"]=this.id;
    return map;
  }

  //maintenant on va ajouter un utilisateur a la bd

  Future<int> add()
  async
  {
   int ajout= await DBProvider.localDb.insert(this.tablenom,this.toJSonWithId());
    return ajout;
  }

  Future<int> createaccount()async {
    //dans cette fonction nous allons communiquer avec le serveur distant;
    return 0;
  }

///Cette fonction renvoir la liste des utlisateurs prensents en local
///Etant donner qu'un seul utilisateur sera inserer dans la bd
  Future<List> getinformation()async{
     List luser=await  DBProvider.localDb.rawQuery("select * from $tablenom");
    return luser;
  }

  Future<void> truncateTable() async {
    DBProvider.localDb.rawDelete("truncate table $tablenom");
  }
}