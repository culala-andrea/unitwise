import 'package:flutter/cupertino.dart';

class SpeedApp extends StatefulWidget {
  const SpeedApp({super.key});

  @override
  State<SpeedApp> createState() => _SpeedAppState();
}

class _SpeedAppState extends State<SpeedApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Miles per Hour";
  String result = "0.00";
  String convertname = "Kilometers per Hour";
  String converttype = "mphtokph";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Speed Conversion',
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ),
    );
  }
}
