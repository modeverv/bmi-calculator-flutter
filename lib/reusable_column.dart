import 'package:flutter/material.dart';

class ReusableColumn extends StatelessWidget {
  final Color c;
  final Widget w;
  final Function f;

  ReusableColumn({
    @required this.c,
    @required this.w,
    @required this.f,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.f,
      child: Container(
        child: this.w,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
