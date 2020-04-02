



import 'package:seecovid/app/interfaces/services_interfaces.dart';
import 'package:seecovid/app/models/categories/etat_sante_initial.dart';

class EtatSanteInitialServices implements ServicesInterfaces<EtatSanteInitial>
{
  @override
  String _tablename='etat_sante_initial';
  @override
  Future<int> addToLocal(EtatSanteInitial objet) {
   
    return null;
  }

  @override
  Future<int> addToOnline(EtatSanteInitial objet) {
   
    return null;
  }

  @override
  EtatSanteInitial createFromJson(Map<String,dynamic> map) {
 
    return null;
  }

  @override
  EtatSanteInitial createFromJsonWithId(Map<String,dynamic> map) {
    
    return null;
  }

  @override
  Future<Map<String,dynamic>> findByIdLocal(id) {
  
    return null;
  }

  @override
  Future<Map<String,dynamic>> findByIdOnline(id) {
    
    return null;
  }

  @override
  Map<String,dynamic> getJSon(EtatSanteInitial objet) {
   
    return null;
  }

  @override
  Map<String,dynamic> getJsonWithId(EtatSanteInitial objet) {
   
    return null;
  }

  @override
  Future<List<Map<String,dynamic>>> retriveFromLocal() {
    
    return null;
  }

  @override
  Future<List<Map<String,dynamic>>> retriveFromOnline() {
   
    return null;
  }

  @override
  Future<int> updateLocal(EtatSanteInitial objet) {
    
    return null;
  }

  @override
  Future<int> updateOnline(EtatSanteInitial objet) {
  
    return null;
  }
  
}