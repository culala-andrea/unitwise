import 'package:flutter/cupertino.dart';

class VolumeApp extends StatefulWidget {
  const VolumeApp({super.key});

  @override
  State<VolumeApp> createState() => _VolumeAppState();
}

class _VolumeAppState extends State<VolumeApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Gallons";
  String result = "0.00";
  String convertname = "Liters";
  String converttype = "gtol";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Volume Conversion',
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ),
    );
  }
}
