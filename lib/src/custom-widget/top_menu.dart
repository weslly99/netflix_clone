import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
  
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black45,Colors.transparent],
          stops: [0.2,1],
          begin: Alignment.topCenter,
          end:Alignment.bottomCenter
        )
      ),
      padding: EdgeInsets.only(top: 20,left:5,right: 5,bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset("asserts/images/netflix_logo.png",height: 32,width: 32,),
          Text("Séries",style: TextStyle(fontSize: 18)),
          Text("Filmes",style: TextStyle(fontSize: 18)),
          Text("Minha lista",style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}