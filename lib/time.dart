import 'package:flutter/cupertino.dart';

class TimeApp extends StatefulWidget {
  const TimeApp({super.key});

  @override
  State<TimeApp> createState() => _TimeAppState();
}

class _TimeAppState extends State<TimeApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Seconds";
  String result = "0.00";
  String convertname = "Minutes";
  String converttype = "stm";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Time Conversion',
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ),
    );
  }
}
