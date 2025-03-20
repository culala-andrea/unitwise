import 'package:flutter/cupertino.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  TextEditingController _quantity = TextEditingController();
  String unitype = "Celsius";
  String result = "0.00";
  String convertname = "Fahrenheit";
  String converttype = "ctof";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Temperature Conversion',
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
                          convertname = "Fahrenheit";
                          converttype = "ctof";
                          if (unitype != "Celsius") {
                            unitype = "Celsius";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 1:
                          convertname = "Celsius";
                          converttype = "ftoc";
                          if (unitype != "Fahrenheit") {
                            unitype = "Fahrenheit";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 2:
                          convertname = "Kelvin";
                          converttype = "ctok";
                          if (unitype != "Celsius") {
                            unitype = "Celsius";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 3:
                          convertname = "Celsius";
                          converttype = "ktoc";
                          if (unitype != "Kelvin") {
                            unitype = "Kelvin";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 4:
                          convertname = "Kelvin";
                          converttype = "ftok";
                          if (unitype != "Fahrenheit") {
                            unitype = "Fahrenheit";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 5:
                          convertname = "Fahrenheit";
                          converttype = "ktof";
                          if (unitype != "Kelvin") {
                            unitype = "Kelvin";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                      }
                    });
                  },
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Celsius to Fahrenheit',
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
                          'Fahrenheit to Celsius',
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
                          'Celsius to Kelvin',
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
                          'Kelvin to Celsius',
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
                          'Fahrenheit to Kelvin',
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
                          'Kelvin to Fahrenheit',
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

                        if (converttype == "ctof") {
                          double res = (num * 9 / 5) + 32;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "ftoc") {
                          double res = (num - 32) * 5 / 9;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "ctok") {
                          double res = num + 273.15;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "ktoc") {
                          double res = num - 273.15;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "ftok") {
                          double res = (num + 459.67) * 5 / 9;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "ktof") {
                          double res = num * 9 / 5 - 459.67;
                          res = double.parse(res.toStringAsFixed(2));
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
