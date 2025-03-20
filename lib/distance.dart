import 'package:flutter/cupertino.dart';

class DistanceApp extends StatefulWidget {
  const DistanceApp({super.key});

  @override
  State<DistanceApp> createState() => _DistanceAppState();
}

class _DistanceAppState extends State<DistanceApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Kilometers";
  String result = "0.00";
  String convertname = "Miles";
  double convertionvalue = 0.621371;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Length Conversion',
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ),
    );
  }
}
