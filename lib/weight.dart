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
                          convertionvalue = 2.20462;
                          convertname = "Pounds";
                          if (unitype != "Kilograms") {
                            unitype = "Kilograms";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 1:
                          convertionvalue = 0.453592;
                          convertname = "Kilograms";
                          if (unitype != "Pounds") {
                            unitype = "Pounds";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 2:
                          convertionvalue = 0.035274;
                          convertname = "Ounces";
                          if (unitype != "Grams") {
                            unitype = "Grams";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 3:
                          convertionvalue = 28.3495;
                          convertname = "Grams";
                          if (unitype != "Ounces") {
                            unitype = "Ounces";
                            _quantity.text = "";
                            result = "0.00";
                          }
                          break;
                        case 4:
                          break;
                      }
                    });
                  },
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Kilograms to Pounds',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Pounds to Kilograms',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Grams to Ounces',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Ounces to Grams',
                          style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
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

                        double res = num * convertionvalue;
                        result = res.toString();
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
