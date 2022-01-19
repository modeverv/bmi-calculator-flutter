import 'package:flutter/material.dart';

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
                  ReusableColumn(c: Color(0xFF1D1E33)),
                  ReusableColumn(c: Color(0xFF1D1E33)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableColumn(c: Color(0xFF1D1E33)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableColumn(c: Color(0xFF1D1E33)),
                  ReusableColumn(c: Color(0xFF1D1E33)),
                ],
              ),
            ),
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
