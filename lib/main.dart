import 'package:flutter/material.dart';
import 'package:netflix_clone/src/app.dart';
import 'package:flutter/services.dart';

void main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  await SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(App());
}
