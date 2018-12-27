import 'package:flutter/material.dart';
import 'package:netflix_clone/src/custom-widget/banner_destak.dart';
import 'package:netflix_clone/src/custom-widget/bottom_menu.dart';
import 'package:netflix_clone/src/custom-widget/top_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Stack(
          children: [BannerDestak(),TopMenu()],
        ),
      ),
    );
  }
}
