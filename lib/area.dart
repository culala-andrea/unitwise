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
                          convertname = "Square Centimeters";
                          converttype = "0c";
                          unitype = "Square Inches";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 1:
                          convertname = "Square Inches";
                          converttype = "1c";
                          unitype = "Square Centimeters";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 2:
                          convertname = "Square Meters";
                          converttype = "2c";
                          unitype = "Square Feet";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 3:
                          convertname = "Square Feet";
                          converttype = "3c";
                          unitype = "Square Meters";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 4:
                          convertname = "Square Meters";
                          converttype = "4c";
                          unitype = "Acres";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 5:
                          convertname = "Acres";
                          converttype = "5c";
                          unitype = "Square Meters";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 6:
                          convertname = "Acres";
                          converttype = "6c";
                          unitype = "Hectares";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 7:
                          convertname = "Hectares";
                          converttype = "7c";
                          unitype = "Acres";
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
                          'Sq Inches to Square Cm',
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
                          'Sq Cm to Sq Inches',
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
                          'Sq Ft to Sq Meters',
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
                          'Sq Meters to Sq Ft',
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
                          'Acres to Sq Meters',
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
                          'Sq Meters to Acres',
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
                          'Hectares to Acres',
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
                          'Acres to Hectares',
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

                        if (converttype == "0c") {
                          double res = num * 6.4516;
                          res = double.parse(res.toStringAsFixed(6));
                          result = res.toString();
                        } else if (converttype == "1c") {
                          double res = num / 6.4516;
                          res = double.parse(res.toStringAsFixed(6));
                          result = res.toString();
                        } else if (converttype == "2c") {
                          double res = num * 0.092903;
                          res = double.parse(res.toStringAsFixed(6));
                          result = res.toString();
                        } else if (converttype == "3c") {
                          double res = num / 0.092903;
                          res = double.parse(res.toStringAsFixed(6));
                          result = res.toString();
                        } else if (converttype == "4c") {
                          double res = num * 4046.86;
                          res = double.parse(res.toStringAsFixed(6));
                          result = res.toString();
                        } else if (converttype == "5c") {
                          double res = num / 4046.86;
                          res = double.parse(res.toStringAsFixed(6));
                          result = res.toString();
                        } else if (converttype == "6c") {
                          double res = num * 2.47105;
                          res = double.parse(res.toStringAsFixed(6));
                          result = res.toString();
                        } else if (converttype == "7c") {
                          double res = num / 2.47105;
                          res = double.parse(res.toStringAsFixed(6));
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
