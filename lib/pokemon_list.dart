import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Backend.dart';
import 'package:pokedex/TypeContainer.dart';
import 'package:pokedex/details.dart';
import 'package:pokedex/textStyles/title.dart';

class Pokemon_list extends StatefulWidget {


  @override
  State<Pokemon_list> createState() => _Pokemon_listState();
}

class _Pokemon_listState extends State<Pokemon_list> with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.red,

    
      body:  Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 30,),
           const  Text('Pokemons',style:   TextStyle(color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Circula"),),
            Expanded(

              child: FutureBuilder(
                future: getPoke(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                  var data = snapshot.data;
                    return GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: width < 400.0 ? 2 : width > 1100
                              ? 6
                              : 4,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,


                        ),
                        itemCount: data.length,

                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Details(data[index])));
                            },
                            child: Container(

                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12)
                              ),

                              child: Stack(

                                children: [
                                  Positioned(
                                    bottom: -20,
                                    right: -20,
                                    child:Image.asset("asset/images/pokeball.png",
                                      width: 150,
                                      color: Colors.white.withOpacity(0.6),
                                    )),
                                  Positioned(
                                      bottom: 5,
                                      right: 5,
                                      child: Container(
                                        height: 130,
                                        width: 130,
                                        child: Image.network(
                                        data[index]["imageurl"],
                                          width: 150,
                                        ),
                                      )),
                                  Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(data[index]["name"],
                                        style: title(size: 25, bold: true),)),
                                  Positioned(
                                      top: 40,
                                      left: 10,
                                      child: TypeContainer(text: data[index]["typeofpokemon"][0],)),
                                  Positioned(
                                      top: 75,
                                      left: 10,
                                      child:data[index]["typeofpokemon"].length>1?TypeContainer(text: data[index]["typeofpokemon"][1],):Container()),
                                ],
                              ),
                            ),
                          );
                        });
                  }

                  else {
                    return const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(
                          Colors.blue,
                        ),
                      ),
                    );

                  }
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
