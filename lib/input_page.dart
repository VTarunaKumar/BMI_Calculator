import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusableCard.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { male, female, def }

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.def;

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                        print(selectedGender);
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inActiveCardColor,
                    cardChild: iconContent(FontAwesomeIcons.mars, "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                        print(selectedGender);
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inActiveCardColor,
                    cardChild: iconContent(FontAwesomeIcons.mars, "FEMALE"),
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
                    onPress: () {},
                    colour: activeCardColor,
                    cardChild: Column(
                      children: <Widget>[Text("HEIGHT")],
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
                    onPress: () {
                      selectedGender = Gender.female;
                    },
                    colour: activeCardColor,
                    cardChild: iconContent(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      selectedGender = Gender.female;
                    },
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
