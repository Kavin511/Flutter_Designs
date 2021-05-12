import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfileDesigns extends StatefulWidget {
  @override
  _ProfileDesignsState createState() => _ProfileDesignsState();
}

class _ProfileDesignsState extends State<ProfileDesigns> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: profileRadialGradient(),
    );
  }
  SizedBox profileLinearGradient() {
    return SizedBox(
      width: 150,
      height: 150,
      child: ShaderMask(

        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.blueGrey.shade50 ,Colors.blueAccent
            ],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: CircleAvatar(
          child: Icon(

            Icons.person,
            size: 150,
          ),
        ),
      ),
    );
  }
  SizedBox profileRadialGradient() {
    return SizedBox(
      width: 150,
      height: 150,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            colors: <Color>[Colors.orange ,Colors.deepOrange],
            center: Alignment.topRight,
            radius: 1,
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: CircleAvatar(
          child: Icon(
            Icons.person,
            size: 150,
          ),
        ),
      ),
    );
  }
}
