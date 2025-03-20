import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniwise/area.dart';
import 'package:uniwise/distance.dart';
import 'package:uniwise/pressure.dart';
import 'package:uniwise/speed.dart';
import 'package:uniwise/temperature.dart';
import 'package:uniwise/time.dart';
import 'package:uniwise/volume.dart';
import 'package:uniwise/weight.dart';

void main() {
  runApp(
    CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold();
  }
}
