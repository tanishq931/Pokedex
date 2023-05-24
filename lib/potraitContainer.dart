import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/TypeContainer.dart';
import 'package:pokedex/textStyles/title.dart';

Widget Potrait_Cont(final data){
  return Expanded(


    child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text(data["name"],style: heading(color: Colors.yellow,size: 40),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TypeContainer(text: data["typeofpokemon"][0]),
              SizedBox(width: 6,),
              data["typeofpokemon"].length>1?TypeContainer(text: data["typeofpokemon"][1]):Container()
            ],
          ),
          SizedBox(height: 40,),
          Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset("asset/images/pokeball.png",width: 200,color: Colors.white.withOpacity(0.5),),
                Image.network(data['imageurl'],width: 200)
              ],
            ),
          ),



        ],
      ),
    ) ,);
}