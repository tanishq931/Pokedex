import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/TypeContainer.dart';
import 'package:pokedex/about.dart';
import 'package:pokedex/landscape.dart';
import 'package:pokedex/potraitContainer.dart';
import 'package:pokedex/stats.dart';
import 'package:pokedex/textStyles/title.dart';

class Details extends StatefulWidget {
Details(this.data);
var data;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  double? size=8;

  @override
  Widget build(BuildContext context) {
    var orient = MediaQuery.of(context).orientation;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
        backgroundColor: Colors.red,
        body: Column(
          children: [
           orient==Orientation.portrait?Potrait_Cont(widget.data):Landscape(widget.data), 
            Expanded(
              child: Column(
                children: [
                
                  TabBar(
                              indicatorWeight: 4,
                              tabs: [
                                Text('About',style: title(size: 25,color: Colors.black),),
                                Text('Stats',style: title(size: 25,color: Colors.black),)

                              ],
                            ),
                  Expanded(child:

                       TabBarView(
                                  children: [
                                    About(widget.data,context),
                                    Stats(widget.data),
                                  ],
                                ),
                              ),
                ],
              ),
           ),
          ],
        )

      ),
    );
  }
}
