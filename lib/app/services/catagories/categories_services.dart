import 'package:seecovid/app/models/categories/categories.dart';
import 'package:seecovid/app/interfaces/interfaces_services.dart';


class CategoriesServices implements ServicesInterfaces<Categories>{
  @override
  Future<int> add(Categories objet) {
    // TODO: implement add
    return null;
  }

  @override
  Future<Map<String, dynamic>> findByIdLocal() {
    // TODO: implement findByIdLocal
    return null;
  }

  @override
  Future<Map<String, dynamic>> findByIdOnline() {
    // TODO: implement findByIdOnline
    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> retriveFromLocal() {
    // TODO: implement retriveFromLocal
    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> retriveFromOnline() {
    // TODO: implement retriveFromOnline
    return null;
  }

  @override
  Future<int> updateLocal(Categories objet) {
    // TODO: implement updateLocal
    return null;
  }

  @override
  Future<int> updateOnline(Categories objet) {
    // TODO: implement updateOnline
    return null;
  }
  
}