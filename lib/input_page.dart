import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'my_icon_widget.dart';
import 'reusable_column.dart';

const ActiveColour = Color(0xFF1D1E33);
const InActiveColour = Color(0xFF111328);
const bottomContainerHeight = 40.0 * 2;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

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
                  Expanded(
                    child: ReusableColumn(
                      f: () {
                        setState(() {
                          this.selectedGender = Gender.male;
                        });
                      },
                      c: this.selectedGender == Gender.male
                          ? ActiveColour
                          : InActiveColour,
                      w: MyIconWidget(
                        icon: FontAwesomeIcons.mars,
                        text: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableColumn(
                      f: () {
                        setState(() {
                          this.selectedGender = Gender.female;
                        });
                      },
                      c: this.selectedGender == Gender.female
                          ? ActiveColour
                          : InActiveColour,
                      w: MyIconWidget(
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableColumn(
                      f: () {},
                      c: ActiveColour,
                      w: MyIconWidget(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableColumn(
                      f: () {},
                      c: ActiveColour,
                      w: MyIconWidget(),
                    ),
                  ),
                  Expanded(
                    child: ReusableColumn(
                      f: () {},
                      c: ActiveColour,
                      w: MyIconWidget(),
                    ),
                  ),
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
