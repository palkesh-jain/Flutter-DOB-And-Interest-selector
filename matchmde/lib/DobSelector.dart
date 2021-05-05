import 'package:flutter/material.dart';
import 'package:matchmde/Picker.dart';

class DobSelector extends StatefulWidget {
  @override
  _DobSelectorState createState() => _DobSelectorState();
}

class _DobSelectorState extends State<DobSelector> {
  int sel1 = 2;
  int sel2 = 1;
  int sel3 = 1990;
  List<String> monthList = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", 'Aug', "Sept", "Oct", "Nov", "Dec"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 32, 42),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.chevron_left_rounded,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text("Date of birth",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                    "Proin vel consectetur justo. Mauris nec interdu merat.",
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        NumberPicker(
                          textStyle: TextStyle(fontSize: 22, color: Colors.grey),
                          selectedTextStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          value: sel1,
                          minValue: 1,
                          maxValue: 31,
                          itemHeight: 90,
                          step: 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(.3),
                          ),
                          haptics: true,
                          onChanged: (value) => setState(() {
                            sel1 = value;
                          }),
                        ),
                      ],
                    ),
                  ),
                  Text(":", style: TextStyle(fontSize: 40, color: Colors.white)),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        NumberPicker(
                          textStyle: TextStyle(fontSize: 22, color: Colors.grey),
                          selectedTextStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          value: sel2,
                          minValue: 0,
                          maxValue: 11,
                          textMapper: (value) {
                            return monthList[int.parse(value)].toUpperCase();
                          },
                          itemHeight: 90,
                          step: 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(.3),
                          ),
                          haptics: true,
                          onChanged: (value) => setState(() {
                            sel2 = value;
                          }),
                        ),
                      ],
                    ),
                  ),
                  Text(":", style: TextStyle(fontSize: 40, color: Colors.white)),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        NumberPicker(
                          textStyle: TextStyle(fontSize: 22, color: Colors.grey),
                          selectedTextStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          value: sel3,
                          minValue: 1900,
                          maxValue: 2021,
                          itemHeight: 90,
                          step: 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(.3),
                          ),
                          haptics: true,
                          onChanged: (value) => setState(() {
                            sel3 = value;
                          }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
