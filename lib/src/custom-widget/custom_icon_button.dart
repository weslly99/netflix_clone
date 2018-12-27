import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function callback;
  final bool selected;

  CustomIconButton(this.icon, this.text, this.callback,
      {this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: InkWell(
        child: Column(
          children: <Widget>[
            Icon(icon, color: _defineColor(selected)),
            Text(text,
                style: TextStyle(
                  fontSize: 10,
                  color: _defineColor(selected),
                ))
          ],
        ),
        onTap: callback,
      ),
    );
  }

  _defineColor(bool selected) {
    return selected ? Colors.white : Colors.grey[600];
  }
}
