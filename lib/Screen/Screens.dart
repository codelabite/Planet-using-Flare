import 'package:flutter/material.dart';
import 'package:theplanet/model/ModelFile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('The Planet App',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 300,
              child: ListView.builder(
                  itemCount: PlanetListFile.length,
                  itemBuilder: (context, index){
                    return Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:45),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.cyan,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.cyan
                                  ),
                                ),

                                Positioned(
                                  left: 5,
                                  top: 5,
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      image: DecorationImage(image:
                                      NetworkImage(
                                        'https://gfycat.com/gargantuanliquidhammerheadbird',
                                        //PlanetListFile[index].imgPath
                                      ))
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      )
    );
  }
}