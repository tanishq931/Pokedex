

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/textStyles/title.dart';

Widget About(var data,BuildContext context){
  var width=MediaQuery.of(context).size.width;
  return SingleChildScrollView(
    child: Column(
      children: [
        Text(data['xdescription'],style: title(color: Colors.black,),),
        SizedBox(height: 20,),
        Container(
          width: width-100,
          alignment: Alignment.center,
          color: Color(0xff7FFFD4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Height',style: heading(color: Colors.black,size: 20),),
              Text(data['height'],style: heading(color: Colors.black,size: 20),)
            ],
          ),
        ),
        Container(
          width: width-100,
          alignment: Alignment.center,
          color: Color(0xff7FFFD4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Weight',style: heading(color: Colors.black,size: 20),),
              Text(data['weight'],style: heading(color: Colors.black,size: 20),)
            ],
          ),
        ),




      ],
    ),
  );
}
