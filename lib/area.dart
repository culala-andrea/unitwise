import 'package:flutter/cupertino.dart';

class AreaApp extends StatefulWidget {
  const AreaApp({super.key});

  @override
  State<AreaApp> createState() => _AreaAppState();
}

class _AreaAppState extends State<AreaApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Square Inches";
  String result = "0.00";
  String convertname = "Square Centimeters";
  String converttype = "0c";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Area Conversion',
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ),
    );
  }
}
