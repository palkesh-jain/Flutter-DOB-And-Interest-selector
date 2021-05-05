import 'dart:math';

import 'package:flutter/material.dart';

class BubbleButtons extends StatefulWidget {
  final int noOfElements;
  final int index;
  final bool isSelected;

  BubbleButtons(this.noOfElements, this.index, this.isSelected);

  @override
  _BubbleButtonsState createState() => _BubbleButtonsState();
}

class _BubbleButtonsState extends State<BubbleButtons> {
  List<double> containerMargin;

  @override
  void initState() {
    containerMargin = List(widget.noOfElements);
    for (var i = 0; i < widget.noOfElements; i++) {
      containerMargin[i] = Random.secure().nextDouble() * 10;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(containerMargin[widget.index]),
        decoration: BoxDecoration(
            color: widget.isSelected
                ? Colors.blue
                : Color.fromARGB(1255, 69, 68, 83),
            shape: BoxShape.circle),
        child: Center(
          child: Text("Hello ${widget.index}",
              style: TextStyle(color: Colors.white)),
        ));
  }
}
