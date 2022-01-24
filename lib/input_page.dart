import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'my_icon_widget.dart';
import 'reusable_column.dart';

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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ? kActiveColour
                          : kInActiveColour,
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
                          ? kActiveColour
                          : kInActiveColour,
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
                      c: kActiveColour,
                      w: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('HEIGHT'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                this.height.toString(),
                                style: TextStyle(fontSize: 50.0),
                              ),
                              Text('cm'),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              thumbColor: Color(0xFFEB1555),
                              activeTrackColor: Color(0XFFFFFFFF),
                              inactiveTrackColor: Color(0xff8d8e98),
                              overlayColor: Color(0x29EB1555),
                            ),
                            child: Slider(
                                value: this.height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double x) {
                                  setState(() {
                                    this.height = x.toInt();
                                  });
                                }),
                          ),
                        ],
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
                      c: kActiveColour,
                      w: MyIconWidget(),
                    ),
                  ),
                  Expanded(
                    child: ReusableColumn(
                      f: () {},
                      c: kActiveColour,
                      w: MyIconWidget(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}
