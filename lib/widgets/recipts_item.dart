import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/recipts.dart';

class ReciptsItems extends StatelessWidget {
  // const ReciptsItems({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexilty complexity;
  final Affordability affordability;


  String get getcomplexity{
    switch(complexity){
      case Complexilty.Hard:
        return"Hard";
        break;
      case Complexilty.Challenging:
        return"Challenging";
        break;
      case Complexilty.Simple:
        return"Simple";
        break;
    }

  }
  String get getaffordability{
    switch(affordability){
      case Affordability.Luxurious:
        return"Hard";
        break;
      case Affordability.Pricey:
        return"Challenging";
        break;
      case Affordability.affordability:
        return"Simple";
        break;
    }

  }
  ReciptsItems(
      {required this.id,
        required this.title,
        required this.affordability,
        required  this.complexity,
        required  this.duration,
        required this.imageUrl});

  void selectRecipts() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectRecipts,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 10,
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  child: Container(
                    color: Colors.black45,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    height: 80,
                    width: 120,
                  ),
                  bottom: 20,
                  right: 20,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10,top:10),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Row(
                    children: [Icon(Icons.watch), Text("$duration min")],
                  ),
                  Row(
                    children: [Icon(Icons.work), Text(getcomplexity)],
                  ),
                  Row(
                    children: [Icon(Icons.money), Text(getaffordability)],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
