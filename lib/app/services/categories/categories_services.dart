import 'package:seecovid/app/models/categories/categories.dart';
import 'package:seecovid/app/interfaces/services_interfaces.dart';
import 'package:seecovid/app/models/db_provider.dart';


class CategoriesServices implements ServicesInterfaces<Categories>{
  String _tablename='categories';
  @override
  Future<int> addToLocal(Categories categorie) async{
   Map<String,dynamic> map=getJSon(categorie);
    return await DBProvider.localDb.insert(_tablename,map);
  }

  @override
  Future<int> addToOnline(Categories categorie) {
  
    return null;
  }

  @override
  Categories createFromJson(Map<String, dynamic> map)
  {
     return Categories(
      nomcategorie: map['nomcategorie']
    );
  }

  @override
  Categories createFromJsonWithId(Map<String, dynamic> map) {
  
    return Categories(
      idcategorie: map['idcategorie'],
      nomcategorie: map['nomcategorie']
    );
  }

  @override
  Future<Map<String,dynamic >> findByIdLocal(id) {
    return null;
  }

  @override
  Future<Map<String,dynamic >> findByIdOnline(id) {
    
    return null;
  }

  @override
  Map<String,dynamic > getJSon(Categories categorie) {
    
    return{
      'nomcategorie':categorie.nomcategorie
    } ;
  }

  @override
  Map<String,dynamic> getJsonWithId(Categories categorie) {
    return {
      'nomcategorie':categorie.nomcategorie,
      'idcategorie':categorie.idcategorie
    };
  }

  @override
  Future<List<Map<String, dynamic>>> retriveFromLocal() {
   
    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> retriveFromOnline() {

    return null;
  }

  @override
  Future<int> updateLocal(Categories categorie)async  {
  
    return 0;
  }

  @override
  Future<int> updateOnline(Categories categorie) async {
 
    return 0;
  }



}