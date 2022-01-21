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
  Color maleColor = InActiveColour;
  Color femaleColor = InActiveColour;

  void updateColor(Gender maleFemale) {
    if (maleFemale == Gender.male) {
      if (maleColor == InActiveColour) {
        maleColor = ActiveColour;
        femaleColor = InActiveColour;
      } else {
        maleColor = InActiveColour;
      }
    }
    if (maleFemale == Gender.female) {
      if (femaleColor == InActiveColour) {
        femaleColor = ActiveColour;
        maleColor = InActiveColour;
      } else {
        femaleColor = InActiveColour;
      }
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.updateColor(Gender.male);
                        });
                      },
                      child: ReusableColumn(
                        c: this.maleColor,
                        w: MyIconWidget(
                          icon: FontAwesomeIcons.mars,
                          text: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.updateColor(Gender.female);
                        });
                      },
                      child: ReusableColumn(
                        c: this.femaleColor,
                        w: MyIconWidget(
                          icon: FontAwesomeIcons.venus,
                          text: 'Female',
                        ),
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
                      c: ActiveColour,
                      w: MyIconWidget(),
                    ),
                  ),
                  Expanded(
                    child: ReusableColumn(
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
