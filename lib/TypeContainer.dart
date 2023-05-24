

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container TypeContainer({
  @required String? text,

  
     
}){
  return Container(

   decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(12),
    color: Color(0xff6CB4EE).withOpacity(0.6)
   ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$text',style: TextStyle(color: Colors.white),
      ),
    ),
);
}