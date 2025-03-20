import 'package:flutter/cupertino.dart';

class WeightApp extends StatefulWidget {
  const WeightApp({super.key});

  @override
  State<WeightApp> createState() => _WeightAppState();
}

class _WeightAppState extends State<WeightApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Kilograms";
  String result = "0.00";
  String convertname = "Pounds";
  double convertionvalue = 2.20462;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Weight Conversion',
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ),
    );
  }
}
