import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/textStyles/title.dart';

Widget Stat_Row({
  required String text,
  required int value,
}){
  return  Padding(
    padding: EdgeInsets.only(top: 10,bottom: 10),

          child: Container(
            width: 300,
              child: Row(

                children: [
                  SizedBox(width: 100,child: Text(text,style: title())),

                  SizedBox(width: 100,child: Text(value.toString(),style: title(),)),


                  Container(

                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.orangeAccent,
                    ),
                    width: value.toDouble(),

                  )
                ],




    ),
        ),
  );
}