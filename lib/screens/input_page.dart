import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../compornents/bottom_button.dart';
import '../compornents/my_icon_widget.dart';
import '../compornents/reusable_column.dart';
import '../compornents/round_icon.dart';
import '../constants.dart';
import 'result_page.dart';

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
  int weight = 60;
  int age = 20;

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
                      onTap: () {
                        setState(() {
                          this.selectedGender = Gender.male;
                        });
                      },
                      color: this.selectedGender == Gender.male
                          ? kActiveColour
                          : kInActiveColour,
                      widget: MyIconWidget(
                        icon: FontAwesomeIcons.mars,
                        text: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableColumn(
                      onTap: () {
                        setState(() {
                          this.selectedGender = Gender.female;
                        });
                      },
                      color: this.selectedGender == Gender.female
                          ? kActiveColour
                          : kInActiveColour,
                      widget: MyIconWidget(
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
                      onTap: () {},
                      color: kActiveColour,
                      widget: Column(
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
                      onTap: () {},
                      color: kActiveColour,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                          ),
                          Text(
                            this.weight.toString(),
                            style: TextStyle(fontSize: 50.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      this.weight--;
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      this.weight++;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableColumn(
                      onTap: () {},
                      color: kActiveColour,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                          ),
                          Text(
                            this.age.toString(),
                            style: TextStyle(fontSize: 50.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      this.age--;
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      this.age++;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultPage()));
                },
                titleText: 'CALCULATE')
          ],
        ));
  }
}
