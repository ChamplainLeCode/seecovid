

import 'package:seecovid/app/interfaces/interfaces_services.dart';
import 'package:seecovid/app/models/user/utilisateurs.dart';

class UtilisateursServices implements ServicesInterfaces<Utilisateurs>
{
  @override
  Future<int> add(Utilisateurs objet) {
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
  Future<int> updateLocal(Utilisateurs objet) {
    // TODO: implement updateLocal
    return null;
  }

  @override
  Future<int> updateOnline(Utilisateurs objet) {
    // TODO: implement updateOnline
    return null;
  }
  
}