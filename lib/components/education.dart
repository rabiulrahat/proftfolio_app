import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

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
      ),
      child:Column(
        children: [
          Text("Education",style: TextStyle(
            fontSize: 24.0,fontWeight: FontWeight.bold,
          ),
          ),
          Timeline.tileBuilder(
            shirnkWarp:true,
            scrollDirection:Axis.vertical,
            builder:TimelineTileBuilder.fromStyle,
          ),
        ],
      ) ,
    );
  }
}
