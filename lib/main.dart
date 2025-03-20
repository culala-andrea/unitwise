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
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            Image.asset('images/logo.png', height: 20, width: 20),
            SizedBox(width: 10),
            Text('Uniwise', style: TextStyle(fontSize: 15)),
          ],
        ),

        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.profile_circled),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text('Team Members'),
                  content: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'images/joy.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipOval(
                            child: Image.asset(
                              'images/vianney.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipOval(
                            child: Image.asset(
                              'images/andrea.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'images/dexter.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipOval(
                            child: Image.asset(
                              'images/christian.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(),
                      SizedBox(height: 5),
                      Text('Artienda, Mary Joyce'),
                      Text('Bulanadi, JhonVianey '),
                      Text('Culala, Andrea'),
                      Text('Gomex, Dexter '),
                      Text('Timbol, Christian Florence'),
                    ],
                  ),

                  actions: [
                    CupertinoButton(
                      child: Text(
                        'Close',
                        style: TextStyle(color: CupertinoColors.destructiveRed),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
