import 'package:flutter/cupertino.dart';
import 'package:pokedex/Stat_Row.dart';

Widget Stats(var data){
  return SingleChildScrollView(
    child: Column(

        children: [
          Stat_Row(text: "HP" , value: data['hp'] ),
          Stat_Row(text: "Attack" , value: data['attack'] ),
          Stat_Row(text: "Defense" , value: data['defense'] )

        ],

    ),
  );
}