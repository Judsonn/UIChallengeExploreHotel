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
      title: "Hotel leblon plaza",
      urlImage: "https://cdn.pixabay.com/photo/2018/12/05/21/49/hotel-3858833_960_720.jpg",
      review: 45,
      isOpen: true,
      isFree: true 
    ),
    MosqueModel(
      title: "Hotel Mesquita",
      urlImage: "https://torange.biz/photo/20/IMAGE/pool-pools-turkish-hotels-swimming-luxury-20899.jpg",
      review: 45,
      isOpen: true,
      isFree: true 
    ),
    MosqueModel(
      title: "Hotel da barra vip",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/f/f2/SOFITEL_HOTEL_MARRAKECH_MOROCCO_APRIL_2013_%288709735037%29.jpg",
      review: 45,
      isOpen: true,
      isFree: true 
    ),
    MosqueModel(
      title: "Hotel solare",
      urlImage: "https://images.pexels.com/photos/2133508/pexels-photo-2133508.jpeg?cs=srgb&dl=agua-ao-ar-livre-ao-lado-da-piscina-2133508.jpg&fm=jpg",
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
                        image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/10/16/11/burj-al-arab-2624317_960_720.jpg"),
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

                        Text("Deseja pesquisar hotéis mais próximas?", style:  TextStyle(
                          color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold
                        )),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.my_location, color: Theme.of(context).primaryColor,),
                            hintText: "Hotéis mais próxima"
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
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 50),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
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
        elevation: 10,
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