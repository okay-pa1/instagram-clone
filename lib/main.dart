import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/pages/open_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Insta',
    theme: ThemeData(
      primarySwatch: Colors.grey,

    ),
    home: const OpenPage()
  ));
}

