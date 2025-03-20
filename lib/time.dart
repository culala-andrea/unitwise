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
                          convertname = "Minutes";
                          converttype = "stm";
                          unitype = "Seconds";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 1:
                          convertname = "Seconds";
                          converttype = "mts";
                          unitype = "Minutes";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 2:
                          convertname = "Hours";
                          converttype = "mth";
                          unitype = "Minutes";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 3:
                          convertname = "Minutes";
                          converttype = "htm";
                          unitype = "Hours";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 4:
                          convertname = "Seconds";
                          converttype = "hts";
                          unitype = "Hours";
                          _quantity.text = "";
                          result = "0.00";
                          break;
                        case 5:
                          convertname = "Hours";
                          converttype = "sth";
                          unitype = "Seconds";
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
                          'Seconds to Minutes',
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
                          'Minutes to Seconds',
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
                          'Minutes to Hours',
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
                          'Hours to Minutes',
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
                          'Hours to Seconds',
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
                          'Seconds to Hours',
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

                        if (converttype == "stm") {
                          double res = num / 60;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "mts") {
                          double res = num * 60;
                          res = double.parse(res.toStringAsFixed(2));
                          result = res.toString();
                        } else if (converttype == "mth") {
                          double res = num / 60;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        } else if (converttype == "htm") {
                          double res = num * 60;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        } else if (converttype == "hts") {
                          double res = num * 3600;
                          res = double.parse(res.toStringAsFixed(3));
                          result = res.toString();
                        } else if (converttype == "sth") {
                          double res = num / 3600;
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
