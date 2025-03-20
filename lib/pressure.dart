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
                          convertname = "Atmospheres";
                          converttype = "1";
                          unitype = "Pascals";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 1:
                          convertname = "Pascals";
                          converttype = "2";
                          unitype = "Atmospheres";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 2:
                          convertname = "Bar";
                          converttype = "3";
                          unitype = "Pascals";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 3:
                          convertname = "Pascals";
                          converttype = "4";
                          unitype = "Bar";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 4:
                          convertname = "Pascals";
                          converttype = "5";
                          unitype = "Pounds per Square Inch";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 5:
                          convertname = "Pounds per Square Inch";
                          converttype = "6";
                          unitype = "Pascals";
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
                          'Pascals to Atmospheres',
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
                          'Atmospheres to Pascals',
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
                          'Pascals to Bar:',
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
                          'Bar to Pascals',
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
                          'PSI to Pascals',
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
                          'Pascals to PSI',
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

                        if (converttype == "1") {
                          double res = num / 101325;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "2") {
                          double res = num * 101325;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "3") {
                          double res = num / 100000;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        } else if (converttype == "4") {
                          double res = num * 100000;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        } else if (converttype == "5") {
                          double res = num * 6894.76;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        } else if (converttype == "6") {
                          double res = num / 6894.76;
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
