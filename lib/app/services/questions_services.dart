
import 'package:seecovid/app/interfaces/interfaces_services.dart';
import 'package:seecovid/app/models/questions.dart';

class QuestionssServices implements ServicesInterfaces<Questions>
{
  @override
  Future<int> add(Questions objet) {
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
  Future<List<Map<String,dynamic >>> retriveFromOnline() {
    // TODO: implement retriveFromOnline
    return null;
  }

  @override
  Future<int> updateLocal(Questions objet) {
    // TODO: implement updateLocal
    return null;
  }

  @override
  Future<int> updateOnline(Questions objet) {
    // TODO: implement updateOnline
    return null;
  }
  
}