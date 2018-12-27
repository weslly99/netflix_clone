import 'package:flutter/material.dart';
import 'package:netflix_clone/src/custom-widget/movie-keyword.dart';

class BannerDestak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                stops: [0.68, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          height: MediaQuery.of(context).size.height * 0.90,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "asserts/images/bright.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            child: _bottomActions(),
            bottom: 15,
            left: 40,
            right: 40),
        Positioned(
            child: MovieKeyWord([
              "Policiais",
              "Los Angeles",
              "Filme de fantasia",
              "Realista"
            ]),
            bottom: 60,
            left: 5,
            right: 5)
      ],
    );
  }

  _bottomActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[_myList(), _watch(), _knowMore()],
    );
  }

  _myList() {
    return Column(
      children: <Widget>[
        Icon(
          Icons.add,
          size: 23,
        ),
        SizedBox(height: 3),
        Text("Minha lista", style: TextStyle(fontSize: 10))
      ],
    );
  }

  _watch() {
    return RaisedButton.icon(
      color: Colors.white,
      textColor: Colors.black,
      icon: Icon(Icons.play_arrow),
      label: Text("Assistir"),
      onPressed: () {},
    );
  }

  _knowMore() {
    return Column(
      children: <Widget>[
        Icon(Icons.info_outline, size: 23),
        SizedBox(height: 3),
        Text("Saiba mais", style: TextStyle(fontSize: 10))
      ],
    );
  }
}
