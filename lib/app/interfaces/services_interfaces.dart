

import 'dart:async';

import 'dart:core';


class ServicesInterfaces<type>{
  String _tablename;
  Future<int> addToLocal(type objet)async{ return 0;}
  Future<int> addToOnline(type objet)async{return 0;}
  
  //cette fonction recuperera les choses en ligne
  Future<List<Map<String,dynamic>>> retriveFromOnline()async{
  List<Map<String,dynamic>> list=List();
    return list;
  }

  //fonction qui va recuperer les informations de la la bd locale
  Future<List<Map<String,dynamic>>> retriveFromLocal() async{
    List<Map<String,dynamic>> list=List();
    return list;
  }

  //fonction pour faire une mise ajour locale
  Future<int> updateLocal(type objet)async=> 0;

  //fonction pour une mise a jour en ligne
  Future<int> updateOnline(type objet) async=>0;

  Future<Map<String,dynamic>> findByIdLocal(dynamic id)async=>{};
   Future<Map<String,dynamic>> findByIdOnline(dynamic id)async=>{};

//fonction aux initialisalistion des objets ainsi que 
   type createFromJson(Map<String,dynamic> map)=>null;
   type createFromJsonWithId(Map<String,dynamic> map)=>null;
   Map<String,dynamic> getJSon(type objet)=>{};
   Map<String,dynamic> getJsonWithId(type objet)=>{};


}