import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timelines/timelines.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const Text(
            "Education",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
                itemCount: 10,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) {
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sep 2018'),
                          Text('Design of Reversible Shift Registers Minimizing Number of Gates, Constant Inputs and Garbage Outputs'),
                          Text('2 April 2020'),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
