import 'package:flutter/material.dart';

const ActiveColour = Color(0xFF1D1E33);
const bottomContainerHeight = 40.0 * 2;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ReusableColumn(c: ActiveColour),
                  ReusableColumn(c: ActiveColour),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableColumn(c: ActiveColour),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableColumn(c: ActiveColour),
                  ReusableColumn(c: ActiveColour),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}

class ReusableColumn extends StatelessWidget {
  final Color c;

  ReusableColumn({
    @required this.c,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration:
            BoxDecoration(color: c, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
