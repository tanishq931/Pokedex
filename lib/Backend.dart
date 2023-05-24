import 'dart:convert';

 import 'package:http/http.dart' as http;
var url = "https://raw.githubusercontent.com/hungps/flutter_pokedex/master/assets/pokemons.json";

getPoke() async{
  dynamic response =await http.get(Uri.parse(url));
  if(response.statusCode==200){
    var data = jsonDecode(response.body.toString());
    return data;
  }
}