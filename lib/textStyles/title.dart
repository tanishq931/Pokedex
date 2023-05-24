import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle title({
  Color color=Colors.white,
 double size=20,
  bool bold=false,

}){
  return TextStyle(
      color: color,
      fontSize:size,
  fontFamily:"Circula" ,
  fontWeight:bold?FontWeight.bold:null
  );
}
TextStyle heading({
  Color color=Colors.white,
  double size=30,

}){
  return TextStyle(
    color: color,
    fontSize:size,
    fontFamily: "Circula_Bold",
    fontWeight: FontWeight.bold

  );
}