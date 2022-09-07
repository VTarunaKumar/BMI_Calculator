import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusableCard.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inActiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { male, female, def }

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.def;
  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;
  // void updateColor(int gender) {
  //   if (gender == 1) {
  //     if (maleCardColor == inActiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inActiveCardColor;
  //     } else {
  //       maleCardColor = inActiveCardColor;
  //     }
  //   }
  //   if (gender == 2) {
  //     if (femaleCardColor == inActiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inActiveCardColor;
  //     } else {
  //       femaleCardColor = inActiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: activeCardColor,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: iconContent(FontAwesomeIcons.mars, "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: iconContent(FontAwesomeIcons.venus, "FEMALE"),
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
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: iconContent(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: iconContent(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: iconContent(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            child: Text("okk"),
          ),
        ],
      ),
    );
  }
}
