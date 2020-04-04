

import 'package:seecovid/app/interfaces/services_interfaces.dart';
import 'package:seecovid/app/models/categories/contact_rencontres.dart';

class ContactRencontresServices implements ServicesInterfaces<ContactRencontres>
{
  String _tablename='contact_rencontres';

  @override
  Future<int> addToLocal(ContactRencontres contactrenc) {
   
    return null;
  }

  @override
  Future<int> addToOnline(ContactRencontres contactrenc) {
   
    return null;
  }

  @override
  ContactRencontres createFromJson(Map<String,dynamic> map) {
    
    return null;
  }

  @override
  ContactRencontres createFromJsonWithId(Map<String,dynamic> map) {
  
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
  Map<String,dynamic> getJSon(ContactRencontres contactrenc) {
  
    return null;
  }

  @override
  Map<String,dynamic> getJsonWithId(ContactRencontres contactrenc) {
   
    return null;
  }

  @override
  Future<List<Map<String,dynamic>>> retriveFromLocal() {
    
    return null;
  }

  @override
  Future<List<Map<String,dynamic>>> retriveFromOnline() {
    // TODO: implement retriveFromOnline
    return null;
  }

  @override
  Future<int> updateLocal(ContactRencontres contactrenc) {
    // TODO: implement updateLocal
    return null;
  }

  @override
  Future<int> updateOnline(ContactRencontres contactrenc) {
    // TODO: implement updateOnline
    return null;
  }
  

}