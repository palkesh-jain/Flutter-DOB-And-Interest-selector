import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:matchmde/BubbleButtons.dart';

class BubbleSelection extends StatefulWidget {
  @override
  _BubbleSelectionState createState() => _BubbleSelectionState();
}

class _BubbleSelectionState extends State<BubbleSelection> {
  int noOfElements = 100;
  List<int> selectedIndex = List();

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
                child: Text("Select your interest",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 6,
                  staggeredTileBuilder: (int index) => StaggeredTile.count(
                      index.isEven ? 2 : 1, index.isEven ? 2 : 1),
                  itemCount: 80,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedIndex.contains(index))
                          selectedIndex.remove(index);
                        else
                          selectedIndex.add(index);
                      });
                    },
                    child: BubbleButtons(
                        noOfElements, index, selectedIndex.contains(index)),
                  ),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
