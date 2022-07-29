import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ColorPicker extends StatelessWidget {
  final bool outBorder;
  final Color color;
  ColorPicker(this.outBorder,this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: outBorder?Border.all(
          color: color,
          width: 2
        ):null
      ),
      child:Container(
        padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: color,
     shape: BoxShape.circle,
    )
      ) ,
    );
  }
}
