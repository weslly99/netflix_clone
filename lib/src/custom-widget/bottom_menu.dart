import 'package:flutter/material.dart';
import 'package:netflix_clone/src/custom-widget/custom_icon_button.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      color: Colors.black,
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CustomIconButton(Icons.home, "Inicio",null,selected: true),
          CustomIconButton(Icons.search, "Search", null),
          CustomIconButton(Icons.tv, "Em breve", null),
          CustomIconButton(Icons.file_download, "Download", null),
          CustomIconButton(Icons.menu, "Mais", null)
        ],
      ),
    );
  }
  
}
