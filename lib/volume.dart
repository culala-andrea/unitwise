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
      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 35),

                Text(
                  'Scroll through the options below to select the conversion type',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 15),

                CupertinoPicker(
                  itemExtent: 50.0,
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      switch (index) {
                        case 0:
                          convertname = "Liters";
                          converttype = "gtol";
                          unitype = "Gallons";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 1:
                          convertname = "Gallons";
                          converttype = "ltog";
                          unitype = "Liters";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 2:
                          convertname = "Cubic Centimeters";
                          converttype = "citocc";
                          unitype = "Cubic Inches";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 3:
                          convertname = "Cubic Inches";
                          converttype = "cctoci";
                          unitype = "Cubic Centimeters";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                      }
                    });
                  },
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Gallons to Liters',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Liters to Gallons',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Cubic Inches to Cubic Cm',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Cubic Cm to Cubic Inches',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 50),

                Row(
                  children: [
                    Text(
                      "$unitype",
                      style: TextStyle(
                        color: CupertinoColors.systemBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                CupertinoTextField(
                  placeholder: '$unitype',
                  padding: EdgeInsets.all(10),
                  controller: _quantity,
                  placeholderStyle: TextStyle(
                    fontSize: 16,
                    color: CupertinoColors.inactiveGray,
                  ),
                  style: TextStyle(fontSize: 16),
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Text(
                      "Result",
                      style: TextStyle(
                        color: CupertinoColors.systemBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: CupertinoColors.darkBackgroundGray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$result', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Text(
                          '$convertname',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(height: 15),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF446CCF),
                  ),
                  child: CupertinoButton(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Convert',
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        double num = double.parse(_quantity.text);

                        if (converttype == "gtol") {
                          double res = num * 3.78541;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "tolg") {
                          double res = num / 3.78541;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "citocc") {
                          double res = num * 16.387;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        } else if (converttype == "cctoci") {
                          double res = num / 16.387;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
