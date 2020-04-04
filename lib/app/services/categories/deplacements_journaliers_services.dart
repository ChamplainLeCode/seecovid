import 'package:seecovid/app/interfaces/services_interfaces.dart';
import 'package:seecovid/app/models/categories/deplacements_journaliers.dart';

class DeplacementsJournaliersServices
    implements ServicesInterfaces<DeplacementsJournaliers> {
      @override
      String _tablename='deplacements_journaliers';
  @override
  Future<int> addToLocal(DeplacementsJournaliers objet) {
    return null;
  }

  @override
  Future<int> addToOnline(DeplacementsJournaliers objet) {
    return null;
  }

  @override
  DeplacementsJournaliers createFromJson(Map<String, dynamic> map) {
    return null;
  }

  @override
  DeplacementsJournaliers createFromJsonWithId(Map<String, dynamic> map) {
   
    return null;
  }

  @override
  Future<Map<String, dynamic>> findByIdLocal(id) {
    
    return null;
  }

  @override
  Future<Map<String, dynamic>> findByIdOnline(id) {
   
    return null;
  }

  @override
  Map<String, dynamic> getJSon(DeplacementsJournaliers objet) {
   
    return null;
  }

  @override
  Map<String, dynamic> getJsonWithId(DeplacementsJournaliers objet) {
   
    return null;
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
  Future<int> updateLocal(DeplacementsJournaliers objet) {
   
    return null;
  }

  @override
  Future<int> updateOnline(DeplacementsJournaliers objet) {
    
    return null;
  }
}
