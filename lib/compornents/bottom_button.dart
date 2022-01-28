import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.titleText});

  final Function onTap;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            this.titleText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 15.0),
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
