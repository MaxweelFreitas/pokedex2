import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/core/screen/animation_page.dart';
import 'core/colors/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set defaults to system colors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //statusBar
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      //navigationBar color
      systemNavigationBarColor: AppColors.background,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    //Orientations configs of app
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimationPage(),
    );
  }
}
