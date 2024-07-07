import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_details.dart';
import 'reusecard_details.dart';
import 'constants.dart';

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Color maleinactiveColor = inactiveContainerColor;
  Color femaleinactiveColor = inactiveContainerColor;

  void changeColor(int gender) {
    if (gender == 1) {
      if (maleinactiveColor == inactiveContainerColor) {
        maleinactiveColor = reusableContainerColor;
        femaleinactiveColor = inactiveContainerColor;
      } else {
        maleinactiveColor = inactiveContainerColor;
      }
    }
    if (gender == 2) {
      if (femaleinactiveColor == inactiveContainerColor) {
        femaleinactiveColor = reusableContainerColor;
        maleinactiveColor = inactiveContainerColor;
      } else {
        femaleinactiveColor = inactiveContainerColor;
      }
    }
  }

  int heightNumber = 180;
  int weightNumber = 45;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
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
                    changeColor(1);
                  });
                },
                child: ReuseWidget(
                  childCard: iconDetailsWidget(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  kcolor: maleinactiveColor,
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    changeColor(2);
                  });
                },
                child: ReuseWidget(
                  childCard: iconDetailsWidget(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  kcolor: femaleinactiveColor,
                ),
              ))
            ],
          )),
          Expanded(
              child: ReuseWidget(
            childCard: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: labelstyle,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      heightNumber.toString(),
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    Text('cm')
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 14.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 15.0)),
                  child: Slider(
                      value: heightNumber.toDouble(),
                      min: 115,
                      max: 215,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          heightNumber = newValue.round();
                        });
                      }),
                )
              ],
            ),
            kcolor: Color(0xFF101F33),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuseWidget(
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: labelstyle,
                    ),
                    Text(
                      weightNumber.toString(),
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedIcon(
                          icon: FontAwesomeIcons.minus,
                          onpressed: () {
                            setState(() {
                              weightNumber--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundedIcon(
                          icon: FontAwesomeIcons.plus,
                          onpressed: () {
                            setState(() {
                              weightNumber++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
                kcolor: Color(0xFF101F33),
              )),
              Expanded(
                  child: ReuseWidget(
                childCard:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: labelstyle,
                    ),
                    Text(
                      age.toString(),
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedIcon(
                          icon: FontAwesomeIcons.minus,
                          onpressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundedIcon(
                          icon: FontAwesomeIcons.plus,
                          onpressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
                kcolor: Color(0xFF101F33),
              ))
            ],
          )),
          Container(
            child: Center(child: Text('Calculate',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)),
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.only(bottom: 10.0),
            color: Color(0xFFEA1556),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

class RoundedIcon extends StatelessWidget {
   RoundedIcon({required this.icon, required this.onpressed});
  final IconData icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
