import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokedex/details.dart';
import 'package:pokedex/pokemon_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
 late AnimationController controller;
 late Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animation=Tween(begin: 0.0,end: 1.0).animate(controller);
    controller.addListener(() {
      setState(() {

      });
    });
    controller.forward();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Pokemon_list()));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(decoration: const BoxDecoration(
            color: Color(0xff007FFF),
          ),
          child: Center(child: Text('POKEDEX',
            style:   TextStyle(color: Color(0xff66FF00),
                fontSize: 60.0*animation.value,
                fontWeight: FontWeight.bold,
              fontFamily: "Pokemon"),)),
        )
    );
  }
}
