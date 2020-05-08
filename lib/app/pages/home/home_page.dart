import 'package:flutter/material.dart';
import 'package:uichalleges/app/components/cards/card_mosque_widget.dart';
import 'package:uichalleges/app/models/mosque_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MosqueModel> listMosque = [
    MosqueModel(
      title: "Shirotal Mustaqim Mosque",
      urlImage: "https://gdia.com.br/fl/normal/1571688292-5dae18a070de4_mesquita12.jpg",
      review: 45,
      isOpen: true,
      isFree: true 
    ),
    MosqueModel(
      title: "Shirotal Mustaqim Mosque",
      urlImage: "https://i.pinimg.com/originals/07/9a/09/079a09695bf74f154d09705dc1869a0f.jpg",
      review: 45,
      isOpen: true,
      isFree: true 
    ),
    MosqueModel(
      title: "Shirotal Mustaqim Mosque",
      urlImage: "https://www.360meridianos.com/wp-content/uploads/2017/08/mesquita-catedral-cordoba-1-1280x720.jpg",
      review: 45,
      isOpen: true,
      isFree: true 
    ),
    MosqueModel(
      title: "Shirotal Mustaqim Mosque",
      urlImage: "https://i2.wp.com/viagemcult.com/wp-content/uploads/abudhabi-mesquita.jpg",
      review: 45,
      isOpen: true,
      isFree: true 
    )
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.45,
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
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage("assets/eu.jpg"), fit: BoxFit.cover),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Text("Olá Judson!", style:  TextStyle(
                          color: Colors.white, fontSize: 18
                        )),

                        SizedBox(height: 8),

                        Text("Deseja pesquisar mesquitas próximas?", style:  TextStyle(
                          color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold
                        )),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.my_location, color: Theme.of(context).primaryColor,),
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
              top: size.height * 0.40 ,
              child: Container(
                height: size.height * 0.60,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: listMosque.length,
                    itemBuilder: (context, index){

                      MosqueModel mosque = listMosque[index];
                      return CardMosqueWidget(
                        title: mosque.title,
                        urlImage: mosque.urlImage,
                        isOpen: mosque.isOpen,
                        isFree: mosque.isFree,
                        review: mosque.review,
                      );
                    }
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_wide_angle),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(''),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value){
          
        },
      ),
    );
  }
}