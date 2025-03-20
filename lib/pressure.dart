import 'package:flutter/cupertino.dart';

class PressureApp extends StatefulWidget {
  const PressureApp({super.key});

  @override
  State<PressureApp> createState() => _PressureAppState();
}

class _PressureAppState extends State<PressureApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Pascals";
  String result = "0.00";
  String convertname = "Atmospheres";
  String converttype = "1";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Pressure Conversion',
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ),
    );
  }
}
