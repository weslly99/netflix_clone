import 'package:flutter/material.dart';

class MovieKeyWord extends StatelessWidget {
  final List<String> keywords;
  final int containerSize = 50;

  MovieKeyWord(this.keywords);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 40, right: 40),
        width: double.infinity,
        height: 20,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _listGenerator()));
  }

  List<Widget> _listGenerator() {
    var usedSize = containerSize;
    List<Widget> listWidgets = [];

    for (int i = 0; i < keywords.length; i++) {
      usedSize -= keywords[i].length;
      if (usedSize > 0) {
        listWidgets.add(_keyWordText(keywords[i]));
        if (i == keywords.length - 1) {
          break;
        }
        listWidgets.add(_dot());
      }
    }
    return listWidgets;
  }

  _dot() {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
      child: Container(
        height: 3,
        width: 3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
      ),
    );
  }

  _keyWordText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Text(text, style: TextStyle(color: Colors.white,fontSize: 10),textDirection: TextDirection.ltr,),
    );
  }
}
