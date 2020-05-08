
import 'package:flutter/material.dart';

class CardMosqueWidget extends StatelessWidget {
  final String title;
  final String urlImage;
  final int review;
  final bool isOpen;
  final bool isFree;

  const CardMosqueWidget({
    Key key, 
    this.title, 
    this.urlImage, 
    this.review, 
    this.isOpen, 
    this.isFree
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
          SizedBox(width: 20,),
            Container(
              height: 160,
              width: 120,

              decoration: BoxDecoration(
                color:  Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(urlImage)
                )
              ),
            ),

            SizedBox(width: 15,),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[ 
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                    ] 
                  ),
                  Text("($review / ${review * 2} reviews)"),

                  SizedBox(height: 10,),
                
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.lightBlue[50],
                        ),
                        child: Text(isOpen? "aberto 24 horas".toUpperCase(): "não aberto 24 horas".toUpperCase(), style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),),
                      ),

                      SizedBox(width: 10,),

                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.purple[50],
                        ),
                        child: Text(isFree? "Livre".toUpperCase(): "indisponível".toUpperCase(), style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),),
                      )
                    ],
                  )
                ],
              )
            ),
          ],
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}