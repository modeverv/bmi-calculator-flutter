import 'package:flutter/material.dart';

class ReusableColumn extends StatelessWidget {
  final Color c;
  final Widget w;

  ReusableColumn({
    @required this.c,
    @required this.w,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.w,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
