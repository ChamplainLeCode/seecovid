///cette intefaces contiendra les elements de bases
///d'un modeles en terme de methodes

class ModelesInterfaces {
  
  void fromJSon(Map<String,dynamic> map){}
  void fromJSonWithId(Map<String,dynamic> map){}

  Map<String,dynamic> toJSon()=>{}; 
  Map<String,dynamic> toJSonWithId()=>{};
}