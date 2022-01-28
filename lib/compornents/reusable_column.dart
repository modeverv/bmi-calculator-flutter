import 'package:flutter/material.dart';

class ReusableColumn extends StatelessWidget {
  final Color color;
  final Widget widget;
  final Function onTap;

  ReusableColumn({
    @required this.color,
    @required this.widget,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: this.widget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
