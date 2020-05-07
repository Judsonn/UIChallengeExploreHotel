import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: 400,
              width: double.maxFinite,
              child:Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/mosque.jpeg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Container(
                    color: Theme.of(context).primaryColor.withOpacity(0.80)
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage("assets/mosque.jpeg"), fit: BoxFit.cover),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Text("Olá Judson!", style:  TextStyle(
                          color: Colors.white, fontSize: 18
                        )),

                        SizedBox(height: 20),

                        Text("Deseja pesquisar mesquitas próximas?", style:  TextStyle(
                          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold
                        )),

                        SizedBox(height: 30),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.my_location),
                            hintText: "Mesquita mais próxima"
                          ),
                        )


                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 360,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}